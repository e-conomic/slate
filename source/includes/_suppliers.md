## Suppliers

Suppliers are the vendors from whom you buy your goods.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/regnskab/soegning-og-lister-leverandoerer-ny-leverandoer](http://wiki2.e-conomic.dk/regnskab/soegning-og-lister-leverandoerer-ny-leverandoer).

### <span class='get'>GET</span> /suppliers

This endpoint provides you with a collection of suppliers.

<!_suppliers.get.schema.md!>

### <span class='get'>GET</span> /suppliers/:supplierNumber

Returns a specific supplier.

<!_suppliers.supplierNumber.get.schema.md!>

### <span class='get'>GET</span> /suppliers/:supplierNumber/contacts

<aside class="notice">
This endpoint is not documented yet.
</aside>

### <span class='get'>GET</span> /supplier-groups

<aside class="notice">
This endpoint is not documented yet.
</aside>

### <span class='get'>GET</span> /supplier-groups/:supplierGroupId

<aside class="notice">
This endpoint is not documented yet.
</aside>

### <span class='put'>PUT</span> /suppliers/:supplierNumber

This endpoint allows you to update an existing supplier.

<!_suppliers.supplierNumber.put.schema.md!>

### <span class='post'>POST</span> /suppliers

<!_suppliers.post.schema.md!>

### <span class='delete'>DELETE</span> /suppliers/:supplierNumber

This endpoint allows you to delete a supplier. This delete operation will return a HttpStatusCode.NoContent (204) on success.
