## Suppliers

Suppliers are the vendors from whom you buy your goods.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/regnskab/soegning-og-lister-leverandoerer-ny-leverandoer](http://wiki2.e-conomic.dk/regnskab/soegning-og-lister-leverandoerer-ny-leverandoer).

### <span class='get'>GET</span> /suppliers

This endpoint provides you with a collection of suppliers.

#### Schema name

[suppliers.get.schema.json](https://restapi.e-conomic.com/schema/suppliers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

currency, layout, layout.self, paymentTerms, paymentTerms.self, supplierGroup.self, vatZone, vatZone.self




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | ----------- |
| address| string| | | 255| | | Address for the supplier including street and number.|
| attention| object| | | | | | Optional contact person at the supplier.|
| attention<wbr>.self| string| uri| | | | | A unique reference to the supplier contact resource.|
| attention<wbr>.supplierContactNumber| integer| | | | | | Unique number identifying the supplier contact.|
| bankAccount| string| | | 50| | | The supplier's bank account.|
| barred| boolean| | | | | | Boolean indication of whether the supplier is barred.|
| city| string| | | 50| | | The supplier's city.|
| contacts| string| uri| | | | | A unique reference to the supplier contacts collection.|
| corporateIdentificationNumber| string| | | 40| | | Company Identification Number. For example CVR in Denmark.|
| costAccount| object| | | | | | Cost account for the supplier.|
| costAccount<wbr>.accountNumber| integer| | True| | | | Unique number identifying the cost account.|
| costAccount<wbr>.self| string| uri| | | | | A unique reference to the account resource.|
| country| string| | | 50| | | The supplier's country.|
| currency| string| | | 3| 3| | Default currency used when purchasing from the supplier.|
| defaultInvoiceText| string| | | 100| | | The default invoice text for the supplier.|
| email| string| | | 100| | | The supplier's e-mail address. Note: you can specify multiple email addresses in this field<wbr>, separated by a space.|
| layout| object| | | | | | Layout to be applied for invoices and other documents for this supplier.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| name| string| | | 255| 1| | The supplier name.|
| paymentTerms| object| | | | | 1| The default payment terms for the supplier.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| A unique identifier of the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| phone| string| | | 20| | | The supplier's phone number.|
| remittanceAdvice| object| | | | | | Remittance advice for the supplier.|
| remittanceAdvice<wbr>.creditorId| string| | | 50| | | Supplier payment details.|
| remittanceAdvice<wbr>.paymentType| object| | | | | | The default payment type for the supplier.|
| remittanceAdvice<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | | Unique number identifying the payment type.|
| remittanceAdvice<wbr>.paymentType<wbr>.self| string| uri| | | | | A unique reference to the payment type resource.|
| salesPerson| object| | | | | | Reference to the employee responsible for contact with this supplier.|
| salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| self| string| | | | | | A unique self reference of the supplier.|
| supplierContact| object| | | | | | Reference to main contact employee at supplier.|
| supplierContact<wbr>.self| string| uri| | | | | A unique reference to the supplier contact resource.|
| supplierContact<wbr>.supplierContactNumber| integer| | | | | | Unique number identifying the supplier contact.|
| supplierGroup| object| | | | | 1| The supplier group of the supplier.|
| supplierGroup<wbr>.self| string| uri| | | | | A unique reference to the supplier group resource.|
| supplierGroup<wbr>.supplierGroupNumber| integer| | | | | | Unique number identifying the supplier group.|
| supplierNumber| integer| | | | | | The supplier number is a unique numerical identifier.|
| vatZone| object| | | | | | Indicates whether the supplier is located domestically<wbr>, in Europe or elsewhere abroad|
| vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| zip| string| | | 10| | | The suppliers zipcode.|



### <span class='get'>GET</span> /suppliers/:supplierNumber

Returns a specific supplier.

#### Schema name

[suppliers.supplierNumber.get.schema.json](https://restapi.e-conomic.com/schema/suppliers.supplierNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, layout, layout.self, paymentTerms, paymentTerms.self, supplierGroup.self, supplierNumber, vatZone, vatZone.self




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | ----------- |
| address| string| | | 255| | | Address for the supplier including street and number.|
| attention| object| | | | | | Optional contact person at the supplier.|
| attention<wbr>.self| string| uri| | | | | A unique reference to the supplier contact resource.|
| attention<wbr>.supplierContactNumber| integer| | | | | | Unique number identifying the supplier contact.|
| bankAccount| string| | | 50| | | The supplier's bank account.|
| barred| boolean| | | | | | Boolean indication of whether the supplier is barred.|
| city| string| | | 50| | | The supplier's city.|
| contacts| string| uri| | | | | A unique reference to the supplier contacts collection.|
| corporateIdentificationNumber| string| | | 40| | | Company Identification Number. For example CVR in Denmark.|
| costAccount| object| | | | | | Cost account for the supplier.|
| costAccount<wbr>.accountNumber| integer| | True| | | | Unique number identifying the cost account.|
| costAccount<wbr>.self| string| uri| | | | | A unique reference to the account resource.|
| country| string| | | 50| | | The supplier's country.|
| currency| string| | | 3| 3| | Default currency used when purchasing from the supplier.|
| defaultInvoiceText| string| | | 100| | | The default invoice text for the supplier.|
| email| string| | | 100| | | The supplier's e-mail address. Note: you can specify multiple email addresses in this field<wbr>, separated by a space.|
| layout| object| | | | | | Layout to be applied for invoices and other documents for this supplier.|
| layout<wbr>.layoutNumber| integer| | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | A unique link reference to the layout item.|
| name| string| | | 255| 1| | The supplier name.|
| paymentTerms| object| | | | | 1| The default payment terms for the supplier.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| A unique identifier of the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | A unique reference to the payment term resource.|
| phone| string| | | 20| | | The supplier's phone number.|
| remittanceAdvice| object| | | | | | Remittance advice for the supplier.|
| remittanceAdvice<wbr>.creditorId| string| | | 50| | | Supplier payment details.|
| remittanceAdvice<wbr>.paymentType| object| | | | | | The default payment type for the supplier.|
| remittanceAdvice<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | | Unique number identifying the payment type.|
| remittanceAdvice<wbr>.paymentType<wbr>.self| string| uri| | | | | A unique reference to the payment type resource.|
| salesPerson| object| | | | | | Reference to the employee responsible for contact with this supplier.|
| salesPerson<wbr>.employeeNumber| integer| | | | | 1| Unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | A unique reference to the employee resource.|
| self| string| | | | | | A unique self reference of the supplier.|
| supplierContact| object| | | | | | Reference to main contact employee at supplier.|
| supplierContact<wbr>.self| string| uri| | | | | A unique reference to the supplier contact resource.|
| supplierContact<wbr>.supplierContactNumber| integer| | | | | | Unique number identifying the supplier contact.|
| supplierGroup| object| | | | | 1| The supplier group of the supplier.|
| supplierGroup<wbr>.self| string| uri| | | | | A unique reference to the supplier group resource.|
| supplierGroup<wbr>.supplierGroupNumber| integer| | | | | | Unique number identifying the supplier group.|
| supplierNumber| integer| | | | | 1| The supplier number is a unique numerical identifier.|
| vatZone| object| | | | | | Indicates whether the supplier is located domestically<wbr>, in Europe or elsewhere abroad|
| vatZone<wbr>.self| string| uri| | | | | A unique reference to the vat zone.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | Unique identifier of the vat zone.|
| zip| string| | | 10| | | The suppliers zipcode.|



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

#### Schema name

[suppliers.supplierNumber.put.schema.json](https://restapi.e-conomic.com/schema/suppliers.supplierNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, name, paymentTerms, supplierNumber, vatZone




#### Properties

| Name | Type | Format | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | ---------- | ---------- | --------- | ----------- |
| address| string| | 255| | | Address for the supplier including street and number.|
| attention| object| | | | | Optional contact person at the supplier.|
| attention<wbr>.self| string| uri| | | | A unique reference to the supplier contact resource.|
| attention<wbr>.supplierContactNumber| integer| | | | | Unique number identifying the supplier contact.|
| bankAccount| string| | 50| | | The supplier's bank account.|
| barred| boolean| | | | | Boolean indication of whether the supplier is barred.|
| city| string| | 50| | | The supplier's city.|
| corporateIdentificationNumber| string| | 40| | | Company Identification Number. For example CVR in Denmark.|
| costAccount| object| | | | | Cost account for the supplier.|
| costAccount<wbr>.accountNumber| integer| | | | | Unique number identifying the cost account.|
| costAccount<wbr>.self| string| uri| | | | A unique reference to the account resource.|
| country| string| | 50| | | The supplier's country.|
| currency| string| | 3| 3| | Default currency used when purchasing from the supplier.|
| defaultInvoiceText| string| | 100| | | The default invoice text for the supplier.|
| email| string| | 100| | | The supplier's e-mail address. Note: you can specify multiple email addresses in this field<wbr>, separated by a space.|
| layout| object| | | | | Layout to be applied for invoices and other documents for this supplier.|
| layout<wbr>.layoutNumber| integer| | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | A unique link reference to the layout item.|
| name| string| | 255| 1| | The supplier name.|
| paymentTerms| object| | | | 1| The default payment terms for the supplier.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | 1| A unique identifier of the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | A unique reference to the payment term resource.|
| phone| string| | 20| | | The supplier's phone number.|
| remittanceAdvice| object| | | | | Remittance advice for the supplier.|
| remittanceAdvice<wbr>.creditorId| string| | 50| | | Supplier payment details.|
| remittanceAdvice<wbr>.paymentType| object| | | | | The default payment type for the supplier.|
| remittanceAdvice<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | Unique number identifying the payment type.|
| remittanceAdvice<wbr>.paymentType<wbr>.self| string| uri| | | | A unique reference to the payment type resource.|
| salesPerson| object| | | | | Reference to the employee responsible for contact with this supplier.|
| salesPerson<wbr>.employeeNumber| integer| | | | 1| Unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | A unique reference to the employee resource.|
| self| string| | | | | A unique self reference of the supplier.|
| supplierContact| object| | | | | Reference to main contact employee at supplier.|
| supplierContact<wbr>.self| string| uri| | | | A unique reference to the supplier contact resource.|
| supplierContact<wbr>.supplierContactNumber| integer| | | | | Unique number identifying the supplier contact.|
| supplierGroup| object| | | | 1| The supplier group of the supplier.|
| supplierGroup<wbr>.self| string| uri| | | | A unique reference to the supplier group resource.|
| supplierGroup<wbr>.supplierGroupNumber| integer| | | | | Unique number identifying the supplier group.|
| supplierNumber| integer| | | | 1| The supplier number is a unique numerical identifier.|
| vatZone| object| | | | | Indicates whether the supplier is located domestically<wbr>, in Europe or elsewhere abroad|
| vatZone<wbr>.self| string| uri| | | | A unique reference to the vat zone.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | Unique identifier of the vat zone.|
| zip| string| | 10| | | The suppliers zipcode.|



### <span class='post'>POST</span> /suppliers

#### Schema name

[suppliers.post.schema.json](https://restapi.e-conomic.com/schema/suppliers.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, name, paymentTerms, supplierGroup, vatZone




#### Properties

| Name | Type | Format | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | ---------- | ---------- | --------- | ----------- |
| address| string| | 255| | | Address for the supplier including street and number.|
| attention| object| | | | | Optional contact person at the supplier.|
| attention<wbr>.self| string| uri| | | | A unique reference to the supplier contact resource.|
| attention<wbr>.supplierContactNumber| integer| | | | | Unique number identifying the supplier contact.|
| bankAccount| string| | 50| | | The supplier's bank account.|
| barred| boolean| | | | | Boolean indication of whether the supplier is barred.|
| city| string| | 50| | | The supplier's city.|
| corporateIdentificationNumber| string| | 40| | | Company Identification Number. For example CVR in Denmark.|
| costAccount| object| | | | | Cost account for the supplier.|
| costAccount<wbr>.accountNumber| integer| | | | | Unique number identifying the cost account.|
| costAccount<wbr>.self| string| uri| | | | A unique reference to the account resource.|
| country| string| | 50| | | The supplier's country.|
| currency| string| | 3| 3| | Default currency used when purchasing from the supplier.|
| defaultInvoiceText| string| | 100| | | The default invoice text for the supplier.|
| email| string| | 100| | | The supplier's e-mail address. Note: you can specify multiple email addresses in this field<wbr>, separated by a space.|
| layout| object| | | | | Layout to be applied for invoices and other documents for this supplier.|
| layout<wbr>.layoutNumber| integer| | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | A unique link reference to the layout item.|
| name| string| | 255| 1| | The supplier name.|
| paymentTerms| object| | | | | The default payment terms for the supplier.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | 1| A unique identifier of the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | A unique reference to the payment term resource.|
| phone| string| | 20| | | The supplier's phone number.|
| remittanceAdvice| object| | | | | Remittance advice for the supplier.|
| remittanceAdvice<wbr>.creditorId| string| | 50| | | Supplier payment details.|
| remittanceAdvice<wbr>.paymentType| object| | | | | The default payment type for the supplier.|
| remittanceAdvice<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | Unique number identifying the payment type.|
| remittanceAdvice<wbr>.paymentType<wbr>.self| string| uri| | | | A unique reference to the payment type resource.|
| salesPerson| object| | | | | Reference to the employee responsible for contact with this supplier.|
| salesPerson<wbr>.employeeNumber| integer| | | | 1| Unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | A unique reference to the employee resource.|
| self| string| | | | | A unique self reference of the supplier.|
| supplierContact| object| | | | | Reference to main contact employee at supplier.|
| supplierContact<wbr>.self| string| uri| | | | A unique reference to the supplier contact resource.|
| supplierContact<wbr>.supplierContactNumber| integer| | | | | Unique number identifying the supplier contact.|
| supplierGroup| object| | | | | The supplier group of the supplier.|
| supplierGroup<wbr>.self| string| uri| | | | A unique reference to the supplier group resource.|
| supplierGroup<wbr>.supplierGroupNumber| integer| | | | 1| Unique number identifying the supplier group.|
| supplierNumber| integer| | | | | The supplier number is a unique numerical identifier.|
| vatZone| object| | | | | Indicates whether the supplier is located domestically<wbr>, in Europe or elsewhere abroad|
| vatZone<wbr>.self| string| uri| | | | A unique reference to the vat zone.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | Unique identifier of the vat zone.|
| zip| string| | 10| | | The suppliers zipcode.|



### <span class='delete'>DELETE</span> /suppliers/:supplierNumber

This endpoint allows you to delete a supplier. This delete operation will return a HttpStatusCode.NoContent (204) on success.
