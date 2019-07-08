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

<!_invoices.get.schema.md!>

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


<!_invoices.drafts.get.schema.md!>

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

<!_invoices.drafts.draftInvoiceNumber.get.schema.md!>

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

<!_invoices.drafts.post.schema.md!>

### <span class='put'>PUT</span> /invoices/drafts/:draftInvoiceNumber

When updating a draft invoice please be aware that altering a reference does not update previously fetched associated data. E.g. pointing to another customerNumber does not update customer name, address etc. If you want to have all values dependent on the customer to change as well you need to get the full customer object first and update every property. You could also consider taking advantage of [templates](#templates).

<!_invoices.drafts.draftInvoiceNumber.put.schema.md!>

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

<!_invoices.booked.post.schema.md!>

### <span class='put'>PUT</span> /invoices/booked/:bookWithNumber

An alternative to the POST methodology described above is to PUT. This is done the same way as for post, except you must specify the number for the invoice to be booked with in url. This number must match the number specified in the JSON body of your request, if specified.

<!_invoices.booked.bookWithNumber.put.schema.md!>

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

<!_invoices.booked.get.schema.md!>

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

<!_invoices.booked.bookedInvoiceNumber.get.schema.md!>

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

<!_invoices.drafts.draftInvoiceNumber.templates.get.schema.md!>

### <span class='get'>GET</span> /invoices/drafts/:draftInvoiceNumber/templates/booking-instructions

This endpoint returns a book request for a draft invoice which can then be posted to [/invoices/booked](#post-invoices-booked)

<!_invoices.drafts.draftInvoiceNumber.templates.booking-instructions.get.schema.md!>

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

<!_invoices.totals.get.schema.md!>

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

<!_invoices.totals.drafts.get.schema.md!>

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

<!_invoices.totals.booked.get.schema.md!>

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

<!_invoices.totals.booked.paid.get.schema.md!>

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

<!_invoices.totals.booked.unpaid.get.schema.md!>

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

<!_invoices.totals.booked.unpaid.overdue.get.schema.md!>

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

<!_invoices.totals.booked.unpaid.not-overdue.get.schema.md!>

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

<!_invoices.totals.generic.collection.get.schema.md!>

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

<!_invoices.totals.generic.get.schema.md!>

### <span class='get'>GET</span> /invoices/paid

This returns a collection of all paid invoices.

<!_invoices.paid.get.schema.md!>

### <span class='get'>GET</span> /invoices/unpaid

This returns a collection of all unpaid invoices.

<!_invoices.unpaid.get.schema.md!>

### <span class='get'>GET</span> /invoices/overdue

This returns a collection of all overdue invoices.

<!_invoices.overdue.get.schema.md!>

### <span class='get'>GET</span> /invoices/not-due

This returns a collection of all not due invoices.

<!_invoices.not-due.get.schema.md!>

### <span class='get'>GET</span> /invoices/sent

This endpoint provides you with a collection of all the invoices sent via e-invoicing.

<!_invoices.sent.get.schema.md!>

### <span class='get'>GET</span> /invoices/sent/:id

<!_invoices.sent.id.get.schema.md!>
