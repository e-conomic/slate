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

<!_orders.get.schema.md!>

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

<!_orders.drafts.get.schema.md!>

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

<!_orders.drafts.post.schema.md!>

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

<!_orders.drafts.orderNumber.get.schema.md!>

### <span class='put'>PUT</span> /orders/drafts/:orderNumber

This endpoint allows for replacing already existing order

<!_orders.drafts.orderNumber.put.schema.md!>

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

<!_orders.drafts.orderNumber.templates.get.schema.md!>

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

<!_orders.sent.get.schema.md!>

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

<!_orders.sent.orderNumber.get.schema.md!>

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

<!_orders.archived.get.schema.md!>

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

<!_orders.archived.orderNumber.get.schema.md!>
