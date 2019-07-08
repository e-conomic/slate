## Orders
<aside class="warning">
This endpoint is experimental and subject to change
</aside>

The orders endpoint is where you go to read and create orders. 

We provide several collections indicating various states of the order e.g. "sent", "archived" and "draft". 

The endpoint is exposed in similar fashion to /invoices, which makes it easy to adopt if you are using /invoices today.

Current implementation suports various operations including marking order an as sent as well as transitioning from order to invoice.

The inventory module is not supported in the current version of /orders. This means that data creation and modification on resources in /orders will not be available on agreements that have inventory module enabled.
There is currently no exposure of orders that are in the inventory delivery flow ("transfer to delivery/invoicing").

For more information about orders please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/fakturering-ordrer](http://wiki2.e-conomic.dk/salg/fakturering-ordrer).

### <span class='get'>GET</span> /orders

This is the root for the orders endpoint. From here you can navigate to draft, sent and archived orders.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.get.schema.json](https://restapi.e-conomic.com/schema/orders.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| archived| string| uri| A reference to all archived orders.|
| drafts| string| uri| A reference to all draft orders.|
| self| string| uri| A reference to the orders resource.|
| sent| string| uri| A reference to all sent orders.|



### <span class='get'>GET</span> /orders/drafts

This returns a collection of all draft orders.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.drafts.get.schema.json](https://restapi.e-conomic.com/schema/orders.drafts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Default sorting

     orderNumber : ascending


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer being orderd.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, orderWeekStartingSunday<wbr>, orderWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References to a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | References a pdf representation of this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | Mobile phone number.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the specific draft order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| templates| object| | True| | | | | References to all templates on this draft invoice.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the order templates resource.|
| templates<wbr>.upgradeInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/drafts to upgrade the order to an invoice draft.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='post'>POST</span> /orders/drafts/

POST'ing to it allows you to create a new order draft.

```javascript
var headers = {
    'X-AppSecretToken': "demo",
    'X-AgreementGrantToken': "demo",
    'Content-Type': "application/json"
};

var order = {
    "date": "2018-03-01",
    "currency": "DKK",
    "exchangeRate": 100,
    "netAmount": 10.00,
    "netAmountInBaseCurrency": 0.00,
    "grossAmount": 12.50,
    "marginInBaseCurrency": -46.93,
    "marginPercentage": 0.0,
    "vatAmount": 2.50,
    "roundingAmount": 0.00,
    "costPriceInBaseCurrency": 46.93,
    "paymentTerms": {
        "paymentTermsNumber": 1,
        "daysOfCredit": 14,
        "name": "Lobende maned 14 dage",
        "paymentTermsType": "invoiceMonth"
    },
    "customer": {
        "customerNumber": 1
    },
    "recipient": {
        "name": "Toj & Co Grossisten",
        "address": "Vejlevej 21",
        "zip": "7000",
        "city": "Fredericia",
        "vatZone": {
            "name": "Domestic",
            "vatZoneNumber": 1,
            "enabledForCustomer": true,
            "enabledForSupplier": true
        }
    },
    "delivery": {
        "address": "Hovedvejen 1",
        "zip": "2300",
        "city": "Kbh S",
        "country": "Denmark",
        "deliveryDate": "2014-09-14"
    },
    "references": {
        "other": "aaaa"
    },
    "layout": {
        "layoutNumber": 5
    },
    "lines": [
        {
            "unit": {
                "unitNumber": 2,
                "name": "Tim"
            },
            "product": {
                "productNumber": "50"
            },
            "quantity": 1.00,
            "unitNetPrice": 10.00,
            "discountPercentage": 0.00,
            "unitCostPrice": 46.93,
            "totalNetAmount": 10.00,
            "marginInBaseCurrency": -46.93,
            "marginPercentage": 0.0
        },
        {
            "unit": {
                "unitNumber": 1,
                "name": "stk."
            },
            "product": {
                "productNumber": "50"
            },
            "quantity": 1.00,
            "unitNetPrice": 10.00,
            "discountPercentage": 0.00,
            "unitCostPrice": 46.93,
            "totalNetAmount": 10.00,
            "marginInBaseCurrency": -46.93,
            "marginPercentage": 0.0
        },
        {
            "unit": {
                "unitNumber": 4
            },
            "product": {
                "productNumber": "50"
            },
            "quantity": 1.00,
            "unitNetPrice": 10.00,
            "discountPercentage": 0.00,
            "unitCostPrice": 46.93,
            "totalNetAmount": 10.00,
            "marginInBaseCurrency": -46.93,
            "marginPercentage": 0.0
        }
    ]
};

$(document).ready(function () {
    $('#input').text(JSON.stringify(order, null, 4));
    $.ajax({
        url: "https://restapi.e-conomic.com/orders/drafts",
        dataType: "json",
        headers: headers,
        data: JSON.stringify(order),
        contentType: 'application/json; charset=UTF-8',
        type: "POST"
    }).always(function (data) {
        $('#output').text(JSON.stringify(data, null, 4));
    });
});
```

#### Schema name

[orders.drafts.post.schema.json](https://restapi.e-conomic.com/schema/orders.drafts.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, customer, date, layout, paymentTerms, recipient, recipient.name, recipient.vatZone




#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| currency| string| | | | | | | The ISO 4217 3-letter currency code of the order.|
| customer| object| | | | | | | The customer of the order.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | 1| | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order is due for payment. This property is only used if the terms of payment is of type 'duedate'<wbr>, in which case it is a mandatory property. Format according to ISO-8601 (YYYY-MM-DD).|
| exchangeRate| number| | | | 999999999999| | | The desired exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency. If no exchange rate is supplied<wbr>, the system will get the current daily rate<wbr>, unless the order currency is the same as the base currency<wbr>, in which case it will be set to 100.|
| grossAmount| number| | True| | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| layout| object| | | | | | | The layout used by the order.|
| layout<wbr>.layoutNumber| integer| | | | | 1| | A unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique reference to the layout resource.|
| lines| array| | | | | | | An array containing the specific order lines.|
| lines<wbr>.accrual| object| | | | | | | The accrual for the order.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold. Please note<wbr>, that when setting existing products<wbr>, description field is required. While setting non-existing product<wbr>, description field can remain empty.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 1| | The line number is a unique number within the order.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the order line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the order line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the order line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the order line.|
| lines<wbr>.sortKey| integer| | | | | 1| | A sort key used to sort the lines in ascending order within the order.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the order line.|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 1| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the order currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the order line in the order currency.|
| marginInBaseCurrency| number| | True| | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | True| | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | True| | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | True| | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | True| | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard<wbr>, avtaleGiro| The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this draft order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | The phone number the order was sent to (if applicable).|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.nemHandelType| Enum| | | | | | ean<wbr>, corporateIdentificationNumber<wbr>, pNumber| Chosen NemHandel type used for e-invoicing.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The primary sales person is a reference to the employee who sold the goods on the order.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | True| | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| vatAmount| number| | True| | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /orders/drafts/:orderNumber

This endpoint provides you with the entire document for a specific order draft.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts/1",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.drafts.orderNumber.get.schema.json](https://restapi.e-conomic.com/schema/orders.drafts.orderNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, lines.departmentalDistribution.self, lines.product.self, lines.unit.name, lines.unit.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer of the order.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order<wbr>, is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| lines| array| | | | | | | An array containing the specific order lines.|
| lines<wbr>.accrual| object| | | | | | | Accrual is used to allocate costs and/or revenues over several periods.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the order.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the order line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the order line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the order line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | 999999999999999999| 0.01| | The number of units of goods on the order line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the order.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the order line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the order currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the order line in the order currency.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type duedate.|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the draft order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| templates| object| | True| | | | | References to all templates on this order.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the order templates resource.|
| templates<wbr>.upgradeInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/drafts to upgrade the order to an invoice draft.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='put'>PUT</span> /orders/drafts/:orderNumber

This endpoint allows for replacing already existing order

#### Schema name

[orders.drafts.orderNumber.put.schema.json](https://restapi.e-conomic.com/schema/orders.drafts.orderNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

lines.unit.name, recipient

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer of the order.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order<wbr>, is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| lines| array| | | | | | | An array containing the specific order lines.|
| lines<wbr>.accrual| object| | | | | | | Accrual is used to allocate costs and/or revenues over several periods.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the order.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the order line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the order line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the order line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the order line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the order.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the order line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the order currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the order line in the order currency.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type duedate.|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.nemHandelType| Enum| | | | | | ean<wbr>, corporateIdentificationNumber<wbr>, pNumber| Chosen NemHandel type used for e-invoicing.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the draft order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| templates| object| | True| | | | | References to all templates on this order.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the order templates resource.|
| templates<wbr>.upgradeInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/drafts to upgrade the order to an invoice draft.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='delete'>DELETE</span> /orders/drafts/:orderNumber

Deletes a draft order. The delete operation will return a 204 status code. Operation is not idempotent, which means that on the consecutive calls it will be returning status code 404.    

### <span class='get'>GET</span> /orders/drafts/:orderNumber/attachment

Returns the reference to the attached file on a given order.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts/1/attachment",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

### <span class='get'>GET</span> /orders/drafts/:orderNumber/attachment/file

Returns the file attachment for the given order. File is always returned as .pdf.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts/1/attachment/file",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

### <span class='post'>POST</span> /orders/drafts/:orderNumber/attachment/file

Allows attaching a document to the order. Only valid PDF files are supported. 
Please note that for the file upload "application/json" is not a valid content-type. Upload of binary data requires the content-type header to be "multipart/form-data". Some clients do not automatically set boundaries on the multipart/form-data and for these you will need to define "multipart/form-data; boundary= ;" where boundary defines the file part of the multipart stream.
Returns status code 201 upon successful creation.
Maximum file size is 9.0 MB per request.

```javascript
var form = new FormData();
form.append("", "path/to/the/file.jpg");

var settings = {
  "crossDomain": true,
  "url": "https://restapi.e-conomic.com/orders/drafts/123/attachment/file",
  "method": "POST",
  "headers": {
    "x-appsecrettoken": "demo",
    "x-agreementgranttoken": "demo",
    "cache-control": "no-cache"
  },
  "processData": false,
  "mimeType": "multipart/form-data",
  "data": form
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```
### <span class='delete'>DELETE</span> /orders/drafts/:orderNumber/attachment/file

Removes the entire attached document that is associated with the given order.
Returns status code 204 upon successful deletion. Operation is not idempotent, which means that on the consecutive calls it will be returning status code 404.

### <span class='get'>GET</span> /orders/drafts/:orderNumber/templates

Returns the templates available for the order. Templates are used to simplifiy the resource creation that can be quite complex to build.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts/1/templates",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.drafts.orderNumber.templates.get.schema.json](https://restapi.e-conomic.com/schema/orders.drafts.orderNumber.templates.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| self| string| uri| The unique self reference of the templates resource.|
| upgradeInstructions| string| uri| The unique reference to the upgrade instructions template|



### <span class='get'>GET</span> /orders/drafts/:orderNumber/templates/upgrade-instructions/draftInvoice

####Upgrade to invoice draft
Returns a draftInvoice entity that can be POSTed to */invoices/drafts* to upgrade the order to an invoice draft. 
An order residing in /orders/sent, will be archived in /orders/archived upon upgrading it to invoice draft. 
Inventory module: Please note that draft invoices do not result in inventory reservation.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/drafts/1/templates/upgrade-instructions/draftInvoice",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

### <span class='get'>GET</span> /orders/sent

This returns a collection of all sent orders.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/sent",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.sent.get.schema.json](https://restapi.e-conomic.com/schema/orders.sent.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Default sorting

     orderNumber : ascending


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer being orderd.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, orderWeekStartingSunday<wbr>, orderWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References to a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | References a pdf representation of this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | Mobile phone number.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the specific sent order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| templates| object| | True| | | | | References to all templates on this sent order.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the order templates resource.|
| templates<wbr>.upgradeInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/drafts to upgrade the order to an invoice draft.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='post'>POST</span> /orders/sent

####Register order as sent
POST the full order document to /orders/sent to register the order as sent.
All data on a sent order must remain unchanged (cannot be modified).

####Cancel order sent status:
POST the full order document to orders/drafts/ to cancel the sent status.

####Send via email
Sending sales documents via email is not supported through API. To send an order or invoice via email, you must fetch the necessary data/PDF via the API and email either the file or a link to a self-hosted endpoint via own email solution.

### <span class='get'>GET</span> /orders/sent/:orderNumber

This endpoint provides you with the entire document for a specific sent order.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/sent/1",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.sent.orderNumber.get.schema.json](https://restapi.e-conomic.com/schema/orders.sent.orderNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, lines.departmentalDistribution.self, lines.product.self, lines.unit.name, lines.unit.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer of the order.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order<wbr>, is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| lines| array| | | | | | | An array containing the specific order lines.|
| lines<wbr>.accrual| object| | | | | | | Accrual is used to allocate costs and/or revenues over several periods.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the order.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the order line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the order line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the order line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | 999999999999999999| 0.01| | The number of units of goods on the order line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the order.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the order line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the order currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the order line in the order currency.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type duedate.|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the sent order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| templates| object| | True| | | | | References to all templates on this sent order.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the order templates resource.|
| templates<wbr>.upgradeInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/drafts to upgrade the order to an invoice draft.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='delete'>DELETE</span> /orders/sent/:orderNumber

Deletes a sent order. The delete operation will return a 204 status code. Operation is not idempotent, which means that on the consecutive calls it will be returning status code 404.

### <span class='get'>GET</span> /orders/archived

This returns a collection of all archived orders.  
An archived order is an order that was first registered as sent and then upgraded to invoice draft.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/archived",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.archived.get.schema.json](https://restapi.e-conomic.com/schema/orders.archived.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Default sorting

     orderNumber : ascending


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | | The customer being orderd.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the order is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | | Notes on the order.|
| notes<wbr>.heading| string| | | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, orderWeekStartingSunday<wbr>, orderWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References to a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | | References a pdf representation of this order.|
| project| object| | | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | Mobile phone number.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | | The unique self reference of the specific draft order.|
| soap| object| | | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | | ID of the SOAP order handle.|
| vatAmount| number| | | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /orders/archived/:orderNumber

This endpoint provides you with the entire document for a specific archived order.  
An archived order is an order that was first registered as sent and then upgraded to invoice draft.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/orders/archived/1",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[orders.archived.orderNumber.get.schema.json](https://restapi.e-conomic.com/schema/orders.archived.orderNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, lines.departmentalDistribution.self, lines.product.self, lines.unit.name, lines.unit.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, orderNumber, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.orderHandle.id


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | The total cost of the items on the order in the base currency of the agreement.|
| currency| string| | | | | | The ISO 4217 currency code of the order.|
| customer| object| | | | | | The customer of the order.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | Order issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | The actual place of delivery for the goods on the order. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | A reference to the place of delivery for the goods on the order|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | The date the order<wbr>, is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | The exchange rate between the order currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the order currency.|
| grossAmount| number| | | | | | The total order amount in the order currency after all taxes and discounts have been applied.|
| grossAmountInBaseCurrency| number| | | | | | The total order amount in the base currency of the agreement after all taxes and discounts have been applied.|
| lines| array| | | | | | An array containing the specific order lines.|
| lines<wbr>.accrual| object| | | | | | Accrual is used to allocate costs and/or revenues over several periods.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | 0| | The line number is a unique number within the order.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | The difference between the net price and the cost price on the order line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | The margin on the order line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | The product or service offered on the order line.|
| lines<wbr>.product<wbr>.productNumber| string| | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | 999999999999999999| 0.01| | The number of units of goods on the order line.|
| lines<wbr>.sortKey| integer| | | | 0| | A sort key used to sort the lines in ascending order within the order.|
| lines<wbr>.unit| object| | | | | | The unit of measure applied to the order line.|
| lines<wbr>.unit<wbr>.name| string| | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | The cost price of 1 unit of the goods or services in the order currency.|
| lines<wbr>.unitNetPrice| number| | | | | | The price of 1 unit of the goods or services on the order line in the order currency.|
| marginInBaseCurrency| number| | | | | | The difference between the cost price of the items on the order and the sales net order amount in base currency.|
| marginPercentage| number| | | | | | The margin expressed as a percentage. If the net order amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | The total order amount in the order currency before all taxes and discounts have been applied.|
| netAmountInBaseCurrency| number| | | | | | The total order amount in the base currency of the agreement before all taxes and discounts have been applied.|
| notes| object| | | | | | Notes on the order.|
| notes<wbr>.heading| string| | 250| | | | The order heading. Usually displayed at the top of the order.|
| notes<wbr>.textLine1| string| | 1000| | | | The first line of supplementary text on the order. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | 1000| | | | The second line of supplementary text in the notes on the order. This is usually displayed as a footer on the order.|
| orderNumber| integer| | | 999999999| 1| | A reference number for the order document.|
| paymentTerms| object| | | | | | The terms of payment for the order.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | 0| | The number of days of credit on the order. This field is only valid if terms of payment is not of type duedate.|
| paymentTerms<wbr>.name| string| | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | References a pdf representation of this order.|
| pdf<wbr>.self| string| uri| | | | | The unique reference of the pdf representation for this order.|
| project| object| | | | | | The project the order is connected to.|
| project<wbr>.projectNumber| integer| | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | A unique reference to the project resource.|
| recipient| object| | | | | | The actual recipient of the order. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the order may be ACME IT.|
| recipient<wbr>.address| string| | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | The person to whom this order is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | Customer and company references related to this order.|
| references<wbr>.customerContact| object| | | | | | The customer contact is a reference to the employee at the customer to contact regarding the order.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | 250| | | | A text field that can be used to save any custom reference on the order.|
| references<wbr>.salesPerson| object| | | | | | The sales person is a reference to the employee who sold the goods on the order. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | The total rounding error<wbr>, if any<wbr>, on the order in base currency.|
| self| string| uri| | | | | The unique self reference of the archived order.|
| soap| object| | | | | | References a SOAP order handle.|
| soap<wbr>.orderHandle| object| | | | | | The unique reference of the SOAP order handle.|
| soap<wbr>.orderHandle<wbr>.id| integer| | | | | | ID of the SOAP order handle.|
| vatAmount| number| | | | | | The total amount of VAT on the order in the order currency. This will have the same sign as net amount|


