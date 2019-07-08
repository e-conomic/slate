## Currencies

### <span class='get'>GET</span> /currencies

#### Schema name

[currencies.get.schema.json](https://restapi.e-conomic.com/schema/currencies.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| code| string| | 3| The ISO 4217 code of the currency.|
| isoNumber| string| | 3| The ISO 4217 numeric code of the currency.|
| name| string| | 50| The name of the currency.|
| self| string| uri| | The unique self reference of the currency resource.|



### <span class='get'>GET</span> /currencies/:code

#### Schema name

[currencies.code.get.schema.json](https://restapi.e-conomic.com/schema/currencies.code.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| code| string| | 3| The ISO 4217 code of the currency.|
| isoNumber| string| | 3| The ISO 4217 numeric code of the currency.|
| name| string| | 50| The name of the currency.|
| self| string| uri| | The unique self reference of the currency resource.|


