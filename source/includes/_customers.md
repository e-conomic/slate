## Customers

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/kunder-kunder-ny-kunde](http://wiki2.e-conomic.dk/salg/kunder-kunder-ny-kunde).

### <span class='get'>GET</span> /customers

This endpoint provides you with a collection of customers. 

<!_customers.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber

Returns a specific customer.

<!_customers.customerNumber.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/totals

Returns a specific customer totals.

<!_customers.customerNumber.totals.get.schema.md!>

### <span class='post'>POST</span> /customers

This endpoint allows you to create a new customer.

<!_customers.post.schema.md!>

### <span class='put'>PUT</span> /customers/:customerNumber

This endpoint allows you to update an existing customer.

<!_customers.customerNo.put.schema.md!>

### <span class='delete'>DELETE</span> /customers/:customerNumber

This endpoint allows you to  delete a customer. This delete operation will return a HttpStatusCode.NoContent (204) on success.

### <span class='get'>GET</span> /customers/:customerNumber/templates/

Returns the templates available for customers. Templates are used to simplify the creation of 
resources that can otherwise be complex to build. An example of this is an Invoice.

<!_customers.customerNumber.templates.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/templates/invoice

Returns a draft invoice template based on the customer. This can be modified and 
posted to [/invoices/drafts](#post-invoices-drafts)

<!_customers.customerNumber.templates.invoice.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/templates/invoiceline

This returns a collection of draft invoice lines, one for each product, with the corresponding link to the full draft invoice line template.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/customers/101/templates/invoiceline",
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

<!_customers.customerNumber.templates.invoiceline.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/templates/invoiceline/:productNumber

This returns the invoice line template for the specified product. This template can be used to easily create an invoice line on an existing draft invoice. Please note that this method accepts an additional parameter - 'quantity', in the query string, which defines the quantity on the template. This parameter can be used to ensure the correct discount level for a given customer, when using discount levels in the inventory module.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/customers/101/templates/invoiceline/101?quantity=5",
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

<!_customers.customerNumber.templates.invoiceline.productNumber.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/contacts

This endpoint provides you with a collection of customer contacts.

<!_customers.customerNumber.contacts.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint provides you with a specific customer contacts.

<!_customers.customerNumber.contacts.contactNumber.get.schema.md!>

### <span class='post'>POST</span> /customers/:customerNumber/contacts

This endpoint allows you to create a new customer contact.

<!_customers.customerNumber.contacts.post.schema.md!>

### <span class='put'>PUT</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint allows you to update an existing customer contact.

<!_customers.customerNumber.contacts.contactNumber.put.schema.md!>

### <span class='delete'>DELETE</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint allows you to delete a customer contact. An HttpStatusCode.NoContent (204) is returned on success.

### <span class='get'>GET</span> /customers/:customerNumber/delivery-locations

This endpoint provides you with a collection of delivery locations for the customer.

<!_customers.customerNumber.delivery-locations.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint provides you with a specific delivery location for the customer.

<!_customers.customerNumber.delivery-locations.deliveryLocationNumber.get.schema.md!>

### <span class='post'>POST</span> /customers/:customerNumber/delivery-locations

This endpoint allows you to create a new delivery location for the customer.

<!_customers.customerNumber.delivery-locations.post.schema.md!>

### <span class='put'>PUT</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint allows you to update an existing delivery location on the customer.

<!_customers.customerNumber.delivery-locations.deliveryLocationNumber.put.schema.md!>

### <span class='delete'>DELETE</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint allows you to delete an existing delivery location on the customer. An HttpStatusCode.NoContent (204) is returned on success.

### <span class='get'>GET</span> /customers/:customerNumber/invoices

Links to invoices for a specific customer.

<!_customers.customerNumber.invoices.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/invoices/drafts

This endpoint provides you with a collection of draft invoices for the customer.

<!_customers.customerNumber.invoices.drafts.get.schema.md!>

### <span class='get'>GET</span> /customers/:customerNumber/invoices/booked

This endpoint provides you with a collection of booked invoices for the customer.

<!_customers.customerNumber.invoices.booked.get.schema.md!>
