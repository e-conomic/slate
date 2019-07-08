## Invoices

The draft invoices endpoint is where you go to read and create invoices that haven't been booked yet. While an invoice is still a draft invoice you can edit everything. Once you book the invoice you can no longer edit it.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/fakturering-fakturaer-ny-faktura](http://wiki2.e-conomic.dk/salg/fakturering-fakturaer-ny-faktura).

### <span class='get'>GET</span> /invoices

This is the root for the invoice endpoint. From here you can navigate to draft and booked invoices, but also to a number of convenience endpoints such as 'paid' and 'overdue'.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices",
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

[invoices.get.schema.json](https://restapi.e-conomic.com/schema/invoices.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| booked| string| uri| A reference to all booked invoices.|
| drafts| string| uri| A reference to all unbooked invoices.|
| notDue| string| uri| A reference to all not due invoices. Not due invoices are invoices where due date still hasn't been surpassed. This includes invoices that are due today.|
| overdue| string| uri| A reference to all overdue invoices. Overdue invoices are unpaid invoices where due date has been surpassed.|
| paid| string| uri| A reference to all paid invoices. Paid invoices are invoices that has no remaining unpaid amount.|
| self| string| uri| A reference to the invoice resource.|
| sent| string| uri| A reference to all sent invoices.|
| totals| string| uri| A reference to the totals of all invoices.|
| unpaid| string| uri| A reference to all unpaid invoices. unpaid invoices are invoices that has a remaining unpaid amount|



### <span class='get'>GET</span> /invoices/drafts

This endpoint provides you with a collection of draft invoices. A draft invoice is an invoice that has not yet been booked. Think of it as a work-in-progress invoice that is not yet ready to be sent to a customer.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/drafts",
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

[invoices.drafts.get.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.bookingInstructions, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.currentInvoiceHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.currentInvoiceHandle.id

#### Default sorting

     draftInvoiceNumber : ascending


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the invoice in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| draftInvoiceNumber| integer| | | | 999999999| 1| | A reference number for the draft invoice document. This is not the final invoice number. The final invoice number can't be determined until the invoice is booked.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| exchangeRate| number| | | | | | | The exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency.|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the invoice and the sales net invoice amount in base currency. For a credit note this amount will be negative.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net invoice amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References to a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | References a pdf representation of this invoice.|
| project| object| | | | | | | The project the invoice is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | The phone number the invoice was sent to (if applicable).|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.nemHandelType| Enum| | | | | | ean<wbr>, corporateIdentificationNumber<wbr>, pNumber| Chosen NemHandel type used for e-invoicing.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the specific draft invoice.|
| soap| object| | | | | | | References a SOAP invoice handle.|
| soap<wbr>.currentInvoiceHandle| object| | | | | | | The unique reference of the SOAP invoice handle.|
| soap<wbr>.currentInvoiceHandle<wbr>.id| integer| | | | | | | ID of the SOAP invoice handle.|
| templates| object| | True| | | | | References to all templates on this draft invoice.|
| templates<wbr>.bookingInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/booked to book the invoice draft.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the draft invoice templates resource.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/drafts/:draftInvoiceNumber

This endpoint provides you with the entire document for a specific draft invoice.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/drafts/2",
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

[invoices.drafts.draftInvoiceNumber.get.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.draftInvoiceNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, lines.departmentalDistribution.self, lines.product.self, lines.unit.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.customerContactNumber, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.bookingInstructions, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.currentInvoiceHandle.id

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber, soap.currentInvoiceHandle.id


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the invoice in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| draftInvoiceNumber| integer| | | | 999999999| 1| | A reference number for the draft invoice document. This is not the final invoice number. The final invoice number can't be determined until the invoice is booked.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| exchangeRate| number| | | | | | | The exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency.|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| lines| array| | | | | | | An array containing the specific invoice lines.|
| lines<wbr>.accrual| object| | | | | | | Accrual is used to allocate costs and/or revenues over several periods.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the invoice.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the invoice line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the invoice line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the invoice line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the invoice line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the invoice.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the invoice line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the invoice currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the invoice line in the invoice currency.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the invoice and the sales net invoice amount in base currency. For a credit note this amount will be negative.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net invoice amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this draft invoice.|
| project| object| | | | | | | The project the invoice is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
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
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the draft invoice.|
| soap| object| | | | | | | References a SOAP invoice handle.|
| soap<wbr>.currentInvoiceHandle| object| | | | | | | The unique reference of the SOAP invoice handle.|
| soap<wbr>.currentInvoiceHandle<wbr>.id| integer| | | | | | | ID of the SOAP invoice handle.|
| templates| object| | True| | | | | References to all templates on this draft invoice.|
| templates<wbr>.bookingInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/booked to book the invoice draft.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the draft invoice templates resource.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='post'>POST</span> /invoices/drafts

POST'ing to .../drafts allows you to create a new draft invoice. The method doesn't also book it, but simply creates the draft.

```javascript
var headers = {
    'X-AppSecretToken': "demo",
    'X-AgreementGrantToken': "demo",
    'Content-Type': "application/json"
};

var invoice = {
    "date": "2014-08-08",
    "currency": "DKK",
    "exchangeRate": 10.25,
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
            "lineNumber": 1,
            "sortKey": 1,
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
            "lineNumber": 1,
            "sortKey": 1,
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
            "lineNumber": 1,
            "sortKey": 1,
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
    $('#input').text(JSON.stringify(invoice, null, 4));
    $.ajax({
        url: "https://restapi.e-conomic.com/invoices/drafts",
        dataType: "json",
        headers: headers,
        data: JSON.stringify(invoice),
        contentType: 'application/json; charset=UTF-8',
        type: "POST"
    }).always(function (data) {
        $('#output').text(JSON.stringify(data, null, 4));
    });
});
```

#### Schema name

[invoices.drafts.post.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, customer, date, layout, paymentTerms, recipient, recipient.name, recipient.vatZone




#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| currency| string| | | | | | | The ISO 4217 3-letter currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | 1| | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| exchangeRate| number| | | | 999999999999| | | The desired exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency. If no exchange rate is supplied<wbr>, the system will get the current daily rate<wbr>, unless the invoice currency is the same as the base currency<wbr>, in which case it will be set to 100.|
| grossAmount| number| | True| | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | True| | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | | The layout used by the invoice.|
| layout<wbr>.layoutNumber| integer| | | | | 1| | A unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique reference to the layout resource.|
| lines| array| | | | | | | An array containing the specific invoice lines.|
| lines<wbr>.accrual| object| | | | | | | The accrual for the invoice.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Must be within an existing accounting year. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold. Please note<wbr>, that when setting existing products<wbr>, description field is required. While setting non-existing product<wbr>, description field can remain empty.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 1| | The line number is a unique number within the invoice.|
| lines<wbr>.marginInBaseCurrency| number| | | | | | | The difference between the net price and the cost price on the invoice line in base currency.|
| lines<wbr>.marginPercentage| number| | | | | | | The margin on the invoice line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the invoice line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the invoice line.|
| lines<wbr>.sortKey| integer| | | | | 1| | A sort key used to sort the lines in ascending order within the invoice.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the invoice line.|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 1| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the invoice currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the invoice line in the invoice currency.|
| marginInBaseCurrency| number| | True| | | | | The difference between the cost price of the items on the invoice and the sales net invoice amount in base currency. For a credit note this amount will be negative.|
| marginPercentage| number| | True| | | | | The margin expressed as a percentage. If the net invoice amount is less than the cost price this number will be negative.|
| netAmount| number| | True| | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | True| | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | True| | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard<wbr>, avtaleGiro| The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this draft invoice.|
| project| object| | | | | | | The project the invoice is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.mobilePhone| string| | | | | | | The phone number the invoice was sent to (if applicable).|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.nemHandelType| Enum| | | | | | ean<wbr>, corporateIdentificationNumber<wbr>, pNumber| Chosen NemHandel type used for e-invoicing.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The primary sales person is a reference to the employee who sold the goods on the invoice.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | True| | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| vatAmount| number| | True| | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='put'>PUT</span> /invoices/drafts/:draftInvoiceNumber

When updating a draft invoice please be aware that altering a reference does not update previously fetched associated data. E.g. pointing to another customerNumber does not update customer name, address etc. If you want to have all values dependent on the customer to change as well you need to get the full customer object first and update every property. You could also consider taking advantage of [templates](#templates).

#### Schema name

[invoices.drafts.draftInvoiceNumber.put.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.draftInvoiceNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

recipient, recipient.vatZone

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | True| | | | | The total cost of the items on the invoice in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| draftInvoiceNumber| integer| | | | 999999999| 1| | A reference number for the draft invoice document. This is not the final invoice number. The final invoice number can't be determined until the invoice is booked.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| exchangeRate| number| | | | 999999999999| | | The exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency.|
| grossAmount| number| | True| | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | True| | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| lines| array| | | | | | | An array containing the specific invoice lines.|
| lines<wbr>.accrual| object| | | | | | | The accrual for the invoice.|
| lines<wbr>.accrual<wbr>.endDate| string| full-date| | | | | | The end date for the accrual. Format: YYYY-MM-DD.|
| lines<wbr>.accrual<wbr>.startDate| string| full-date| | | | | | The start date for the accrual. Must be within an existing accounting year. Format: YYYY-MM-DD.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the invoice.|
| lines<wbr>.marginInBaseCurrency| number| | True| | | | | The difference between the net price and the cost price on the invoice line in base currency.|
| lines<wbr>.marginPercentage| number| | True| | | | | The margin on the invoice line expressed as a percentage.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the invoice line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the invoice line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the invoice.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the invoice line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the invoice currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the invoice line in the invoice currency.|
| marginInBaseCurrency| number| | True| | | | | The difference between the cost price of the items on the invoice and the sales net invoice amount in base currency. For a credit note this amount will be negative.|
| marginPercentage| number| | True| | | | | The margin expressed as a percentage. If the net invoice amount is less than the cost price this number will be negative.|
| netAmount| number| | True| | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | True| | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | True| | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | True| 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | True| | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard<wbr>, avtaleGiro| The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this draft invoice.|
| project| object| | | | | | | The project the invoice is connected to.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.nemHandelType| Enum| | | | | | ean<wbr>, corporateIdentificationNumber<wbr>, pNumber| Chosen NemHandel type used for e-invoicing.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recepient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | True| | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the draft invoice.|
| vatAmount| number| | True| | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='delete'>DELETE</span> /invoices/drafts/

Deletes all draft invoices. This endpoint supports filters.

The delete operation will return a status message that looks as follows.

<pre class='inlinecode prettyprint'>
{ 
  "message": "Deleted 4 invoices.",
  "deletedCount": 4,
  "deletedItems": [
    { 
	  "draftInvoiceNumber": 1, 
	  "self": "https://restapi.e-conomic.com/invoices/drafts/1"
	},
    {
	  "draftInvoiceNumber": 2,
	  "self": "https://restapi.e-conomic.com/invoices/drafts/2"
	},
    { 
	  "draftInvoiceNumber": 3,
	  "self": "https://restapi.e-conomic.com/invoices/drafts/3"
	},
    { 
	  "draftInvoiceNumber": 4, 
	  "self": "https://restapi.e-conomic.com/invoices/drafts/4"
	}
  ]
}
</pre>

### <span class='delete'>DELETE</span> /invoices/drafts/:draftInvoiceNumber

Deletes a draft invoice. The delete operation will return a status message that looks as follows if successful.

<pre class='inlinecode prettyprint'>
{ 
  "message": "Deleted invoice.",
  "deletedCount": 1,
  "deletedItems": [
    { 
	  "draftInvoiceNumber": 1, 
	  "self": "https://restapi.e-conomic.com/invoices/drafts/1"
	}
  ]
}
</pre>

### <span class='post'>POST</span> /invoices/booked/

Books a draft invoice. If the operation is successful, this returns the full booked invoice. 

In order to book an invoice post a draftInvoice wrapped in an object as such:

<pre class='inlinecode prettyprint'>
{
    "draftInvoice": {
        "draftInvoiceNumber": 2,
        "self": "https://restapi.e-conomic.com/invoices/drafts/2"
    }
}
</pre>

```javascript
var headers = {
  'X-AppSecretToken': "YourAppSecretToken",
  'X-AgreementGrantToken': "YourAgreementGrantToken",
  'Content-Type': "application/json"
};

var draftInvoiceBookRequest = {
  "draftInvoice": {
    "draftInvoiceNumber": 1
  }
}

$(document).ready(function() {
  $('#input').text(JSON.stringify(setting, null, 4));
  $.ajax({
    url: "https://restapi.e-conomic.com/invoices/booked",
    dataType: "json",
    headers: headers,
    data: JSON.stringify(draftInvoiceBookRequest),
    contentType: 'application/json; charset=UTF-8',
    type: "POST"
  }).always(function(data) {
    $('#output').text(JSON.stringify(data, null, 4));
  });
});
```

Additionally, you can specify with which number the invoice is booked, by adding a "bookWithNumber" property:

<pre class='inlinecode prettyprint'>
{
    "draftInvoice": {
        "draftInvoiceNumber": 2,
        "self": "https://restapi.e-conomic.com/invoices/drafts/2"
    },
    "bookWithNumber": 7
}
</pre>

Lastly, you can specify if and how the invoice should be sent to the recipient, by adding a "sendBy" property. This property is an enum and can have the following values:

* none
* ean

If this property is omitted, it will default to not sending the invoice after booking it.

<pre class='inlinecode prettyprint'>
{
    "draftInvoice": {
        "draftInvoiceNumber": 2,
        "self": "https://restapi.e-conomic.com/invoices/drafts/2"
    },
    "bookWithNumber": 7,
    "sendBy": "ean"
}
</pre>

The invoice will only be sent if the booking is successful. Once the invoice has been sent it can be found at [/invoices/sent](#get-invoices-sent).

#### Send via email
Sending sales documents via email is not supported through API. To send an order or invoice via email, you must fetch the necessary data/PDF via the API and email either the file or a link to a self-hosted endpoint via own email solution.

#### EAN 

You can send your invoices electronically via EAN (European Article Numbering) also known as NemHandel. This method of invoicing is required in order to bill public institutions in Denmark.

To send an invoice via EAN it must meet the following conditions:

* A valid CVR number must be defined in the agreement configuration
* A valid EAN number must exist on the customer
* Contact person on the customer must be provided
* Contact person on the invoice must be provided
* Company has to be a paying customer (non-demo)
* EAN invoices are only valid for the Danish agreements

#### Schema name

[invoices.booked.post.schema.json](https://restapi.e-conomic.com/schema/invoices.booked.post.schema.json)

#### Return type

This method returns a single object




#### Properties

| Name | Type | Format | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | --------- | ------ | ----------- |
| bookWithNumber| integer| | | | | The number for the invoice to be booked with. Optional.|
| draftInvoice| object| | | | | The draft invoice you want to book.|
| draftInvoice<wbr>.draftInvoiceNumber| integer| | 999999999| 1| | A reference number for the draft invoice document to be booked.|
| draftInvoice<wbr>.self| string| uri| | | | The unique self reference of the draft invoice to be booked.|
| sentBy| string| | | | none<wbr>, EAN| Optional. Sets whether invoice should be sent via e-invoicing when booking.|



### <span class='put'>PUT</span> /invoices/booked/:bookWithNumber

An alternative to the POST methodology described above is to PUT. This is done the same way as for post, except you must specify the number for the invoice to be booked with in url. This number must match the number specified in the JSON body of your request, if specified.

#### Schema name

[invoices.booked.bookWithNumber.put.schema.json](https://restapi.e-conomic.com/schema/invoices.booked.bookWithNumber.put.schema.json)

#### Return type

This method returns a single object




#### Properties

| Name | Type | Format | Min value | Description |
| ---- | ---- | ------ | --------- | ----------- |
| bookWithNumber| integer| | | The number for the invoice to be booked with. Optional.|
| draftInvoice| object| | | The draft invoice you want to book.|
| draftInvoice<wbr>.draftInvoiceNumber| integer| | 1| A reference number for the draft invoice document to be booked.|
| draftInvoice<wbr>.self| string| uri| | The unique self reference of the draft invoice to be booked.|



### <span class='get'>GET</span> /invoices/booked

This returns a collection of all booked invoices.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/booked",
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

[invoices.booked.get.schema.json](https://restapi.e-conomic.com/schema/invoices.booked.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| | A reference number for the booked invoice document.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
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
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/booked/:bookedInvoiceNumber

This returns the document for a specific booked invoice.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/booked/1",
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

[invoices.booked.bookedInvoiceNumber.get.schema.json](https://restapi.e-conomic.com/schema/invoices.booked.bookedInvoiceNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, layout.self, lines.departmentalDistribution.self, lines.product.self, lines.unit.self, paymentTerms.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, lines.deliveryDate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, lines.deliveryDate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| | A reference number for the booked invoice document.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Only used if the terms of payment is of type 'duedate'<wbr>, in which case it is mandatory. Format according to ISO-8601 (YYYY-MM-DD).|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique link reference to the layout item.|
| lines| array| | | | | | | An array containing the specific invoice lines.|
| lines<wbr>.deliveryDate| string| full-date| | | | | | Invoice delivery date. The date is formatted according to ISO-8601.|
| lines<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this invoice line is distributed between. This requires the departments module to be enabled.|
| lines<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| lines<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| lines<wbr>.description| string| | | 2500| | | | A description of the product or service sold.|
| lines<wbr>.discountPercentage| number| | | | | | | A line discount expressed as a percentage.|
| lines<wbr>.lineNumber| integer| | | | | 0| | The line number is a unique number within the invoice.|
| lines<wbr>.product| object| | | | | | | The product or service offered on the invoice line.|
| lines<wbr>.product<wbr>.productNumber| string| | | 25| | | | The unique product number. This can be a stock keeping unit identifier (SKU).|
| lines<wbr>.product<wbr>.self| string| uri| | | | | | A unique reference to the product resource.|
| lines<wbr>.quantity| number| | | | | | | The number of units of goods on the invoice line.|
| lines<wbr>.sortKey| integer| | | | | 0| | A sort key used to sort the lines in ascending order within the invoice.|
| lines<wbr>.totalNetAmount| number| | | | | | | The total invoice line amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| lines<wbr>.unit| object| | | | | | | The unit of measure applied to the invoice line.|
| lines<wbr>.unit<wbr>.name| string| | | 100| | | | The name of the unit (e.g. 'kg' for weight or 'l' for volume).|
| lines<wbr>.unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| lines<wbr>.unit<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| lines<wbr>.unitCostPrice| number| | | | | | | The cost price of 1 unit of the goods or services in the invoice currency.|
| lines<wbr>.unitNetPrice| number| | | | | | | The price of 1 unit of the goods or services on the invoice line in the invoice currency.|
| lines<wbr>.vatAmount| number| | | | | | | The total amount of VAT on the invoice line in the invoice currency. This will have the same sign as total net amount|
| lines<wbr>.vatRate| number| | | | | | | The VAT rate in % used to calculate the vat amount on this line.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
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
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/drafts/:draftInvoiceNumber/templates

This returns links to the available templates for draft invoices.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/drafts/10263/templates",
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

[invoices.drafts.draftInvoiceNumber.templates.get.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.draftInvoiceNumber.templates.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| bookingInstructions| string| uri| A unique reference to the book request template resource.|
| self| string| uri| A unique reference to the draft invoice template resource.|



### <span class='get'>GET</span> /invoices/drafts/:draftInvoiceNumber/templates/booking-instructions

This endpoint returns a book request for a draft invoice which can then be posted to [/invoices/booked](#post-invoices-booked)

#### Schema name

[invoices.drafts.draftInvoiceNumber.templates.booking-instructions.get.schema.json](https://restapi.e-conomic.com/schema/invoices.drafts.draftInvoiceNumber.templates.booking-instructions.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

draftInvoice.self, self




#### Properties

| Name | Type | Format | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | --------- | ----------- |
| draftInvoice| object| | | | The draft invoice which is to be booked.|
| draftInvoice<wbr>.draftInvoiceNumber| integer| | 999999999| 1| A unique identifier of the draft invoice.|
| draftInvoice<wbr>.self| string| uri| | | A unique reference to the draft invoice resource.|
| self| string| uri| | | A unique link reference to the draft invoice book request.|



### <span class='get'>GET</span> /invoices/totals

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals",
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

[invoices.totals.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

booked.paid.self, booked.self, booked.unpaid.notOverdue.self, booked.unpaid.overdue.self, booked.unpaid.self, drafts.self, predefinedPeriodFilters.lastFifteenDays.self, predefinedPeriodFilters.lastMonth.self, predefinedPeriodFilters.lastSevenDays.self, predefinedPeriodFilters.lastThirtyDays.self, predefinedPeriodFilters.lastWeek.self, predefinedPeriodFilters.lastYear.self, predefinedPeriodFilters.thisMonth.self, predefinedPeriodFilters.thisWeek.self, predefinedPeriodFilters.thisYear.self, self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| booked| object| | The totals for booked invoices.|
| booked<wbr>.description| string| | A short description about this object.|
| booked<wbr>.invoiceCount| integer| | The number of booked invoices.|
| booked<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for all booked invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| booked<wbr>.paid| object| | The totals for booked and paid invoices.|
| booked<wbr>.paid<wbr>.description| string| | A short description about this object.|
| booked<wbr>.paid<wbr>.invoiceCount| integer| | The number of booked and paid invoices.|
| booked<wbr>.paid<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for all booked and paid invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| booked<wbr>.paid<wbr>.self| string| uri| A reference to the invoices totals booked paid resource.|
| booked<wbr>.self| string| uri| A reference to the invoices totals booked resource.|
| booked<wbr>.unpaid| object| | The totals for booked and unpaid invoices.|
| booked<wbr>.unpaid<wbr>.description| string| | A short description about this object.|
| booked<wbr>.unpaid<wbr>.grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the booked unpaid invoices|
| booked<wbr>.unpaid<wbr>.invoiceCount| integer| | The number of booked and unpaid invoices.|
| booked<wbr>.unpaid<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for all booked and unpaid invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| booked<wbr>.unpaid<wbr>.notOverdue| object| | Totals for unpaid booked invoices where due date still hasn't been surpassed. This includes invoices that are due today.|
| booked<wbr>.unpaid<wbr>.notOverdue<wbr>.description| string| | A short description about this object.|
| booked<wbr>.unpaid<wbr>.notOverdue<wbr>.invoiceCount| integer| | The number of  unpaid booked invoices where due date still hasn't been surpassed. This includes invoices that are due today.|
| booked<wbr>.unpaid<wbr>.notOverdue<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for unpaid booked invoices where due date still hasn't been surpassed. in the base currency of the agreement before all taxes and discounts have been applied.|
| booked<wbr>.unpaid<wbr>.notOverdue<wbr>.self| string| uri| A reference to the invoices totals booked unpaid not overdue resource.|
| booked<wbr>.unpaid<wbr>.overdue| object| | Totals for unpaid booked invoices where due date has been surpassed.|
| booked<wbr>.unpaid<wbr>.overdue<wbr>.description| string| | A short description about this object.|
| booked<wbr>.unpaid<wbr>.overdue<wbr>.grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the booked<wbr>, unpaid and overdue invoices|
| booked<wbr>.unpaid<wbr>.overdue<wbr>.invoiceCount| integer| | The number of unpaid booked invoices where due date has been surpassed.|
| booked<wbr>.unpaid<wbr>.overdue<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for unpaid booked invoices where due date has been surpassed in the base currency of the agreement before all taxes and discounts have been applied.|
| booked<wbr>.unpaid<wbr>.overdue<wbr>.self| string| uri| A reference to the invoices totals booked unpaid overdue resource.|
| booked<wbr>.unpaid<wbr>.self| string| uri| A reference to the invoices totals booked unpaid resource.|
| drafts| object| | The totals for draft invoices.|
| drafts<wbr>.description| string| | A short description about this object.|
| drafts<wbr>.invoiceCount| integer| | The number of draft invoices.|
| drafts<wbr>.netAmountInBaseCurrency| number| | The total invoice amount for all draft invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| drafts<wbr>.self| string| uri| A reference to the invoices totals draft resource.|
| predefinedPeriodFilters| object| | The totals for draft invoices.|
| predefinedPeriodFilters<wbr>.lastFifteenDays| object| | Filter the totals to only include the last fifteen days.|
| predefinedPeriodFilters<wbr>.lastFifteenDays<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastFifteenDays<wbr>.self| string| uri| A reference to the invoices totals for the last 15 days resource.|
| predefinedPeriodFilters<wbr>.lastMonth| object| | Filter the totals to only include invoices from the last calendar month.|
| predefinedPeriodFilters<wbr>.lastMonth<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastMonth<wbr>.self| string| uri| A reference to the invoices totals for the last month resource.|
| predefinedPeriodFilters<wbr>.lastSevenDays| object| | Filter the totals to only include the last 7 days days.|
| predefinedPeriodFilters<wbr>.lastSevenDays<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastSevenDays<wbr>.self| string| uri| A reference to the invoices totals for the last 7 days resource.|
| predefinedPeriodFilters<wbr>.lastThirtyDays| object| | Filter the totals to only include the last 30 days days.|
| predefinedPeriodFilters<wbr>.lastThirtyDays<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastThirtyDays<wbr>.self| string| uri| A reference to the invoices totals for the last 30 days resource.|
| predefinedPeriodFilters<wbr>.lastWeek| object| | Filter the totals to only include invoices from the previous week<wbr>, starting last Monday.|
| predefinedPeriodFilters<wbr>.lastWeek<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastWeek<wbr>.self| string| uri| A reference to the invoices totals for the last week resource.|
| predefinedPeriodFilters<wbr>.lastYear| object| | Filter the totals to only include invoices from last calendar year.|
| predefinedPeriodFilters<wbr>.lastYear<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.lastYear<wbr>.self| string| uri| A reference to the invoices totals for the last year resource.|
| predefinedPeriodFilters<wbr>.thisMonth| object| | Filter the totals to only include invoices from this calendar month.|
| predefinedPeriodFilters<wbr>.thisMonth<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.thisMonth<wbr>.self| string| uri| A reference to the invoices totals for this calendar month resource.|
| predefinedPeriodFilters<wbr>.thisWeek| object| | Filter the totals to only include invoices from this week<wbr>, starting Monday.|
| predefinedPeriodFilters<wbr>.thisWeek<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.thisWeek<wbr>.self| string| uri| A reference to the invoices totals for this week resource.|
| predefinedPeriodFilters<wbr>.thisYear| object| | Filter the totals to only include invoices from this calendar years.|
| predefinedPeriodFilters<wbr>.thisYear<wbr>.description| string| | A short description about this object.|
| predefinedPeriodFilters<wbr>.thisYear<wbr>.self| string| uri| A reference to the invoices totals for this calendar year resource.|
| self| string| uri| A reference to the invoices totals booked resource.|



### <span class='get'>GET</span> /invoices/totals/drafts

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/drafts",
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

[invoices.totals.drafts.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.drafts.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals draft accounting years resource.|
| customers| string| uri| A reference to the invoices totals draft customer resource.|
| employees| string| uri| A reference to the invoices totals draft employees resource.|
| invoiceCount| integer| | The number of draft invoices.|
| maxDate| string| full-date| The latest date of any draft invoice.|
| minDate| string| full-date| The earliest date of any draft invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all draft invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| periods| string| uri| A reference to the invoices totals draft periods resource.|
| self| string| uri| A reference to the invoices totals draft resource.|



### <span class='get'>GET</span> /invoices/totals/booked

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked",
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

[invoices.totals.booked.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.booked.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals booked accounting years resource.|
| customers| string| uri| A reference to the invoices totals booked customer resource.|
| employees| string| uri| A reference to the invoices totals booked employees resource.|
| invoiceCount| integer| | The number of booked invoices.|
| maxDate| string| full-date| The latest date of any booked invoice.|
| minDate| string| full-date| The earliest date of any booked invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all booked invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| paid| string| uri| A reference to the invoices totals booked paid resource.|
| periods| string| uri| A reference to the invoices totals booked periods resource.|
| self| string| uri| A reference to the invoices totals booked resource.|
| unpaid| string| uri| A reference to the invoices totals booked unpaid resource.|



### <span class='get'>GET</span> /invoices/totals/booked/paid

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/paid",
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

[invoices.totals.booked.paid.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.booked.paid.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals booked paid accounting years resource.|
| customers| string| uri| A reference to the invoices totals booked paid customer resource.|
| employees| string| uri| A reference to the invoices totals booked paid employees resource.|
| invoiceCount| integer| | The number of paid booked invoices.|
| maxDate| string| full-date| The latest date of any paid and booked invoice.|
| minDate| string| full-date| The earliest date of any paid and booked invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all booked and paid invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| periods| string| uri| A reference to the invoices totals booked paid periods resource.|
| self| string| uri| A reference to the invoices totals booked paid resource.|



### <span class='get'>GET</span> /invoices/totals/booked/unpaid

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/unpaid",
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

[invoices.totals.booked.unpaid.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.booked.unpaid.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals booked unpaid accounting years resource.|
| customers| string| uri| A reference to the invoices totals booked unpaid customer resource.|
| employees| string| uri| A reference to the invoices totals booked unpaid employees resource.|
| grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the booked unpaid invoices.|
| invoiceCount| integer| | The number of unpaid booked invoices.|
| maxDate| string| full-date| The latest date of any unpaid and booked invoice.|
| minDate| string| full-date| The earliest date of any unpaid and booked invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all booked and unpaid invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| notOverdue| string| uri| A reference to the invoices totals booked unpaid not overdue resource.|
| overdue| string| uri| A reference to the invoices totals booked unpaid overdue resource.|
| periods| string| uri| A reference to the invoices totals booked unpaid periods resource.|
| self| string| uri| A reference to the invoices totals booked unpaid resource.|



### <span class='get'>GET</span> /invoices/totals/booked/unpaid/overdue

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/unpaid/overdue",
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

[invoices.totals.booked.unpaid.overdue.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.booked.unpaid.overdue.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals booked unpaid overdue accounting years resource.|
| customers| string| uri| A reference to the invoices totals booked unpaid overdue customer resource.|
| employees| string| uri| A reference to the invoices totals booked unpaid overdue employees resource.|
| grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the booked unpaid overdue invoices|
| invoiceCount| integer| | The number of booked<wbr>, unpaid and overdue invoices.|
| maxDate| string| full-date| The latest date of any booked<wbr>, unpaid and overdue invoice.|
| minDate| string| full-date| The earliest date of any booked<wbr>, unpaid and overdue invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all booked<wbr>, unpaid and overdue invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| periods| string| uri| A reference to the invoices totals booked unpaid overdue periods resource.|
| self| string| uri| A reference to the invoices totals booked unpaid overdue resource.|



### <span class='get'>GET</span> /invoices/totals/booked/unpaid/not-overdue

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/unpaid/not-overdue",
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

[invoices.totals.booked.unpaid.not-overdue.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.booked.unpaid.not-overdue.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| accountingYears| string| uri| A reference to the invoices totals booked unpaid not overdue accounting years resource.|
| customers| string| uri| A reference to the invoices totals booked unpaid not overdue customer resource.|
| employees| string| uri| A reference to the invoices totals booked unpaid not overdue employees resource.|
| grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the booked unpaid not overdue invoices.|
| invoiceCount| integer| | The number of booked<wbr>, unpaid and not overdue invoices.|
| maxDate| string| full-date| The latest date of any booked<wbr>, unpaid and not overdue invoice.|
| minDate| string| full-date| The earliest date of any booked<wbr>, unpaid and not overdue invoice.|
| netAmountInBaseCurrency| number| | The total invoice amount for all booked<wbr>, unpaid and not overdue invoices in the base currency of the agreement before all taxes and discounts have been applied.|
| periods| string| uri| A reference to the invoices totals booked unpaid not overdue periods resource.|
| self| string| uri| A reference to the invoices totals booked unpaid not overdue resource.|



### <span class='get'>GET</span> /invoices/totals/generic-collection

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/employees",
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

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/drafts/accounting-years/2014/customers",
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

This endpoint documentation is a generic description of many Totals GET endpoints which all follow the same structure. The way this works is that you can append any of the groupings listed below to your current totals endpoint url to group the data.

Grouping options:

1. **/customers**
2. **/accounting-years**
3. **/periods**
4. **/employees**

Examples:

1. /invoices/totals/booked/employees
2. /invoices/totals/booked/accounting-years/:year/periods/:periodNumber/customers
3. /invoices/totals/drafts/periods
4. /invoices/totals/drafts/accounting-years/:year/customers

The schema uses the following generic naming:

1. endpoints
2. endpoints.endpoint
3. endpoints.endpoint.endpointIdentifier

These names will, when you run the individual endpoints be replaced by their actual names mapped as this:

* customers
	1. endpoints -> customers
	2. endpoints.endpoint -> customers.customer
	3. endpoints.endpoint.endpointIdentifier -> customers.customer.customerNumber
* accounting-years
	1. endpoints -> accountingYears
	2. endpoints.endpoint -> accountingYears.accountingYear
	3. endpoints.endpoint.endpointIdentifier -> accountingYears.accountingYear.year
* periods
	1. endpoints -> periods
	2. endpoints.endpoint -> periods.period
	3. endpoints.endpoint.endpointIdentifier -> periods.period.periodNumber
* employees
	1. endpoints -> employees
	2. endpoints.endpoint -> employees.employee
	3. endpoints.endpoint.endpointIdentifier -> employees.employee.employeeNumber

#### Schema name

[invoices.totals.generic.collection.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.generic.collection.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

endpoints.endpoint.self, endpoints.self, self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| endpoints| array| | An array containing the specific endpoint lines.|
| endpoints<wbr>.endpoint| object| | The endpoint used to get totals on.|
| endpoints<wbr>.endpoint<wbr>.endpointIdentifier| | | A reference number/string for the endpoint. Depending on the endpoint this could either be an integer or string.|
| endpoints<wbr>.endpoint<wbr>.self| string| uri| A reference to the this endpoint.|
| endpoints<wbr>.grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the invoices used in this calculation on this endpoint line.|
| endpoints<wbr>.invoiceCount| integer| | The number of invoices used for calculating on this endpoint line totals.|
| endpoints<wbr>.maxDate| string| full-date| The latest date of any invoice used in this calculation on this endpoint line.|
| endpoints<wbr>.minDate| string| full-date| The earliest date of any invoice used in this calculation on this endpoint line.|
| endpoints<wbr>.netAmountInBaseCurrency| number| | The total invoice amount calculated on this endpoint line in the base currency of the agreement before all taxes and discounts have been applied.|
| endpoints<wbr>.self| string| uri| A reference to the this resource.|
| grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the invoices used in this calculation. This property will only be shown on unpaid endpoints.|
| invoiceCount| integer| | The number of invoices used for calculating the totals.|
| maxDate| string| full-date| The latest date of any invoice used in this calculation.|
| minDate| string| full-date| The earliest date of any invoice used in this calculation.|
| netAmountInBaseCurrency| number| | The total invoice amount calculated in the base currency of the agreement before all taxes and discounts have been applied.|
| self| string| uri| A reference to the this resource.|



### <span class='get'>GET</span> /invoices/totals/generic

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/booked/customers/101",
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

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/invoices/totals/drafts/accounting-years/2014/periods/97",
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
This endpoint documentation is a generic description of many Totals GET endpoints which all follow the same structure. The way this works is that you can add one or many of the filters listed below to your current totals endpoint url to filter the data.

Filter options:

1. **/customers/:customerNumber**
2. **/accounting-years/:year**
3. **/periods/:periodNumber**
4. **/employees/:employeeNumber**

Examples:

1. /invoices/totals/booked/customers/:customerNumber
2. /invoices/totals/booked/customers/:customerNumber/unpaid/not-overdue/employees/:employeesNumber
3. /invoices/totals/drafts/accounting-years/:year/periods/:periodNumber

The schema uses the following generic naming:

1. endpoints
2. endpoints.endpoint
3. endpoints.endpoint.endpointIdentifier

These names will, when you run the individual endpoints be replaced by their actual names mapped as this:

* customers
	1. endpoints -> customers
	2. endpoints.endpoint -> customers.customer
	3. endpoints.endpoint.endpointIdentifier -> customers.customer.customerNumber
* accounting-years
	1. endpoints -> accountingYears
	2. endpoints.endpoint -> accountingYears.accountingYear
	3. endpoints.endpoint.endpointIdentifier -> accountingYears.accountingYear.year
* periods
	1. endpoints -> periods
	2. endpoints.endpoint -> periods.period
	3. endpoints.endpoint.endpointIdentifier -> periods.period.periodNumber
* employees
	1. endpoints -> employees
	2. endpoints.endpoint -> employees.employee
	3. endpoints.endpoint.endpointIdentifier -> employees.employee.employeeNumber

#### Schema name

[invoices.totals.generic.get.schema.json](https://restapi.e-conomic.com/schema/invoices.totals.generic.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| grossRemainderInBaseCurrency| number| | The gross total remaining to be paid on the invoices used in this calculation.|
| invoiceCount| integer| | The number of invoices used for calculating the totals.|
| maxDate| string| full-date| The latest date of any invoice used in this calculation.|
| minDate| string| full-date| The earliest date of any invoice used in this calculation.|
| netAmountInBaseCurrency| number| | The total invoice amount calculated in the base currency of the agreement before all taxes and discounts have been applied.|
| self| string| uri| A reference to the this resource.|



### <span class='get'>GET</span> /invoices/paid

This returns a collection of all paid invoices.

#### Schema name

[invoices.paid.get.schema.json](https://restapi.e-conomic.com/schema/invoices.paid.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, pdf.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| A reference number for the booked invoice document.|
| currency| string| | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| grossAmount| number| | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| string| | | 30| | | The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | A unique reference to the project resource.|
| recipient| object| | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | The zip code of the actual recipient.|
| references| object| | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/unpaid

This returns a collection of all unpaid invoices.

#### Schema name

[invoices.unpaid.get.schema.json](https://restapi.e-conomic.com/schema/invoices.unpaid.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, pdf.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| A reference number for the booked invoice document.|
| currency| string| | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| grossAmount| number| | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| string| | | 30| | | The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | A unique reference to the project resource.|
| recipient| object| | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | The zip code of the actual recipient.|
| references| object| | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/overdue

This returns a collection of all overdue invoices.

#### Schema name

[invoices.overdue.get.schema.json](https://restapi.e-conomic.com/schema/invoices.overdue.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, pdf.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| A reference number for the booked invoice document.|
| currency| string| | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| grossAmount| number| | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| string| | | 30| | | The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | A unique reference to the project resource.|
| recipient| object| | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | The zip code of the actual recipient.|
| references| object| | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/not-due

This returns a collection of all not due invoices.

#### Schema name

[invoices.not-due.get.schema.json](https://restapi.e-conomic.com/schema/invoices.not-due.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, pdf.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.vatZone.vatZoneNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| A reference number for the booked invoice document.|
| currency| string| | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| grossAmount| number| | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| string| | | 30| | | The type the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | A unique reference to the project resource.|
| recipient| object| | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | The zip code of the actual recipient.|
| references| object| | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer id number. The customer id number can be either positive or negative<wbr>, but it can't be zero.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | The unique self reference of the booked invoice.|
| sent| string| uri| | | | | A convenience link to see if the invoice has been sent or not.|
| vatAmount| number| | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /invoices/sent

This endpoint provides you with a collection of all the invoices sent via e-invoicing.

#### Schema name

[invoices.sent.get.schema.json](https://restapi.e-conomic.com/schema/invoices.sent.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

invoice.self, self




#### Properties

| Name | Type | Format | Values | Description |
| ---- | ---- | ------ | ------ | ----------- |
| createdBy| string| | | The e-conomic user that booked and sent the invoice.|
| creationDate| string| date| | The date that the invoice was sent.|
| id| integer| | | The unique|
| invoice| object| | | A reference to the booked invoice that was sent.|
| invoice<wbr>.bookedInvoiceNumber| integer| | | The number of the booked invoice.|
| invoice<wbr>.self| string| uri| | The unique self reference of the booked invoice resource.|
| recipient| object| | | The recipient of the invoice.|
| recipient<wbr>.ean| string| | | The EAN number the invoice was sent to (if applicable).|
| recipient<wbr>.mobilePhone| string| | | The phone number the invoice was sent to (if applicable).|
| recipient<wbr>.name| string| | | The name of the recipient (if applicable).|
| self| string| uri| | The unique self reference of the sent invoice resource.|
| sendBy| Enum| | mobilePay<wbr>, ean| The e-invoicing channel through which this invoice was sent.|
| status| string| | | The status of the sent invoice.|



### <span class='get'>GET</span> /invoices/sent/:id

#### Schema name

[invoices.sent.id.get.schema.json](https://restapi.e-conomic.com/schema/invoices.sent.id.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

invoice.self, self




#### Properties

| Name | Type | Format | Values | Description |
| ---- | ---- | ------ | ------ | ----------- |
| createdBy| string| | | The e-conomic user that booked and sent the invoice.|
| creationDate| string| date| | The date that the invoice was sent.|
| id| integer| | | The unique|
| invoice| object| | | A reference to the booked invoice that was sent.|
| invoice<wbr>.bookedInvoiceNumber| integer| | | The number of the booked invoice.|
| invoice<wbr>.self| string| uri| | The unique self reference of the booked invoice resource.|
| recipient| object| | | The recipient of the invoice.|
| recipient<wbr>.ean| string| | | The EAN number the invoice was sent to (if applicable).|
| recipient<wbr>.mobilePhone| string| | | The phone number the invoice was sent to (if applicable).|
| recipient<wbr>.name| string| | | The name of the recipient (if applicable).|
| self| string| uri| | The unique self reference of the sent invoice resource.|
| sendBy| Enum| | mobilePay<wbr>, ean| The e-invoicing channel through which this invoice was sent.|
| status| string| | | The status of the sent invoice.|


