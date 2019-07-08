## Customer Groups

### <span class='get'>GET</span> /customer-groups

This endpoint allows you to fetch a collection of all customer groups.

<!_customer-groups.get.schema.md!>

### <span class='get'>GET</span> /customer-groups/:customerGroupNumber

This endpoint allows you to fetch a specific customer group.

<!_customer-groups.customerGroupNumber.get.schema.md!>

### <span class='get'>GET</span> /customer-groups/:customerGroupNumber/customers

This endpoint allows you to fetch a collection of all customers in a specific customer group.

<!_customer-groups.customerGroupNumber.customers.get.schema.md!>

### <span class='post'>POST</span> /customer-groups

This endpoint allows you to create a new customer group.

<!_customer-groups.post.schema.md!>

### <span class='put'>PUT</span> /customer-groups/:customerGroupNumber

This endpoint allows you to update an existing customer group.

<!_customer-groups.customergroupnumber.put.schema.md!>

### <span class='delete'>DELETE</span> /customer-groups/:customerGroupNumber

This endpoint allows you to delete an existing customer group. It will return HttpStatusCode.NoContent (204) on success.
