## Units

Units are the available units ('kg', 'cm', etc) that you can put on a product.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-enheder](http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-enheder).

### <span class='get'>GET</span> /units

<!_units.get.schema.md!>

### <span class='get'>GET</span> /units/:unitNumber

<!_units.unitNumber.get.schema.md!>

### <span class='post'>POST</span> /units

<!_units.post.schema.md!>

### <span class='put'>PUT</span> /units/:unitNumber

<!_units.unitNumber.put.schema.md!>

### <span class='delete'>DELETE</span> /units/:unitNumber

Please be adviced that you can't delete a unit that is in use.

### <span class='get'>GET</span> /units/:unitNumber/products

A link to the products that reference this unit.