## Vat Zones

<aside class="warning">
This endpoint is experimental and subject to change
</aside>

### <span class='get'>GET</span> /vat-zones

This endpoint allows you to fetch a collection of all vat zones.

#### Schema name

[vat-zones.get.schema.json](https://restapi.e-conomic.com/schema/vat-zones.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| enabledForCustomer| boolean| | | If this value is true<wbr>, then the vat zone can be used for a customer.|
| enabledForSupplier| boolean| | | If this value is true<wbr>, then the vat zone can be used for a supplier.|
| name| string| | 50| The name of the vat zone.|
| self| string| uri| | A unique link reference to the vat zone item.|
| vatZoneNumber| integer| | | A unique identifier of the vat zone.|



### <span class='get'>GET</span> /vat-zones/:vatZoneNumber

This endpoint allows you to fetch a specific vat zone.

#### Schema name

[vat-zones.vatZoneNumber.get.schema.json](https://restapi.e-conomic.com/schema/vat-zones.vatZoneNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| enabledForCustomer| boolean| | | If this value is true<wbr>, then the vat zone can be used for a customer.|
| enabledForSupplier| boolean| | | If this value is true<wbr>, then the vat zone can be used for a supplier.|
| name| string| | 50| The name of the vat zone.|
| self| string| uri| | A unique link reference to the vat zone item.|
| vatZoneNumber| integer| | | A unique identifier of the vat zone.|


