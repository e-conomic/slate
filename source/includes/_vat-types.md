## Vat Types

### <span class='get'>GET</span> /vat-types

This endpoint allows you to fetch a collection of all vat types.

#### Schema name

[vat-types.get.schema.json](https://restapi.e-conomic.com/schema/vat-types.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

name, self, vatTypeNumber




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| name| string| | Name of the vat type.|
| self| string| uri| A unique link reference to the vat type item.|
| vatTypeNumber| integer| | A unique identifier of the vat type.|



### <span class='get'>GET</span> /vat-types/:vatTypeId

This endpoint allows you to fetch a specific vat type.

#### Schema name

[vat-types.id.get.schema.json](https://restapi.e-conomic.com/schema/vat-types.id.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, self, vatTypeNumber




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| name| string| | Name of the vat type.|
| self| string| uri| A unique link reference to the vat type item.|
| vatTypeNumber| integer| | A unique identifier of the vat type.|



### <span class='get'>GET</span> /vat-types/:vatTypeId/vat-report-setups

<aside class="notice">
This endpoint is not documented yet.
</aside>

### <span class='get'>GET</span> /vat-types/:vatTypeId/vat-report-setups/:vatReportSetupId

<aside class="notice">
This endpoint is not documented yet.
</aside>
