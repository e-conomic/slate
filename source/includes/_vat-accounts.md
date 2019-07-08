## Vat Accounts

### <span class='get'>GET</span> /vat-accounts

This endpoint allows you to fetch a collection of all vat accounts.

#### Schema name

[vat-accounts.get.schema.json](https://restapi.e-conomic.com/schema/vat-accounts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

account.self, contraAccount.self, self, vatType.name, vatType.self, vatType.vatTypeNumber




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| account| object| | | The account for this vat account.|
| account<wbr>.accountNumber| integer| | | A unique identifier of the account.|
| account<wbr>.self| string| uri| | A unique link reference to the account item.|
| barred| boolean| | | If true this vat account has been barred from further use.|
| contraAccount| object| | | The contra account for this vat account.|
| contraAccount<wbr>.accountNumber| integer| | | A unique identifier of the contra account.|
| contraAccount<wbr>.self| string| uri| | A unique link reference to the contra account item.|
| name| string| | 40| The name of the vat account.|
| ratePercentage| number| | | The tax rate for this vat account.|
| self| string| uri| | A unique link reference to the vat account item.|
| vatCode| string| | 5| The alphanumerical code for the vat account.|
| vatType| object| | | The vat type for this vat account.|
| vatType<wbr>.name| string| | | Name of the vat type.|
| vatType<wbr>.self| string| uri| | A unique link reference to the vat type item.|
| vatType<wbr>.vatTypeNumber| integer| | | A unique identifier of the vat type.|



### <span class='get'>GET</span> /vat-accounts/:id

This endpoint allows you to fetch a specific vat account.

#### Schema name

[vat-accounts.id.get.schema.json](https://restapi.e-conomic.com/schema/vat-accounts.id.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

account.self, contraAccount.self, self, vatType.name, vatType.self, vatType.vatTypeNumber




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| account| object| | | The account for this vat account.|
| account<wbr>.accountNumber| integer| | | A unique identifier of the account.|
| account<wbr>.self| string| uri| | A unique link reference to the account item.|
| barred| boolean| | | If true this vat account has been barred from further use.|
| contraAccount| object| | | The contra account for this vat account.|
| contraAccount<wbr>.accountNumber| integer| | | A unique identifier of the contra account.|
| contraAccount<wbr>.self| string| uri| | A unique link reference to the contra account item.|
| name| string| | 40| The name of the vat account.|
| ratePercentage| number| | | The tax rate for this vat account.|
| self| string| uri| | A unique link reference to the vat account item.|
| vatCode| string| | 5| The alphanumerical code for the vat account.|
| vatType| object| | | The vat type for this vat account.|
| vatType<wbr>.name| string| | | Name of the vat type.|
| vatType<wbr>.self| string| uri| | A unique link reference to the vat type item.|
| vatType<wbr>.vatTypeNumber| integer| | | A unique identifier of the vat type.|

