## Units

Units are the available units ('kg', 'cm', etc) that you can put on a product.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-enheder](http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-enheder).

### <span class='get'>GET</span> /units

#### Schema name

[units.get.schema.json](https://restapi.e-conomic.com/schema/units.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| name| string| | 8| The name of the unit.|
| self| string| uri| | A unique link reference to the unit item.|
| unitNumber| integer| | | A unique identifier of the unit.|



### <span class='get'>GET</span> /units/:unitNumber

#### Schema name

[units.unitNumber.get.schema.json](https://restapi.e-conomic.com/schema/units.unitNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| name| string| | 8| The name of the unit.|
| products| string| uri| | A link to the products that reference this unit.|
| self| string| uri| | A unique link reference to the unit item.|
| unitNumber| integer| | | A unique identifier of the unit.|



### <span class='post'>POST</span> /units

#### Schema name

[units.post.schema.json](https://restapi.e-conomic.com/schema/units.post.schema.json)

#### Return type

This method returns a single object

#### Required property

name




#### Properties

| Name | Type | Max length | Description |
| ---- | ---- | ---------- | ----------- |
| name| string| 8| The name of the unit.|



### <span class='put'>PUT</span> /units/:unitNumber

#### Schema name

[units.unitNumber.put.schema.json](https://restapi.e-conomic.com/schema/units.unitNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required property

name




#### Properties

| Name | Type | Max length | Description |
| ---- | ---- | ---------- | ----------- |
| name| string| 8| The new name of the unit.|



### <span class='delete'>DELETE</span> /units/:unitNumber

Please be adviced that you can't delete a unit that is in use.

### <span class='get'>GET</span> /units/:unitNumber/products

A link to the products that reference this unit.