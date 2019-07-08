## Payment Types

Payment Types define which type of payment and details are supplied when defining an entry on a voucher in the journals.

Each type of payment lets you define payment details specific to that type. As this unfortunately requires a JSON schema version that we do not support yet you may consult this table:
 
Type | Name | paymentDetail1 (String, max 50 chars) | paymentDetail2 (see for reqs)
------------- | ------------- | ------------- | -------------
1 | +71 | fiSupplierNo | ocrLine (Int, 15 chars)
2 | +73 | fiSupplierNo | message (String, 5-100 chars)
5 | +04 | giroAccount | ocrLine (Int, 16 chars)
7 | Bank Transfer | accountNo | message (String, 5-100 chars)
10 | IBAN | ibanSwift | message (String, 5-100 chars)
14 | Entry only | - | -
17 | +75 | fiSupplierNo | ocrLineMessage (see below)

ocrLineMessage: OCR/optional message must be either a number (2-16 digits) or else use the format 'number/text'. When using number/text format: ocrLine (Int, 2-16 chars) Message (max 140 chars).
 
### <span class='get'>GET</span> /payment-types

This endpoint provides you with a collection of payment types. 

#### Schema name

[payment-types.get.schema.json](https://restapi.e-conomic.com/schema/payment-types.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

name, self




#### Properties

| Name | Type | Format | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | ---------- | ---------- | --------- | ----------- |
| name| string| | 50| 1| | The payment type name.|
| paymentTypeNumber| integer| | | | 1| The payment type number is a positive unique numerical identifier.|
| self| string| uri| | | | A unique link reference to the payment type item.|



### <span class='get'>GET</span> /payment-types/:paymentTypeNumber

Returns a specific payment type.

#### Schema name

[payment-types.paymentTypeNumber.get.schema.json](https://restapi.e-conomic.com/schema/payment-types.paymentTypeNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, self




#### Properties

| Name | Type | Format | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | ---------- | ---------- | --------- | ----------- |
| name| string| | 50| 1| | The payment type name.|
| paymentTypeNumber| integer| | | | 1| The payment type number is a positive unique numerical identifier.|
| self| string| uri| | | | A unique link reference to the payment type item.|


