## Accounts 

Accounts are the records in the general ledger where companies record the monetary transactions 

### <span class='get'>GET</span> /accounts 

#### Schema name

[accounts.get.schema.json](https://restapi.e-conomic.com/schema/accounts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

accountsSummed.fromAccount.self, accountsSummed.toAccount.self, contraAccount.self, self, totalFromAccount.self, vatAccount.self

#### Filterable properties

accountNumber, accountType, balance, barred, blockDirectEntries, debitCredit, name

#### Sortable properties

accountNumber, accountType, balance, blockDirectEntries, debitCredit, name

#### Default sorting

     accountNumber : ascending


#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| accountNumber| integer| | | | The account's number.|
| accountType| Enum| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| accountingYears| string| uri| | | A link to a list of accounting years for which the account is usable.|
| accountsSummed| array| | | | An array of the account intervals used for calculating the total for this account.|
| accountsSummed<wbr>.fromAccount| object| | | | The first account in the interval.|
| accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | | | Account number of the first account in the interval.|
| accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| | | The unique self link of the first account in the interval.|
| accountsSummed<wbr>.toAccount| object| | | | The last account in the interval.|
| accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | | | Account number of the last account in the interval.|
| accountsSummed<wbr>.toAccount<wbr>.self| string| uri| | | The unique self link of the last account in the interval.|
| balance| number| | | | The current balanace of the account.|
| barred| boolean| | | | Shows if the account is barred from being used.|
| blockDirectEntries| boolean| | | | Determines if the account can be manually updated with entries.|
| contraAccount| object| | | | The default contra account of the account.|
| contraAccount<wbr>.accountNumber| integer| | | | Account number of the contra account.|
| contraAccount<wbr>.self| string| uri| | | The unique self link of the contra account.|
| debitCredit| Enum| | | debit<wbr>, credit| Describes the default update type of the account.|
| draftBalance| number| | | | The current balance of the account including draft (not yet booked) entries.|
| name| string| | 125| | The name of the account.|
| self| string| uri| | | A unique reference to the account resource.|
| totalFromAccount| object| | | | The account from which the sum total for this account is calculated.|
| totalFromAccount<wbr>.accountNumber| integer| | | | Account number of the first account.|
| totalFromAccount<wbr>.self| string| uri| | | The unique self link of the first account.|
| vatAccount| object|
| vatAccount<wbr>.self| string| uri| | | The unique self link of the VAT code.|
| vatAccount<wbr>.vatCode| string| | 5| | The VAT code of the VAT account for this account.|

 

### <span class='get'>GET</span> /accounts/:accountNumber 

#### Schema name

[accounts.accountNumber.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

accountsSummed.fromAccount.self, accountsSummed.toAccount.self, contraAccount.self, self, totalFromAccount.self, vatAccount.self

#### Filterable properties

accountNumber, accountType, balance, barred, blockDirectEntries, debitCredit, name

#### Sortable properties

accountNumber, accountType, balance, blockDirectEntries, debitCredit, name


#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| accountNumber| integer| | | | The account's number.|
| accountType| Enum| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| accountingYears| string| uri| | | A link to a list of accounting years for which the account is usable.|
| accountsSummed| array| | | | An array of the account intervals used for calculating the total for this account.|
| accountsSummed<wbr>.fromAccount| object| | | | The first account in the interval.|
| accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | | | Account number of the first account in the interval.|
| accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| | | The unique self link of the first account in the interval.|
| accountsSummed<wbr>.toAccount| object| | | | The last account in the interval.|
| accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | | | Account number of the last account in the interval.|
| accountsSummed<wbr>.toAccount<wbr>.self| string| uri| | | The unique self link of the last account in the interval.|
| balance| number| | | | The current balanace of the account.|
| barred| boolean| | | | Shows if the account is barred from being used.|
| blockDirectEntries| boolean| | | | Determines if the account can be manually updated with entries.|
| contraAccount| object| | | | The default contra account of the account.|
| contraAccount<wbr>.accountNumber| integer| | | | Account number of the contra account.|
| contraAccount<wbr>.self| string| uri| | | The unique self link of the contra account.|
| debitCredit| Enum| | | debit<wbr>, credit| Describes the default update type of the account.|
| draftBalance| number| | | | The current balance of the account including draft (not yet booked) entries.|
| name| string| | 125| | The name of the account.|
| self| string| uri| | | A unique reference to the account resource.|
| totalFromAccount| object| | | | The account from which the sum total for this account is calculated.|
| totalFromAccount<wbr>.accountNumber| integer| | | | Account number of the first account.|
| totalFromAccount<wbr>.self| string| uri| | | The unique self link of the first account.|
| vatAccount| object|
| vatAccount<wbr>.self| string| uri| | | The unique self link of the VAT code.|
| vatAccount<wbr>.vatCode| string| | 5| | The VAT code of the VAT account for this account.|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years

#### Schema name

[accounts.accountNumber.accounting-years.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self

#### Filterable properties

closed, fromDate, toDate, year

#### Sortable properties

closed, fromDate, toDate, year

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| closed| boolean| | Determines if the accounting year is closed for further transactions.|
| entries| string| uri| A link to a collection of all entries booked in the accounting year.|
| fromDate| string| full-date| The first date in the accounting year formated according to ISO-8601 (YYYY-MM-DD). Except for the first accounting year on an agreement<wbr>, it must be the date immediately following the previous accounting year<wbr>, and thus must be the first day of a month. The first accounting year on an agreement can begin on any day of the month.|
| periods| string| uri| A link to the collection of accounting year periods on an agreement.|
| self| string| uri| A unique link reference to the accounting year item.|
| toDate| string| full-date| The last date in the accounting year formated according to ISO-8601 (YYYY-MM-DD). It must be the last date in the last month of the accounting year. An accounting year can at most have a duration of 18 months.|
| totals| string| uri| A link to the chart of accounts with the years total in base currency.|
| vouchers| string| uri| A link to a collection of vouchers created in the accounting year.|
| year| string| | The calendar year or years spanned by the accounting year formatted according to ISO-8601(YYYY-MM-DD).|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self

#### Filterable properties

closed, fromDate, toDate, year

#### Sortable properties

closed, fromDate, toDate, year

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| closed| boolean| | Determines if the accounting year is closed for further transactions.|
| entries| string| uri| A link to a collection of all entries booked in the accounting year.|
| fromDate| string| full-date| The first date in the accounting year formatted according to ISO-8601(YYYY-MM-DD). Except for the first accounting year on an agreement<wbr>, it must be the date immediately following the previous accounting year<wbr>, and thus must be the first day of a month. The first accounting year on an agreement can begin on any day of the month.|
| periods| string| uri| A link to the collection of accounting year periods on an agreement.|
| self| string| uri| A unique link reference to the accounting year item.|
| toDate| string| full-date| The last date in the accounting year formatted according to ISO-8601(YYYY-MM-DD). It must be the last date in the last month of the accounting year. An accounting year can at most have a duration of 18 months.|
| totals| string| uri| A link to the chart of accounts with the years total in base currency.|
| vouchers| string| uri| A link to a collection of vouchers created in the accounting year.|
| year| string| | The calendar year or years spanned by the accounting year formatted according to ISO-8601(YYYY-MM-DD).|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/entries

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.entries.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.entries.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

account.self, customer.self, departmentalDistribution.self, paymentDetails.paymentType.self, project.self, self, supplier.self, vatAccount.self

#### Filterable properties

amount, amountInBaseCurrency, currency, customer.customerNumber, date, dueDate, entryNumber, entryType, quantity1, quantity2, remainder, remainderInBaseCurrency, supplier.supplierNumber, supplierInvoiceNumber, text, unit1.unitNumber, unit2.unitNumber, voucherNumber

#### Sortable properties

amount, amountInBaseCurrency, currency, customer.customerNumber, date, dueDate, entryNumber, entryType, quantity1, quantity2, remainder, remainderInBaseCurrency, supplier.supplierNumber, supplierInvoiceNumber, text, unit1.unitNumber, unit2.unitNumber, voucherNumber


#### Properties

| Name | Type | Format | Max length | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | ------ | ----------- |
| account| object| | | | | The account the entry is connected to.|
| account<wbr>.accountNumber| integer| | | 1| | A unique identifier of the account.|
| account<wbr>.self| string| uri| | | | A unique reference to the account resource.|
| amount| number| | | | | The total entry amount.|
| amountInBaseCurrency| number| | | | | The total entry amount in base currency.|
| bookedInvoice| object| | | | | A refernce to any booked Invoice this entry might be related to.|
| bookedInvoice<wbr>.bookedInvoiceNumber| integer| | | 1| | A unique identifier of the booked invoice.|
| bookedInvoice<wbr>.self| string| uri| | | | A unique reference to the booked invoice resource.|
| currency| string| | | | | The ISO 4217 currency code of the entry.|
| customer| object| | | | | The customer for this entity.|
| customer<wbr>.customerNumber| integer| | | | | The unique identifier of customer.|
| customer<wbr>.self| string| uri| | | | A unique link reference to the customer.|
| date| string| full-date| | | | Entry issue date. The date is formatted according to ISO-8601(YYYY-MM-DD).|
| departmentalDistribution| object| | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.self| string| uri| | | | A unique reference to the departmental distribution resource.|
| dueDate| string| full-date| | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entryNumber| integer| | | | | The unique identifier of the entry line.|
| entryType| Enum| | | | customerInvoice<wbr>, customerPayment<wbr>, supplierInvoice<wbr>, supplierPayment<wbr>, financeVoucher<wbr>, reminder<wbr>, openingEntry<wbr>, transferredOpeningEntry<wbr>, systemEntry<wbr>, manualDebtorInvoice| The type of entry.|
| invoiceNumber| string| | | | | A unique identifier of the invoice.|
| paymentDetails| object| | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| paymentDetails<wbr>.paymentType| object| | | | | A specific payment type on the entry.|
| paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | 1| | The payment type number is a positive unique numerical identifier.|
| paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | A unique link reference to the payment type item.|
| project| object| | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | A unique reference to the project resource.|
| quantity1| number| | | | | Requires dimension module.|
| quantity2| number| | | | | Requires dimension module.|
| remainder| number| | | | | The remainder on the entry.|
| remainderInBaseCurrency| number| | | | | The remainder in base currency on the entry.|
| self| string| uri| | | | A unique reference to the entry resource.|
| supplier| object| | | | | The supplier for this entity.|
| supplier<wbr>.self| string| uri| | | | A unique link reference to the supplier.|
| supplier<wbr>.supplierNumber| integer| | | | | The unique identifier of supplier.|
| supplierInvoiceNumber| string| | | | | A unique identifier of the supplier invoice.|
| text| string| | 255| | | A short description about the entry.|
| unit1| object| | | | | The first unit of measure applied to the entry. Requires dimension module.|
| unit1<wbr>.self| string| uri| | | | A unique reference to the unit resource.|
| unit1<wbr>.unitNumber| integer| | | 0| | The unique identifier of the unit.|
| unit2| object| | | | | The second unit of measure applied to the entry. Requires dimension module.|
| unit2<wbr>.self| string| uri| | | | A unique reference to the unit resource.|
| unit2<wbr>.unitNumber| integer| | | 0| | The unique identifier of the unit.|
| vatAccount| object| | | | | The account for VAT.|
| vatAccount<wbr>.self| string| uri| | | | A unique link reference to the vatAccount item.|
| vatAccount<wbr>.vatCode| string| | 5| | | The unique identifier of the vat account.|
| voucherNumber| integer| | | | | The identifier of the voucher this entry belongs to.|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/totals

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.totals.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.totals.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

account.self, self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| account| object| | The account used.|
| account<wbr>.accountNumber| integer| | The account number.|
| account<wbr>.self| string| uri| A unique reference to the account resource.|
| fromDate| string| full-date| The first date in the period formatted according to ISO-8601 (YYYY-MM-DD).|
| self| string| uri| The unique self reference of the resource.|
| toDate| string| full-date| The last date in the period formatted according to ISO-8601 (YYYY-MM-DD).|
| totalInBaseCurrency| number| | The total entry amount in base currency for the accounting year.|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/periods

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.periods.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.periods.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

accountingYear.self, self

#### Filterable properties

closed, fromDate, toDate

#### Sortable properties

closed, fromDate, toDate

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| accountingYear| object| | | | The accounting year the period is part of.|
| accountingYear<wbr>.self| string| uri| | | A unique reference to the accounting year resource.|
| accountingYear<wbr>.year| string| | 4| | A unique identifier of the accounting year.|
| closed| boolean| | | | Determines if the period is closed for further transactions.|
| entries| string| uri| | | A link to a collection of all entries booked in the period.|
| fromDate| string| full-date| | | The first date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| periodNumber| integer| | | 1| A unique identifier of the period.|
| self| string| uri| | | A unique link reference to the period item.|
| toDate| string| full-date| | | The last date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| totals| string| uri| | | A link to the chart of accounts with the periods total in base currency.|


   
### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/periods/accountingYearPeriod

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

accountingYear.self, self

#### Filterable properties

closed, fromDate, toDate

#### Sortable properties

closed, fromDate, toDate

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| accountingYear| object| | | | The accounting year the period is part of.|
| accountingYear<wbr>.self| string| uri| | | A unique reference to the accounting year resource.|
| accountingYear<wbr>.year| string| | 4| | A unique identifier of the accounting year.|
| closed| boolean| | | | Determines if the period is closed for further transactions.|
| entries| string| uri| | | A link to a collection of all entries booked in the period.|
| fromDate| string| full-date| | | The first date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| periodNumber| integer| | | 1| A unique identifier of the period.|
| self| string| uri| | | A unique link reference to the period item.|
| toDate| string| full-date| | | The last date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| totals| string| uri| | | A link to the chart of accounts with the periods total in base currency.|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/periods/accountingYearPeriod/entries

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.entries.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.entries.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

account.self, customer.self, departmentalDistribution.self, paymentDetails.paymentType.self, project.self, self, supplier.self, vatAccount.self

#### Filterable properties

amount, amountInBaseCurrency, currency, customer.customerNumber, date, dueDate, entryNumber, entryType, quantity1, quantity2, remainder, remainderInBaseCurrency, supplier.supplierNumber, supplierInvoiceNumber, text, unit1.unitNumber, unit2.unitNumber, voucherNumber

#### Sortable properties

amount, amountInBaseCurrency, currency, customer.customerNumber, date, dueDate, entryNumber, entryType, quantity1, quantity2, remainder, remainderInBaseCurrency, supplier.supplierNumber, supplierInvoiceNumber, text, unit1.unitNumber, unit2.unitNumber, voucherNumber


#### Properties

| Name | Type | Format | Max length | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | ------ | ----------- |
| account| object| | | | | The account the entry is connected to.|
| account<wbr>.accountNumber| integer| | | 1| | A unique identifier of the account.|
| account<wbr>.self| string| uri| | | | A unique reference to the account resource.|
| amount| number| | | | | The total entry amount.|
| amountInBaseCurrency| number| | | | | The total entry amount in base currency.|
| bookedInvoice| object| | | | | A refernce to any booked Invoice this entry might be related to.|
| bookedInvoice<wbr>.bookedInvoiceNumber| integer| | | 1| | A unique identifier of the booked invoice.|
| bookedInvoice<wbr>.self| string| uri| | | | A unique reference to the booked invoice resource.|
| currency| string| | | | | The ISO 4217 currency code of the entry.|
| customer| object| | | | | The customer for this entity.|
| customer<wbr>.customerNumber| integer| | | | | The unique identifier of customer.|
| customer<wbr>.self| string| uri| | | | A unique link reference to the customer.|
| date| string| full-date| | | | Entry issue date. The date is formatted according to ISO-8601(YYYY-MM-DD).|
| departmentalDistribution| object| | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.self| string| uri| | | | A unique reference to the departmental distribution resource.|
| dueDate| string| full-date| | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD).|
| entryNumber| integer| | | | | The unique identifier of the entry line.|
| entryType| Enum| | | | customerInvoice<wbr>, customerPayment<wbr>, supplierInvoice<wbr>, supplierPayment<wbr>, financeVoucher<wbr>, reminder<wbr>, openingEntry<wbr>, transferredOpeningEntry<wbr>, systemEntry<wbr>, manualDebtorInvoice| The type of entry.|
| invoiceNumber| string| | | | | A unique identifier of the invoice.|
| paymentDetails| object| | | | | Payment details associated with the supplier invoice. Each payment detail contains two keys that are required. For the +71 type<wbr>, fiSupplierNo and ocrLine is expected. For the +73 type<wbr>, fiSupplierNo and message is expected. For the +04 type<wbr>, giroAccount and ocrLine is expected. For the bank transfer type<wbr>, accountNo and message is expected. For the IBAN type<wbr>, ibanSwift and message is expected. For the +75 type<wbr>, fiSupplierNo and ocrLineMessage is expected. Please refer to the schema for validation rules details.|
| paymentDetails<wbr>.paymentType| object| | | | | A specific payment type on the entry.|
| paymentDetails<wbr>.paymentType<wbr>.paymentTypeNumber| integer| | | 1| | The payment type number is a positive unique numerical identifier.|
| paymentDetails<wbr>.paymentType<wbr>.self| string| uri| | | | A unique link reference to the payment type item.|
| project| object| | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | A unique reference to the project resource.|
| quantity1| number| | | | | Requires dimension module.|
| quantity2| number| | | | | Requires dimension module.|
| remainder| number| | | | | The remainder on the entry.|
| remainderInBaseCurrency| number| | | | | The remainder in base currency on the entry.|
| self| string| uri| | | | A unique reference to the entry resource.|
| supplier| object| | | | | The supplier for this entity.|
| supplier<wbr>.self| string| uri| | | | A unique link reference to the supplier.|
| supplier<wbr>.supplierNumber| integer| | | | | The unique identifier of supplier.|
| supplierInvoiceNumber| string| | | | | A unique identifier of the supplier invoice.|
| text| string| | 255| | | A short description about the entry.|
| unit1| object| | | | | The first unit of measure applied to the entry. Requires dimension module.|
| unit1<wbr>.self| string| uri| | | | A unique reference to the unit resource.|
| unit1<wbr>.unitNumber| integer| | | 0| | The unique identifier of the unit.|
| unit2| object| | | | | The second unit of measure applied to the entry. Requires dimension module.|
| unit2<wbr>.self| string| uri| | | | A unique reference to the unit resource.|
| unit2<wbr>.unitNumber| integer| | | 0| | The unique identifier of the unit.|
| vatAccount| object| | | | | The account for VAT.|
| vatAccount<wbr>.self| string| uri| | | | A unique link reference to the vatAccount item.|
| vatAccount<wbr>.vatCode| string| | 5| | | The unique identifier of the vat account.|
| voucherNumber| integer| | | | | The identifier of the voucher this entry belongs to.|



### <span class='get'>GET</span> /accounts/:accountNumber/accounting-years/:accountingYear/periods/accountingYearPeriod/totals

#### Schema name

[accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.totals.get.schema.json](https://restapi.e-conomic.com/schema/accounts.accountNumber.accounting-years.accountingYear.periods.accountingYearPeriod.totals.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

account.self, self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| account| object| | The account used.|
| account<wbr>.accountNumber| integer| | The account number.|
| account<wbr>.self| string| uri| A unique reference to the account resource.|
| fromDate| string| full-date| The first date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| self| string| uri| The unique self reference of the resource.|
| toDate| string| full-date| The last date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| totalInBaseCurrency| number| | The total entry amount in base currency for the accounting year period.|



