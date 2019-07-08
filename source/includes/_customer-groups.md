## Customer Groups

### <span class='get'>GET</span> /customer-groups

This endpoint allows you to fetch a collection of all customer groups.

#### Schema name

[customer-groups.get.schema.json](https://restapi.e-conomic.com/schema/customer-groups.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

account.self, layout.self, self

#### Filterable properties

account.accountNumber, account.accountType, account.balance, account.blockDirectEntries, account.debitCredit, account.name, customerGroupNumber, name

#### Sortable properties

account.accountNumber, account.accountType, account.balance, account.blockDirectEntries, account.debitCredit, account.name, customerGroupNumber, name


#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| account| object| | | | The account used by the accruals.|
| account<wbr>.accountNumber| integer| | | | The account number.|
| account<wbr>.accountType| Enum| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| account<wbr>.accountingYears| string| uri| | | A unique reference to the accounting years for this account.|
| account<wbr>.balance| number| | | | The current balance of the account.|
| account<wbr>.blockDirectEntries| boolean| | | | Determines if the account can be manually updated with entries.|
| account<wbr>.debitCredit| Enum| | | debit<wbr>, credit| Describes the default update type of the account.|
| account<wbr>.name| string| | 125| | The name of the account.|
| account<wbr>.self| string| uri| | | A unique reference to the account resource.|
| customerGroupNumber| integer| | | | The customer group number.|
| customers| string| uri| | | The unique self reference of the customers belonging to this customer group.|
| layout| object| | | | The default layout used by the customer group.|
| layout<wbr>.deleted| boolean| | | | If true this indicates that the layout is deleted and can't be used anymore.|
| layout<wbr>.layoutNumber| integer| | | | The layout number.|
| layout<wbr>.name| string| | 100| | The name of the layout.|
| layout<wbr>.self| string| uri| | | A unique reference to the layout resource.|
| name| string| | 50| | The name of the customer group.|
| self| string| uri| | | The unique self reference of the customer group.|



### <span class='get'>GET</span> /customer-groups/:customerGroupNumber

This endpoint allows you to fetch a specific customer group.

#### Schema name

[customer-groups.customerGroupNumber.get.schema.json](https://restapi.e-conomic.com/schema/customer-groups.customerGroupNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

account.self, layout.self, self

#### Filterable properties

account.accountNumber, account.accountType, account.balance, account.blockDirectEntries, account.debitCredit, account.name, customerGroupNumber, name

#### Sortable properties

account.accountNumber, account.accountType, account.balance, account.blockDirectEntries, account.debitCredit, account.name, customerGroupNumber, name


#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| account| object| | | | The account used by the accruals.|
| account<wbr>.accountNumber| integer| | | | The account number.|
| account<wbr>.accountType| Enum| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| account<wbr>.accountingYears| string| uri| | | A unique reference to the accounting years for this account.|
| account<wbr>.balance| number| | | | The current balance of the account.|
| account<wbr>.blockDirectEntries| boolean| | | | Determines if the account can be manually updated with entries.|
| account<wbr>.debitCredit| Enum| | | debit<wbr>, credit| Describes the default update type of the account.|
| account<wbr>.name| string| | 125| | The name of the account.|
| account<wbr>.self| string| uri| | | A unique reference to the account resource.|
| customerGroupNumber| integer| | | | The customer group number.|
| customers| string| uri| | | The unique self reference of the customers belonging to this customer group.|
| layout| object| | | | The default layout used by the customer group.|
| layout<wbr>.deleted| boolean| | | | If true this indicates that the layout is deleted and can't be used anymore.|
| layout<wbr>.layoutNumber| integer| | | | The layout number.|
| layout<wbr>.name| string| | 100| | The name of the layout.|
| layout<wbr>.self| string| uri| | | A unique reference to the layout resource.|
| name| string| | 50| | The name of the customer group.|
| self| string| uri| | | The unique self reference of the customer group.|



### <span class='get'>GET</span> /customer-groups/:customerGroupNumber/customers

This endpoint allows you to fetch a collection of all customers in a specific customer group.

#### Schema name

[customer-groups.customerGroupNumber.customers.get.schema.json](https://restapi.e-conomic.com/schema/customer-groups.customerGroupNumber.customers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

attention.self, currency, customerContact.self, customerGroup, customerGroup.self, layout.self, name, paymentTerms, paymentTerms.self, salesPerson.self, self, vatZone, vatZone.self




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
| corporateIdentificationNumber| string| | | 40| | | | Company Identification Number. For example CVR in Denmark.|
| country| string| | | 50| | | | The customer's country.|
| creditLimit| number| | | | | | | A maximum credit for this customer. Once the maximum is reached or passed in connection with an order/quotation/invoice for this customer you see a warning in e-conomic.|
| currency| string| | | 3| 3| | | Default payment currency.|
| customerContact| object| | | | | | | Reference to main contact employee at customer.|
| customerContact<wbr>.customerContactNumber| integer| | | | | | | The unique identifier of the customer contact.|
| customerContact<wbr>.self| string| uri| | | | | | A unique link reference to the customer contact item.|
| customerGroup| object| | | | | | | In order to set up a new customer<wbr>, it is necessary to specify a customer group. It is useful to group a company’s customers (e.g.<wbr>, ‘domestic’ and ‘foreign’ customers) and to link the group members to the same account when generating reports.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| ean| string| | | 40| | | | European Article Number. EAN is used for invoicing the Danish public sector.|
| email| string| | | 255| | | | Customer e-mail address where e-conomic invoices should be emailed. Note: you can specify multiple email addresses in this field<wbr>, separated by a space. If you need to send a copy of the invoice or write to other e-mail addresses<wbr>, you can also create one or more customer contacts.|
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
| vatNumber| string| | | 50| | | | The customer's value added tax identification number. This field is only available to agreements in Sweden<wbr>, UK<wbr>, Germany<wbr>, Poland and Finland. Not to be mistaken for the danish CVR number<wbr>, which is defined on the ciNucorporateIdentificationNumber property.|
| vatZone| object| | | | | | | Indicates in which VAT-zone the customer is located (e.g.: domestically<wbr>, in Europe or elsewhere abroad).|
| vatZone<wbr>.self| string| uri| | | | | | A unique link reference to the VAT-zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | | The unique identifier of the VAT-zone.|
| website| string| | | 255| | | | Customer website<wbr>, if applicable.|
| zip| string| | | 30| | | | The customer's postcode.|



### <span class='post'>POST</span> /customer-groups

This endpoint allows you to create a new customer group.

#### Schema name

[customer-groups.post.schema.json](https://restapi.e-conomic.com/schema/customer-groups.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

account.accountNumber, customerGroupNumber




#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| account| object| | | | The account used by the accruals.|
| account<wbr>.accountNumber| integer| | | 1| The account number.|
| account<wbr>.self| string| uri| | | A unique reference to the account resource.|
| customerGroupNumber| integer| | | 1| The customer group number.|
| layout| object| | | | The default layout used by the customer group.|
| layout<wbr>.layoutNumber| integer| | | | The layout number.|
| layout<wbr>.self| string| uri| | | A unique reference to the layout resource.|
| name| string| | 50| | The name of the customer group.|



### <span class='put'>PUT</span> /customer-groups/:customerGroupNumber

This endpoint allows you to update an existing customer group.

#### Schema name

[customer-groups.customergroupnumber.put.schema.json](https://restapi.e-conomic.com/schema/customer-groups.customergroupnumber.put.schema.json)

#### Return type

This method returns a single object




#### Properties

| Name | Type | Format | Read-only | Max length | Description |
| ---- | ---- | ------ | --------- | ---------- | ----------- |
| account| object| | | | The account used by the accruals.|
| account<wbr>.accountNumber| integer| | | | The account number.|
| account<wbr>.self| string| uri| | | A unique reference to the account resource.|
| customerGroupNumber| integer| | True| | The customer group number.|
| layout| object| | | | The default layout used by the customer group.|
| layout<wbr>.layoutNumber| integer| | | | The layout number.|
| layout<wbr>.self| string| uri| | | A unique reference to the layout resource.|
| name| string| | | 50| The name of the customer group.|



### <span class='delete'>DELETE</span> /customer-groups/:customerGroupNumber

This endpoint allows you to delete an existing customer group. It will return HttpStatusCode.NoContent (204) on success.
