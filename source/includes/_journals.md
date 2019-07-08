## Journals

<aside class="warning">
This endpoint is experimental and subject to change
</aside>

Journals contain your draft transactions, that can be modified until the journal is booked or the drafts are deleted. Journals are known as Kassekladder in Danish.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/regnskab/kassekladder-daglig](http://wiki2.e-conomic.dk/regnskab/kassekladder-daglig).


### <span class='get'>GET</span> /journals-experimental

This is the root endpoint for the journals endpoint. It provides you with an overview of available journals on the agreement.
It also includes convenience links to a few templates that allow you to create entries in the journal with ease.

#### Schema name

[journals-experimental.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

self, settings.contraAccounts.customerPayments.self, settings.contraAccounts.financeVouchers.self, settings.contraAccounts.supplierPayments.self, templates.self

#### Filterable properties

journalNumber, name

#### Sortable properties

journalNumber, name


#### Properties

| Name | Type | Format | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | --------- | ------ | ----------- |
| entries| string| uri| | | | A link to the collection of entries in the given journal<wbr>, regardless of their type.|
| journalNumber| integer| | | | | Unique journal number|
| metaData| object| | | | | Information about possible actions<wbr>, endpoints and resource paths related to the endpoint.|
| name| string| | | | | The name of the journal|
| pagination| object| | | | | Information about the pagination.|
| self| string| uri| | | | The unique self reference of the jounrnals collection.|
| settings| object| | | | | Settings of the journal.|
| settings<wbr>.contraAccounts| object| | | | | Default contra account for given entry type|
| settings<wbr>.contraAccounts<wbr>.customerPayments| object| | | | | Default contra account for the customer payment|
| settings<wbr>.contraAccounts<wbr>.customerPayments<wbr>.accountNumber| integer| | | | | Account number used for registering customer payment entry type|
| settings<wbr>.contraAccounts<wbr>.customerPayments<wbr>.self| string| uri| | | | The unique self reference of the account resource.|
| settings<wbr>.contraAccounts<wbr>.financeVouchers| object| | | | | Default contra account for the finance voucher|
| settings<wbr>.contraAccounts<wbr>.financeVouchers<wbr>.accountNumber| integer| | | | | Account number used for registering finance voucher entry type|
| settings<wbr>.contraAccounts<wbr>.financeVouchers<wbr>.self| string| uri| | | | The unique self reference of the account resource.|
| settings<wbr>.contraAccounts<wbr>.supplierPayments| object| | | | | Default contra account for the supplier payment|
| settings<wbr>.contraAccounts<wbr>.supplierPayments<wbr>.accountNumber| integer| | | | | Account number used for registering supplier payment entry type|
| settings<wbr>.contraAccounts<wbr>.supplierPayments<wbr>.self| string| uri| | | | The unique self reference of the account resource.|
| settings<wbr>.entryTypeRestrictedTo| Enum| | | | financeVoucher<wbr>, supplierInvoice<wbr>, supplierPayment<wbr>, customerPayment<wbr>, manualCustomerInvoice| Allowed entry type on given journal.|
| settings<wbr>.voucherNumbers| object| | | | | Settings connected with voucher numbering.|
| settings<wbr>.voucherNumbers<wbr>.maximumVoucherNumber| integer| | 999999999| | | Maximum voucher number defined in settings.|
| settings<wbr>.voucherNumbers<wbr>.minimumVoucherNumber| integer| | | 0| | Minimum voucher number defined in settings.|
| templates| object| | | | | Templates allowing easy entry creation.|
| templates<wbr>.financeVoucher| string| uri| | | | The unique reference to the finance voucher template|
| templates<wbr>.manualCustomerInvoice| string| uri| | | | The unique reference to the manual customer invoice template|
| templates<wbr>.self| string| uri| | | | A unique link reference to the templates resource.|
| vouchers| string| uri| | | | A link to the collection of vouchers on the given journal<wbr>, categorized according to the type.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber

This endpoint provides you the information regarding a specific journal and the settings associated with it.
From here you can navigate to the entries endpoint - which will return the entire collection of entries across all types in the journal, or to the vouchers endpoint which will return entries grouped by the voucher number set on the entry.
The journal also includes convenience links to relevant templates that allow you to create entries in the journal with ease.

#### Schema name

[journals-experimental.journalNumber.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

self, settings.contraAccounts.customerPayments.self, settings.contraAccounts.financeVouchers.self, settings.contraAccounts.supplierPayments.self, templates.self

#### Filterable properties

journalNumber, name

#### Sortable properties

journalNumber, name


#### Properties

| Name | Type | Format | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ------ | ----------- |
| entries| string| uri| | | A link to the collection of entries on the given journal<wbr>, regardless of their type.|
| journalNumber| integer| | | | Unique journal number|
| name| string| | | | The name of the journal|
| self| string| uri| | | The unique self reference of the jounrnals collection.|
| settings| object| | | | Settings of the journal.|
| settings<wbr>.contraAccounts| object| | | | Default contra account for given entry type|
| settings<wbr>.contraAccounts<wbr>.customerPayments| | | | | Default contra account for the customer payment|
| settings<wbr>.contraAccounts<wbr>.customerPayments<wbr>.accountNumber| integer| | | | Account number used for registering customer payment entry type|
| settings<wbr>.contraAccounts<wbr>.customerPayments<wbr>.self| string| uri| | | The unique self reference of the account resource.|
| settings<wbr>.contraAccounts<wbr>.financeVouchers| | | | | Default contra account for the finance voucher|
| settings<wbr>.contraAccounts<wbr>.financeVouchers<wbr>.accountNumber| integer| | | | Account number used for registering finance voucher entry type|
| settings<wbr>.contraAccounts<wbr>.financeVouchers<wbr>.self| string| uri| | | The unique self reference of the account resource.|
| settings<wbr>.contraAccounts<wbr>.supplierPayments| | | | | Default contra account for the supplier payment|
| settings<wbr>.contraAccounts<wbr>.supplierPayments<wbr>.accountNumber| integer| | | | Account number used for registering supplier payment entry type|
| settings<wbr>.contraAccounts<wbr>.supplierPayments<wbr>.self| string| uri| | | The unique self reference of the account resource.|
| settings<wbr>.entryTypeRestrictedTo| Enum| | | financeVoucher<wbr>, supplierInvoice<wbr>, supplierPayment<wbr>, customerPayment<wbr>, manualCustomerInvoice| Allowed entry type on given journal.|
| settings<wbr>.voucherNumbers| object| | | | Settings connected with voucher numbering.|
| settings<wbr>.voucherNumbers<wbr>.maximumVoucherNumber| integer| | 999999999| | Maximum voucher number defined in settings.|
| settings<wbr>.voucherNumbers<wbr>.minimumVoucherNumber| integer| | 0| | Minimum voucher number defined in settings.|
| templates| object| | | | Templates allowing easy entry creation.|
| templates<wbr>.financeVoucher| string| uri| | | The unique reference to the finance voucher template|
| templates<wbr>.manualCustomerInvoice| string| uri| | | The unique reference to the manual customer invoice template|
| templates<wbr>.self| string| uri| | | A unique link reference to the templates resource.|
| vouchers| string| uri| | | A link to the collection of vouchers on the given journal<wbr>, categorized according to the type.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers

This endpoint returns a collection of vouchers containing entries as assigned by the voucher number. 

#### Schema name

[journals-experimental.journalNumber.vouchers.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.vouchers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self




#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| accountingYear| object| | | | | | | The accounting year the voucher belongs to. Together with the voucherNumber it is a unique identifier for the voucher.|
| accountingYear<wbr>.self| string| uri| | | | | | A unique reference to the accounting year resource.|
| accountingYear<wbr>.year| string| | | | | | | A unique identifier of the accounting year.|
| entries| object| | | | | | | Entries<wbr>, separated by type<wbr>, for the journal.|
| entries<wbr>.customerPayments| array| | | | | | | An array containing customer payments.|
| entries<wbr>.customerPayments<wbr>.amount| number|
| entries<wbr>.customerPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.customerPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.customerPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.customerPayments<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.customerPayments<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.customerPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.customerPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.customerPayments<wbr>.entryType| Enum| | | | | | customerPayment| Type of the journal entry. This is automatically set to customerPayment.|
| entries<wbr>.customerPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.customerPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.customerPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.customerPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.customerPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.customerPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.financeVouchers| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.financeVouchers<wbr>.account| object| | | | | | | The account used by the entry.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.amount| number|
| entries<wbr>.financeVouchers<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.financeVouchers<wbr>.contraAccount| object| | | | | | | The account used for the funds.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.financeVouchers<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.financeVouchers<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.financeVouchers<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.financeVouchers<wbr>.entryType| Enum| | | | | | financeVoucher| Type of the journal entry. This is automatically set to financeVoucher.|
| entries<wbr>.financeVouchers<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.financeVouchers<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.financeVouchers<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.financeVouchers<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.financeVouchers<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.financeVouchers<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.financeVouchers<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.vatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the vatAccount item.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the vat account.|
| entries<wbr>.financeVouchers<wbr>.vatAmount| number| | | | | | | The amount of VAT on the entry. Used if the entry has a VAT account.|
| entries<wbr>.financeVouchers<wbr>.vatAmountBaseCurrency| number| | | | | | | The amount of VAT on the voucher in base currency.|
| entries<wbr>.financeVouchers<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.manualCustomerInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.manualCustomerInvoices<wbr>.amount| number|
| entries<wbr>.manualCustomerInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.manualCustomerInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.manualCustomerInvoices<wbr>.entryType| Enum| | | | | | manualCustomerInvoice| Type of the journal entry. This is automatically set to manualCustomerInvoice.|
| entries<wbr>.manualCustomerInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.supplierInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierInvoices<wbr>.amount| number|
| entries<wbr>.supplierInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierInvoices<wbr>.entryType| Enum| | | | | | supplierInvoice| Type of the journal entry. This is automatically set to supplierInvoice.|
| entries<wbr>.supplierInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails| object| | | | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType| object| | | | | | | A specific payment type on the entry.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | 1| | The payment type number is a positive unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | | | A unique link reference to the payment type item.|
| entries<wbr>.supplierInvoices<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.supplierInvoices<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierInvoices<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierInvoices<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.supplierPayments| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierPayments<wbr>.amount| number|
| entries<wbr>.supplierPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierPayments<wbr>.entryType| Enum| | | | | | supplierPayment| Type of the journal entry. This is automatically set to supplierPayment.|
| entries<wbr>.supplierPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierPayments<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierPayments<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| journal| object| | | | | | | The journal the voucher belongs to.|
| journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| self| string| uri| | | | | | The unique self reference of the voucher collection.|
| voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1. Together with the accountingYear it is a unique identifier for the voucher.|



### <span class='post'>POST</span> /journals-experimental/:journalNumber/vouchers

```javascript
var settings = {
  "crossDomain": true,
  "url": "https://restapi.e-conomic.com/journals-experimental/1/vouchers",
  "method": "POST",
  "headers": {
    "x-appsecrettoken": "demo",
    "x-agreementgranttoken": "demo",
    "content-type": "application/json",
  },
  "data": {
		'accountingYear': {
			'year': '2017'
		},
		'journal': {
			'journalNumber': 1,
			'self': 'https://restapi.e-conomic.com/journals-experimental/1'
		},
		'entries': {
			'supplierInvoices': [{
				'supplier': {
					'supplierNumber': 3,
					'self': 'https://restapi.e-conomic.com/suppliers/3'
				},
				'amount': 100,
				'account': {
					'accountNumber': 1010,
					'self': 'https://restapi.e-conomic.com/accounts/1010'
				},
				'contraAccount': {
					'accountNumber': 5820,
					'self': 'https://restapi.e-conomic.com/accounts/5820'
				},
				'currency': {
					'code': 'DKK',
					'self': 'https://restapi.e-conomic.com/currencies/DKK'
				},
				'date': '2017-05-03',
				'type': 'supplierInvoice',
				'self': 'https://restapi.e-conomic.com/journals-experimental/1/entries/373'
			}],
			'supplierPayments': [{
				'supplier': {
					'supplierNumber': 3,
					'self': 'https://restapi.e-conomic.com/suppliers/3'
				},
				'supplierInvoiceNumber': '123',
				'text': 'TEST',
				'amount': 100,
				'account': {
					'accountNumber': 1010,
					'self': 'https://restapi.e-conomic.com/accounts/1010'
				},
				'contraAccount': {
					'accountNumber': 5820,
					'self': 'https://restapi.e-conomic.com/accounts/5820'
				},
				'currency': {
					'code': 'DKK',
					'self': 'https://restapi.e-conomic.com/currencies/DKK'
				},
				'date': '2017-05-03',
				'type': 'supplierPayment',
				'self': 'https://restapi.e-conomic.com/journals-experimental/1/entries/373'
			}],
			'customerPayments': [{
				'customer': {
					'customerNumber': 2,
					'self': 'https://restapi.e-conomic.com/customers/2'
				},
				'text': 'Test this invoice',
				'amount': 100,
				'account': {
					'accountNumber': 1010,
					'self': 'https://restapi.e-conomic.com/accounts/1010'
				},
				'contraAccount': {
					'accountNumber': 5820,
					'self': 'https://restapi.e-conomic.com/accounts/5820'
				},
				'currency': {
					'code': 'DKK',
					'self': 'https://restapi.e-conomic.com/currencies/DKK'
				},
				'date': '2017-05-03',
				'type': 'customerPayment',
				'self': 'https://restapi.e-conomic.com/journals-experimental/1/entries/373'
			}],
			'manualCustomerInvoices': [{
				'customer': {
					'customerNumber': 2,
					'self': 'https://restapi.e-conomic.com/customers/2'
				},
				'customerInvoiceNumber': '123',
				'text': 'Test this invoice',
				'amount': 100,
				'account': {
					'accountNumber': 1010,
					'self': 'https://restapi.e-conomic.com/accounts/1010'
				},
				'contraAccount': {
					'accountNumber': 5820,
					'self': 'https://restapi.e-conomic.com/accounts/5820'
				},
				'currency': {
					'code': 'DKK',
					'self': 'https://restapi.e-conomic.com/currencies/DKK'
				},
				'date': '2017-05-03',
				'type': 'customerPayment',
				'self': 'https://restapi.e-conomic.com/journals-experimental/1/entries/373'
			}]
		}
	}
  }

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

This endpoint enables creation of vouchers and thereby entries on the journal, regardless of the type. Bulk creation is supported.  

#### Schema name

[journals-experimental.journalNumber.vouchers.post.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.vouchers.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

accountingYear, entries.customerPayments.amount, entries.customerPayments.date, entries.financeVouchers.amount, entries.financeVouchers.date, entries.manualCustomerInvoices.amount, entries.manualCustomerInvoices.date, entries.supplierInvoices.amount, entries.supplierInvoices.date, entries.supplierPayments.amount, entries.supplierPayments.date




#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| accountingYear| object| | | | | | | The accounting year the voucher belongs to. Together with the voucherNumber it is a unique identifier for the voucher.|
| accountingYear<wbr>.self| string| uri| | | | | | A unique reference to the accounting year resource.|
| accountingYear<wbr>.year| string| | | | | | | A unique identifier of the accounting year.|
| entries| object| | | | | | | Entries<wbr>, separated by type<wbr>, for the journal.|
| entries<wbr>.customerPayments| array| | | | | | | An array containing customer payments.|
| entries<wbr>.customerPayments<wbr>.amount| number| | | | | | | Defining whether it is a debit or credit can be done by prefixing the amount with the '-' (minus) sign.|
| entries<wbr>.customerPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.customerPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.customerPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.customerPayments<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.customerPayments<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.customerPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.customerPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.customerPayments<wbr>.entryType| Enum| | | | | | customerPayment| Type of the journal entry. This is automatically set to customerPayment.|
| entries<wbr>.customerPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.customerPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.customerPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.customerPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.customerPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.customerPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999.|
| entries<wbr>.financeVouchers| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.financeVouchers<wbr>.account| object| | | | | | | The account used by the entry.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.amount| number|
| entries<wbr>.financeVouchers<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.financeVouchers<wbr>.contraAccount| object| | | | | | | The account used for the funds.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.financeVouchers<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.financeVouchers<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.financeVouchers<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.financeVouchers<wbr>.entryType| Enum| | | | | | financeVoucher| Type of the journal entry. This is automatically set to financeVoucher.|
| entries<wbr>.financeVouchers<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.financeVouchers<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.financeVouchers<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.financeVouchers<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.financeVouchers<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.financeVouchers<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.financeVouchers<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.vatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the vatAccount item.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the vat account.|
| entries<wbr>.financeVouchers<wbr>.vatAmount| number| | | | | | | The amount of VAT on the entry. Used if the entry has a VAT account.|
| entries<wbr>.financeVouchers<wbr>.vatAmountBaseCurrency| number| | | | | | | The amount of VAT on the voucher in base currency.|
| entries<wbr>.financeVouchers<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999.|
| entries<wbr>.manualCustomerInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.manualCustomerInvoices<wbr>.amount| number|
| entries<wbr>.manualCustomerInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.manualCustomerInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.manualCustomerInvoices<wbr>.entryType| Enum| | | | | | manualCustomerInvoice| Type of the journal entry. This is automatically set to manualCustomerInvoice.|
| entries<wbr>.manualCustomerInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999.|
| entries<wbr>.supplierInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierInvoices<wbr>.amount| number|
| entries<wbr>.supplierInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierInvoices<wbr>.entryType| Enum| | | | | | supplierInvoice| Type of the journal entry. This is automatically set to supplierInvoice.|
| entries<wbr>.supplierInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails| object| | | | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType| object| | | | | | | A specific payment type on the entry.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | 1| | The payment type number is a positive unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | | | A unique link reference to the payment type item.|
| entries<wbr>.supplierInvoices<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.supplierInvoices<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierInvoices<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierInvoices<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999.|
| entries<wbr>.supplierPayments| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierPayments<wbr>.amount| number|
| entries<wbr>.supplierPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierPayments<wbr>.entryType| Enum| | | | | | supplierPayment| Type of the journal entry. This is automatically set to supplierPayment.|
| entries<wbr>.supplierPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierPayments<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierPayments<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999.|
| journal| object| | | | | | | The journal the voucher belongs to.|
| journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| voucherNumber| number| | | | 999999999| 1| | Journal voucher number must be between 1-999999999. Together with the accountingYear it is a unique identifier for the voucher.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber

Provides detailed information regarding a specific entry that is located on the given voucher.

#### Schema name

[journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

accountingYear.self, entries.customerPayments.contraAccount.self, entries.customerPayments.contraVatAccount.self, entries.customerPayments.currency.self, entries.customerPayments.customer.self, entries.customerPayments.employee.self, entries.customerPayments.journal.self, entries.customerPayments.voucher.self, entries.financeVouchers.account.self, entries.financeVouchers.contraAccount.self, entries.financeVouchers.contraVatAccount.self, entries.financeVouchers.currency.self, entries.financeVouchers.employee.self, entries.financeVouchers.journal.self, entries.financeVouchers.project.self, entries.financeVouchers.vatAccount.self, entries.financeVouchers.voucher.self, entries.manualCustomerInvoices.contraAccount.self, entries.manualCustomerInvoices.contraVatAccount.self, entries.manualCustomerInvoices.currency.self, entries.manualCustomerInvoices.customer.self, entries.manualCustomerInvoices.employee.self, entries.manualCustomerInvoices.journal.self, entries.manualCustomerInvoices.voucher.self, entries.supplierInvoices.contraAccount.self, entries.supplierInvoices.contraVatAccount.self, entries.supplierInvoices.currency.self, entries.supplierInvoices.employee.self, entries.supplierInvoices.journal.self, entries.supplierInvoices.paymentDetails.paymentType.self, entries.supplierInvoices.project.self, entries.supplierInvoices.supplier.self, entries.supplierInvoices.voucher.self, entries.supplierPayments.contraAccount.self, entries.supplierPayments.contraVatAccount.self, entries.supplierPayments.currency.self, entries.supplierPayments.employee.self, entries.supplierPayments.journal.self, entries.supplierPayments.supplier.self, entries.supplierPayments.voucher.self, journal.self, self




#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| accountingYear| object| | | | | | | The accounting year the voucher belongs to. Together with the voucherNumber it is a unique identifier for the voucher.|
| accountingYear<wbr>.self| string| uri| | | | | | A unique reference to the accounting year resource.|
| accountingYear<wbr>.year| string| | | | | | | A unique identifier of the accounting year.|
| attachment| string| uri| | | | | | A unique reference to the attachment file on the given voucher.|
| entries| object| | | | | | | Entries<wbr>, separated by type<wbr>, for the journal.|
| entries<wbr>.customerPayments| array| | | | | | | An array containing customer payments.|
| entries<wbr>.customerPayments<wbr>.amount| number|
| entries<wbr>.customerPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.customerPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.customerPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.customerPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.customerPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.customerPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.customerPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.customerPayments<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.customerPayments<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.customerPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.customerPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.customerPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.customerPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.customerPayments<wbr>.entryType| Enum| | | | | | customerPayment| Type of the journal entry. This is automatically set to customerPayment.|
| entries<wbr>.customerPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.customerPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.customerPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.customerPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.customerPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.customerPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.customerPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.customerPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.financeVouchers| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.financeVouchers<wbr>.account| object| | | | | | | The account used by the entry.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.account<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.amount| number|
| entries<wbr>.financeVouchers<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.financeVouchers<wbr>.contraAccount| object| | | | | | | The account used for the funds.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.financeVouchers<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.financeVouchers<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.financeVouchers<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.financeVouchers<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.financeVouchers<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.financeVouchers<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.financeVouchers<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.financeVouchers<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.financeVouchers<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.financeVouchers<wbr>.entryType| Enum| | | | | | financeVoucher| Type of the journal entry. This is automatically set to financeVoucher.|
| entries<wbr>.financeVouchers<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.financeVouchers<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.financeVouchers<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.financeVouchers<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.financeVouchers<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.financeVouchers<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.financeVouchers<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.financeVouchers<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.financeVouchers<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.financeVouchers<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.financeVouchers<wbr>.vatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the vatAccount item.|
| entries<wbr>.financeVouchers<wbr>.vatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the vat account.|
| entries<wbr>.financeVouchers<wbr>.vatAmount| number| | | | | | | The amount of VAT on the entry. Used if the entry has a VAT account.|
| entries<wbr>.financeVouchers<wbr>.vatAmountBaseCurrency| number| | | | | | | The amount of VAT on the voucher in base currency.|
| entries<wbr>.financeVouchers<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.financeVouchers<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.manualCustomerInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.manualCustomerInvoices<wbr>.amount| number|
| entries<wbr>.manualCustomerInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.manualCustomerInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.manualCustomerInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.customerInvoice| integer| | | | | 1| | Customer invoice number.|
| entries<wbr>.manualCustomerInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.manualCustomerInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.manualCustomerInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.manualCustomerInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.manualCustomerInvoices<wbr>.entryType| Enum| | | | | | manualCustomerInvoice| Type of the journal entry. This is automatically set to manualCustomerInvoice.|
| entries<wbr>.manualCustomerInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.manualCustomerInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.manualCustomerInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.manualCustomerInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.manualCustomerInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.supplierInvoices| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierInvoices<wbr>.amount| number|
| entries<wbr>.supplierInvoices<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierInvoices<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierInvoices<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierInvoices<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierInvoices<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierInvoices<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierInvoices<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierInvoices<wbr>.dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierInvoices<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierInvoices<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierInvoices<wbr>.entryType| Enum| | | | | | supplierInvoice| Type of the journal entry. This is automatically set to supplierInvoice.|
| entries<wbr>.supplierInvoices<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierInvoices<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierInvoices<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails| object| | | | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType| object| | | | | | | A specific payment type on the entry.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | 1| | The payment type number is a positive unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | | | A unique link reference to the payment type item.|
| entries<wbr>.supplierInvoices<wbr>.project| object| | | | | | | The project the entry is connected to.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| entries<wbr>.supplierInvoices<wbr>.project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| entries<wbr>.supplierInvoices<wbr>.quantity1| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.quantity2| number| | | | | | | Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierInvoices<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierInvoices<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierInvoices<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierInvoices<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierInvoices<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierInvoices<wbr>.unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| entries<wbr>.supplierInvoices<wbr>.unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| entries<wbr>.supplierInvoices<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierInvoices<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| entries<wbr>.supplierPayments| array| | | | | | | An array containing finance vouchers.|
| entries<wbr>.supplierPayments<wbr>.amount| number|
| entries<wbr>.supplierPayments<wbr>.amountBaseCurrency| number| | | | | | | The amount in base currency.|
| entries<wbr>.supplierPayments<wbr>.contraAccount| object| | | | | | | The account used for the funds. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| entries<wbr>.supplierPayments<wbr>.contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount| object| | | | | | | The account for VAT.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| entries<wbr>.supplierPayments<wbr>.contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| entries<wbr>.supplierPayments<wbr>.contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| entries<wbr>.supplierPayments<wbr>.currency| object| | | | | | | The currency for the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| entries<wbr>.supplierPayments<wbr>.currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| entries<wbr>.supplierPayments<wbr>.date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| entries<wbr>.supplierPayments<wbr>.departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| entries<wbr>.supplierPayments<wbr>.employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| entries<wbr>.supplierPayments<wbr>.employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entries<wbr>.supplierPayments<wbr>.entryType| Enum| | | | | | supplierPayment| Type of the journal entry. This is automatically set to supplierPayment.|
| entries<wbr>.supplierPayments<wbr>.exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| entries<wbr>.supplierPayments<wbr>.journal| object| | | | | | | The journal the voucher belongs to.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| entries<wbr>.supplierPayments<wbr>.journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| entries<wbr>.supplierPayments<wbr>.remainder| number| | True| | | | | Remaining amount to be paid.|
| entries<wbr>.supplierPayments<wbr>.remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| entries<wbr>.supplierPayments<wbr>.supplier| object| | | | | | | The supplier is the vendor from whom you buy your goods. Either 'supplier' or 'contraAccount' is required.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.self| string| uri| | | | | | A unique self reference of the supplier.|
| entries<wbr>.supplierPayments<wbr>.supplier<wbr>.supplierNumber| integer| | | | | | | The supplier number is a unique numerical identifier.|
| entries<wbr>.supplierPayments<wbr>.supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| entries<wbr>.supplierPayments<wbr>.text| string| | | 250| | | | Entry description.|
| entries<wbr>.supplierPayments<wbr>.voucher| object| | | | | | | Voucher that the entry belongs to.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| entries<wbr>.supplierPayments<wbr>.voucher<wbr>.voucherNumber| number| | | | | 1| | Journal voucher number that must be at least 1.|
| journal| object| | | | | | | The journal the voucher belongs to.|
| journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| self| string| uri| | | | | | A unique reference to the specific voucher.|
| voucherNumber| number| | | | | 1| | Voucher number|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment

Provides file attachment metadata. E.g. number of pages available on the document.

#### Schema name

[journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.attachment.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.attachment.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| createdAt| string| full-date| Date when file has been assigned with the voucher.|
| description| string| | Note on the attachment.|
| file| string| uri| A unique link reference to the file attachment.|
| pages| integer| | Amount of pages associated as attachment with the given voucher.|
| self| string| uri| A unique link reference to the attachment meta data.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment/file

Returns the file attachment for the given voucher. File is always returned as .pdf. 

### <span class='post'>POST</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment/file

```javascript
var form = new FormData();
form.append("", "/path/to/the/file.png");

var settings = {
  "crossDomain": true,
  "url": "https://restapi.e-conomic.com/journals-experimental/1/vouchers/2017-1/attachment/file",
  "method": "POST",
  "headers": {
    "x-appsecrettoken": "demo",
    "x-agreementgranttoken": "demo",
    "cache-control": "no-cache"
  },
  "processData": false,
  "mimeType": "multipart/form-data",
  "data": form
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

Allows attaching a document to the voucher. Supported formats are: .jpg, .jpeg, .pdf, .gif and .png. Please note that for the file upload “application/json” is not a valid content-type. Upload of binary data requires the content-type header to be "multipart/form-data”. Some clients do not automatically set boundaries on the multipart/form-data and for these you will need to define “multipart/form-data; boundary= ;” where boundary defines the file part of the multipart stream.
Maximum file size is 9.0 MB per request. 
 
A C# example using the httpWebClient can be found <a href="https://github.com/e-conomic/eco-api-ex/tree/master/examples/REST/VoucherAttachmentUpload" target="_blank">here</a>

### <span class='patch'>PATCH</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment/file

Allows you to add more pages to the file, that is associated with the voucher. In case a file is not already present, it will be created (as with the POST operation). Please refer to POST documentation for the implementation details. 
Maximum file size is 9.0 MB per request. 

### <span class='delete'>DELETE</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment/file

Removes the entire file that is associated with the given voucher.

### <span class='get'>GET</span> /journals-experimental/:journalNumber/entries

Returns a collection of all entries in the journal, sorted by entry type.

#### Schema name

[journals-experimental.journalNumber.entries.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.entries.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

account.self, contraAccount.self, contraVatAccount.self, currency.self, customer.self, employee.self, journal.self, paymentDetails.paymentType.self, self, supplier.self, voucher.accountingYear.self, voucher.self

#### Filterable properties

amount, amountDefaultCurrency, contraAccount.accountNumber, contraVatAccount.vatCode, contraVatAmount, currency.code, date, employee.employeeNumber, entryType, exchangeRate, journalEntryNumber, text, voucher.voucherNumber

#### Sortable properties

amount, amountDefaultCurrency, contraAccount.accountNumber, contraVatAccount.vatCode, contraVatAmount, currency.code, date, employee.employeeNumber, entryType, exchangeRate, journalEntryNumber, text, voucher.voucherNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| account| object| | | | | | | The account used by the entry.|
| account<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| account<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| amount| number|
| amountDefaultCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| contraAccount| object| | | | | | | The account used for the funds. Either 'customer' or 'contraAccount' is required.|
| contraAccount<wbr>.accountNumber| integer| | | | | 1| | The account number.|
| contraAccount<wbr>.self| string| uri| | | | | | A unique reference to the account resource.|
| contraVatAccount| object| | | | | | | The account for VAT.|
| contraVatAccount<wbr>.self| string| uri| | | | | | A unique link reference to the contraVatAccount item.|
| contraVatAccount<wbr>.vatCode| string| | | 5| | | | The unique identifier of the contra vat account.|
| contraVatAmount| number| | | | | | | The amount of VAT on the entry on the contra account.|
| contraVatAmountInBaseCurrency| number| | | | | | | The amount of VAT on the entry on the contra account in base currency.|
| currency| object| | | | | | | The currency for the entry.|
| currency<wbr>.code| string| | | | | | | The ISO 4217 3-letter currency code of the entry.|
| currency<wbr>.self| string| uri| | | | | | A unique link reference to the currency item.|
| customer| object| | | | | | | The customer this entry is based on. Either 'customer' or 'contraAccount' is required.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| customerInvoice| integer| | | | | 1| | Customer invoice number.|
| date| string| full-date| | | | | | Entry date. Format according to ISO-8601 (YYYY-MM-DD).|
| departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| dueDate| string| full-date| | | | | | The date the entry is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| employee| object| | | | | | | Employee that this entry is related to. Requires Project module|
| employee<wbr>.employeeNumber| integer| | | | | 1| | A unique numerical identifier with a maximum of 9 digits.|
| employee<wbr>.self| string| uri| | | | | | A unique link reference to the employee item.|
| entryType| Enum| | | | | | financeVoucher<wbr>, supplierInvoice<wbr>, supplierPayment<wbr>, customerPayment<wbr>, manualCustomerInvoice| Entry type of the entry.|
| exchangeRate| number| | | | | | | The exchange rate between the base currency and the invoice currency.|
| journal| object| | | | | | | The journal the entry belongs to.|
| journal<wbr>.journalNumber| number| | | | | 1| | Journal number that must be at least 1.|
| journal<wbr>.self| string| uri| | | | | | A unique reference to the journal resource.|
| journalEntryNumber| integer| | | | | | | Unique journal number|
| paymentDetails| object| | | | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| paymentDetails<wbr>.paymentType| object| | | | | | | A specific payment type on the entry.|
| paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | | | 1| | The payment type number is a positive unique numerical identifier.|
| paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | | | A unique link reference to the payment type item.|
| quantity1| number| | | | | | | Requires dimension module.|
| quantity2| number| | | | | | | Requires dimension module.|
| remainder| number| | True| | | | | Remaining amount to be paid.|
| remainderInDefaultCurrency| number| | True| | | | | Remaining amount to be paid in default currency.|
| self| string| uri| | | | | | A unique link reference to the entry.|
| supplier| object| | | | | | | The supplier this entry is based on.|
| supplier<wbr>.self| string| uri| | | | | | A unique reference to the supplier resource.|
| supplier<wbr>.supplierNumber| integer| | | | 999999999| 1| | The supplier number is a positive unique numerical identifier with a maximum of 9 digits.|
| supplierInvoiceNumber| string| | | 30| | | | The unique identifier of the supplier invoice gotten from the supplier.|
| templates| object| | | | | | | Templates allowing easy entry creation<wbr>, its existance depends on the type of the entry.|
| templates<wbr>.account| string| uri| | | | | | The unique reference to the finance voucher template using account|
| templates<wbr>.accountAndContraAccount| string| uri| | | | | | The unique reference to the finance voucher template using account and contra account|
| templates<wbr>.contraAccount| string| uri| | | | | | The unique reference to the finance voucher template using contra account|
| templates<wbr>.customerPayment| string| uri| | | | | | The unique reference to the finance voucher template|
| text| string| | | | | | | Text on the entry|
| unit1| object| | | | | | | The first unit of measure applied to the entry. Requires dimension module.|
| unit1<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| unit1<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| unit2| object| | | | | | | The second unit of measure applied to the entry. Requires dimension module.|
| unit2<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| unit2<wbr>.unitNumber| integer| | | | | 0| | The unique identifier of the unit.|
| voucher| object| | | | | | | Voucher that the entry belongs to.|
| voucher<wbr>.accountingYear| object| | | | | | | The accounting year the voucher belongs to. Together with the voucherNumber it is a unique identifier for the voucher.|
| voucher<wbr>.accountingYear<wbr>.self| string| uri| | | | | | A unique reference to the accounting year resource.|
| voucher<wbr>.accountingYear<wbr>.year| string| | | | | | | A unique identifier of the accounting year.|
| voucher<wbr>.self| string| uri| | | | | | A unique link reference to the voucher item.|
| voucher<wbr>.voucherNumber| number| | | | 999999999| 1| | Journal voucher number that must be at least 1.|



### <span class='delete'>DELETE</span> /journals-experimental/:journalNumber/entries/:entryNumber

Removes an entry from the given journal.

### <span class='get'>GET</span> /journals-experimental/:journalNumber/templates

Returns the templates available for journal entries. Templates are used to simplifiy the resource creation that can be quite complex to build. Please note that templates return entry objects that must be wrapped in a voucher object and POSTed to /vouchers.

#### Schema name

[journals-experimental.journalNumber.templates.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.templates.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| financeVoucher| string| uri| The unique reference to the finance voucher template|
| manualCustomerInvoice| string| uri| The unique reference to the manual customer invoice template|
| self| string| uri| The unique self reference of the templates resource.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/templates/financeVoucher

```javascript
{
   "accountingYear": {
     "year": "2017"
   },
   "journal": {
     "journalNumber": 1
   },
   "entries": {
     "financeVouchers": [
        Template data goes here
     ]
   }
}
```

Returns a template that sets the boilerplate for a finance voucher entry. It can take account and contra account into consideration. Please note that in order to be able to POST it, the template data must be wrapped in a voucher object.

#### Schema name

[journals-experimental.journalNumber.templates.financeVoucher.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.templates.financeVoucher.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| account| string| uri| The unique reference to the finance voucher template using account|
| contraAccount| string| uri| The unique reference to the finance voucher template using contra account|
| self| string| uri| The unique self reference of the finance voucher template collection.|



### <span class='get'>GET</span> /journals-experimental/:journalNumber/templates/manualCustomerInvoice

```javascript
{
   "accountingYear": {
     "year": "2017"
   },
   "journal": {
     "journalNumber": 1
   },
   "entries": {
     "manualCustomerInvoices": [
        Template data goes here
     ]
   }
}
```

Returns a template that sets the boilerplate for a manual customer invoice. It can take account and contra account into consideration. Please note that in order to be able to POST it, the template data must be wrapped in a voucher object.

#### Schema name

[journals-experimental.journalNumber.templates.manualCustomerInvoice.get.schema.json](https://restapi.e-conomic.com/schema/journals-experimental.journalNumber.templates.manualCustomerInvoice.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, self




#### Properties

| Name | Type | Format | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | --------- | ----------- |
| customer| object| | | | Specific customer|
| customer<wbr>.customerNumber| integer| | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | A unique reference to the manual customer invoice with the specific customer resource.|
| metaData| object| | | | Information about possible actions<wbr>, endpoints and resource paths related to the endpoint.|
| pagination| object| | | | Information about the pagination.|
| self| string| uri| | | The unique self reference of the manual customer invoice template collection.|

