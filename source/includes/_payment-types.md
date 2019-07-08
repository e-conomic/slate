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

<!_payment-types.get.schema.md!>

### <span class='get'>GET</span> /payment-types/:paymentTypeNumber

Returns a specific payment type.

<!_payment-types.paymentTypeNumber.get.schema.md!>
