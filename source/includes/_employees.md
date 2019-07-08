## Employees

### <span class='get'>GET</span> /employees

This endpoint provides you with a collection of employees.

#### Schema name

[employees.get.schema.json](https://restapi.e-conomic.com/schema/employees.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

employeeGroup.self, self

#### Filterable properties

barred, email, employeeGroup.employeeGroupNumber, employeeNumber, name, phone

#### Sortable properties

email, employeeGroup.employeeGroupNumber, employeeNumber, name, phone


#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| barred| boolean| | | | Shows if the employee is barred from being used.|
| bookedInvoices| string| uri| | | A link to the collection of booked invoices which has the employee as a reference.|
| customers| string| uri| | | A link to the collection of customers which has the employee as a reference.|
| draftInvoices| string| uri| | | A link to the collection of draft invoices which has the employee as a reference.|
| email| string| | 250| | The email address of the employee|
| employeeGroup| object| | | | The group to which the employee belongs.|
| employeeGroup<wbr>.employeeGroupNumber| integer| | | 1| The unique identifier of the employee group.|
| employeeGroup<wbr>.self| string| uri| | | A unique link reference to the employee group item.|
| employeeNumber| integer| | | 1| The employee number is a unique numerical identifier with a maximum of 9 digits.|
| name| string| | 250| | The name of the employee|
| phone| string| | 250| | The phone number of the employee|
| self| string| uri| | | A unique link reference to the employee item.|



### <span class='get'>GET</span> /employees/:employeeId

Returns a specific employee.

#### Schema name

[employees.employeeNumber.get.schema.json](https://restapi.e-conomic.com/schema/employees.employeeNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

employeeGroup.self, self

#### Filterable properties

barred, email, employeeGroup.employeeGroupNumber, employeeNumber, name, phone

#### Sortable properties

email, employeeGroup.employeeGroupNumber, employeeNumber, name, phone


#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| barred| boolean| | | | Shows if the employee is barred from being used.|
| bookedInvoices| string| uri| | | A link to the collection of booked invoices which has the employee as a reference.|
| customers| string| uri| | | A link to the collection of customers which has the employee as a reference.|
| draftInvoices| string| uri| | | A link to the collection of draft invoices which has the employee as a reference.|
| email| string| | 250| | The email address of the employee|
| employeeGroup| object| | | | The group to which the employee belongs.|
| employeeGroup<wbr>.employeeGroupNumber| integer| | | 1| The unique identifier of the employee group.|
| employeeGroup<wbr>.self| string| uri| | | A unique link reference to the employee group item.|
| employeeNumber| integer| | | 1| The employee number is a unique numerical identifier with a maximum of 9 digits.|
| name| string| | 250| | The name of the employee|
| phone| string| | 250| | The phone number of the employee|
| self| string| uri| | | A unique link reference to the employee item.|



### <span class='get'>GET</span> /employees/:employeeId/customers

This endpoint provides you with a collection of customers for the employee.

#### Schema name

[employees.employeeNumber.customers.get.schema.json](https://restapi.e-conomic.com/schema/employees.employeeNumber.customers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

attention.self, currency, customerContact.self, customerGroup, customerGroup.self, invoices.self, layout.self, name, paymentTerms, paymentTerms.self, salesPerson.self, self, templates.self, totals.self, vatZone, vatZone.self




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | --------- | ----------- |
| address| string| | | 510| | | | Address for the customer including street and number.|
| attention| object| | | | | | | The customer's person of attention.|
| attention<wbr>.customerContactNumber| integer| | | | | | | The unique identifier of the customer employee.|
| attention<wbr>.self| string| uri| | | | | | A unique link reference to the customer employee item.|
| balance| number| | True| | | | | The outstanding amount for this customer.|
| barred| boolean| | | | | | | Boolean indication of whether the customer is barred from invoicing.|
| city| string| | | 50| | | | The customer's city.|
| contacts| string| uri| | | | | | A unique link reference to the customer contacts items.|
| corporateIdentificationNumber| string| | | 40| | | | Corporate Identification Number. For example CVR in Denmark.|
| country| string| | | 50| | | | The customer's country.|
| creditLimit| number| | | | | | | A maximum credit for this customer. Once the maximum is reached or passed in connection with an order/quotation/invoice for this customer you see a warning in e-conomic.|
| currency| string| | | 3| 3| | | Default payment currency.|
| customerContact| object| | | | | | | Reference to main contact employee at customer.|
| customerContact<wbr>.customerContactnumber| integer| | | | | | | The unique identifier of the customer contact.|
| customerContact<wbr>.self| string| uri| | | | | | A unique link reference to the customer contact item.|
| customerGroup| object| | | | | | | Reference to the customer group this customer is attached to.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| deliveryLocations| string| uri| | | | | | A unique link reference to the customer delivery locations items.|
| ean| string| | | 40| | | | European Article Number. EAN is used for invoicing the Danish public sector.|
| email| string| | | 255| | | | Customer e-mail address where e-conomic invoices should be emailed. Note: you can specify multiple email addresses in this field<wbr>, separated by a space. If you need to send a copy of the invoice or write to other e-mail addresses<wbr>, you can also create one or more customer contacts.|
| invoices| object| | | | | | | |
| invoices<wbr>.booked| string| uri| | | | | | The unique reference to the booked invoices for this customer.|
| invoices<wbr>.drafts| string| uri| | | | | | The unique reference to the draft invoices for this customer.|
| invoices<wbr>.self| string| uri| | | | | | A unique link reference to the invoices resource for this customer.|
| lastUpdated| string| full-date| | | | | | The date this customer was last updated. The date is formatted according to ISO-8601.|
| layout| object| | | | | | | Layout to be applied for invoices and other documents for this customer.|
| layout<wbr>.layoutNumber| integer| | | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique link reference to the layout item.|
| mobilePhone| string| | | 50| | | | The customer's mobile phone number.|
| name| string| | | 255| 1| | | The customer name.|
| pNumber| string| | | 10| 10| | | Extension of corporate identification number (CVR). Identifying separate production unit (p-nummer).|
| paymentTerms| object| | | | | | | The default payment terms for the customer.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | | | The unique identifier of the payment terms.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique link reference to the payment terms item.|
| publicEntryNumber| string| | | 50| | | | The public entry number is used for electronic invoicing<wbr>, to define the account invoices will be registered on at the customer.|
| salesPerson| object| | | | | | | Reference to the employee responsible for contact with this customer.|
| salesPerson<wbr>.employeeNumber| integer| | | | | | | The unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | | A unique link reference to the employee resource.|
| self| string| uri| | | | | | The unique self reference of the customer resource.|
| telephoneAndFaxNumber| string| | | 255| | | | The customer's telephone and/or fax number.|
| templates| object| | | | | | | |
| templates<wbr>.invoice| string| uri| | | | | | The unique reference to the invoice template.|
| templates<wbr>.invoiceLine| string| uri| | | | | | The unique reference to the invoiceLine template.|
| templates<wbr>.self| string| uri| | | | | | A unique link reference to the templates resource.|
| totals| object| | | | | | | |
| totals<wbr>.booked| string| uri| | | | | | The unique reference to the booked invoice totals for this customer.|
| totals<wbr>.drafts| string| uri| | | | | | The unique reference to the draft invoice totals for this customer.|
| totals<wbr>.self| string| uri| | | | | | A unique link reference to the totals resource for this customer.|
| vatNumber| string| | | 50| | | | The customer's value added tax identification number. This field is only available to agreements in Sweden<wbr>, UK<wbr>, Germany<wbr>, Poland and Finland. Not to be mistaken for the danish CVR number<wbr>, which is defined on the corporateIdentificationNumber property.|
| vatZone| object| | | | | | | Indicates in which VAT-zone the customer is located (e.g.: domestically<wbr>, in Europe or elsewhere abroad).|
| vatZone<wbr>.self| string| uri| | | | | | A unique link reference to the VAT-zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | | The unique identifier of the VAT-zone.|
| website| string| | | 255| | | | Customer website<wbr>, if applicable.|
| zip| string| | | 30| | | | The customer's postcode.|


