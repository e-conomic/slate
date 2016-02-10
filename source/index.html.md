---
title: E-conomic REST API Documentation

language_tabs:
  - javascript

toc_footers:
  - <a href='http://www.e-conomic.com'>&copy; E-conomic</a>
  - <a href='https://www.e-conomic.com/developer'>Developer Portal</a>
  
search: true
---

## Accounting Years

Accounting years define time spans for when your financial events take place. An accounting year can span anywhere from 6 to 18 months depending on when in your company life it is placed.

For more information please look at the e-copedia link [Dansk](http://wiki2.e-conomic.dk/indstillinger/regnskab-regnskabsaar) [Svensk](http://wiki.e-conomic.se/installningar/systeminstallning/rakenskapsar/skapa-rakenskapsar) [Norsk](http://wiki.e-conomic.no/innstillinger/regnskaps%C3%A5r).

### <span class='get'>GET</span> /accounting-years

#### Schema name

[accounting-years.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

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
| fromDate| string| full-date| The first date in the accounting year in the format YYYY-MM-DD. Except for the first accounting year on an agreement, it must be the date immediately following the previous accounting year, and thus must be the first day of a month. The first accounting year on an agreement can begin on any day of the month.|
| periods| string| uri| A link to the collection of accounting year periods on an agreement.|
| self| string| uri| A unique link reference to the accounting year item.|
| toDate| string| full-date| The last date in the accounting year in the format YYYY-MM-DD. It must be the last date in the last month of the accounting year. An accounting year can at most have a duration of 18 months.|
| totals| string| uri| A link to the chart of accounts with the years total in base currency.|
| vouchers| string| uri| A link to a collection of vouchers created in the accounting year.|
| year| string| | The calendar year or years spanned by the accounting year in the format YYYY or YYYY/YYYY.|



### <span class='get'>GET</span> /accounting-years/:accountingYear

#### Schema name

[accounting-years.accountingYear.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.get.schema.json)

#### Return type

This method returns a single object

#### Filterable properties

closed, fromDate, toDate, year

#### Sortable properties

closed, fromDate, toDate, year

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| closed| boolean| | If true this indicates that the accounting year is closed for further transactions.|
| entries| string| uri| A link to a collection of all entries booked in the accounting year.|
| fromDate| string| full-date| The first date in the accounting year in the format YYYY-MM-DD. Except for the first accounting year on an agreement, it must be the date immediately following the previous accounting year, and thus must be the first day of a month. The first accounting year on an agreement can begin on any day of the month.|
| periods| string| uri| A link to the collection of accounting year periods in the accounting year.|
| self| string| uri| A unique link reference to the accounting year item.|
| toDate| string| full-date| The last date in the accounting year in the format YYYY-MM-DD. It must be the last date in the last month of the accounting year. An accounting year can at most have a duration of 18 months.|
| totals| string| uri| A link to the chart of accounts with the years total in base currency.|
| vouchers| string| uri| A link to a collection of vouchers created in the accounting year. This requires that international ledger is enabled.|
| year| string| | The calendar year or years spanned by the accounting year in the format YYYY or YYYY/YYYY.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/entries

#### Schema name

[accounting-years.accountingYear.entries.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.entries.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Filterable properties

currency, date

#### Sortable properties

currency, date


#### Properties

| Name | Type | Format | Max length | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | ------ | ----------- |
| account| object| | | | | The account the entry is connected to.|
| account.accountNumber| integer| | | 1| | A unique identifier of the account.|
| account.self| string| uri| | | | A unique reference to the account resource.|
| amount| number| | | | | The total entry amount.|
| amountInBaseCurrency| number| | | | | The total entry amount in base currency.|
| currency| string| | | | | The ISO 4217 currency code of the entry.|
| date| string| full-date| | | | Entry issue date. The date is formatted according to ISO-8601(YYYY-MM-DD).|
| departmentalDistribution| object| | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution.departmentalDistributionNumber| integer| | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution.self| string| uri| | | | A unique reference to the departmental distribution resource.|
| entryNumber| integer| | | | | The unique identifier of the entry line.|
| entryType| Enum| | | | customerInvoice, customerPayment, supplierInvoice, supplierPayment, financeVoucher, reminder, openingEntry, transferredOpeningEntry, systemEntry, manualDebtorInvoice| The type of entry.|
| project| object| | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project.projectNumber| integer| | | 1| | A unique identifier of the project.|
| project.self| string| uri| | | | A unique reference to the project resource.|
| self| string| uri| | | | A unique reference to the accounting year entries resource.|
| text| string| | 255| | | A short description about the entry.|
| vatAccount| object| | | | | The account for VAT.|
| vatAccount.self| string| uri| | | | A unique link reference to the vatAccount item.|
| vatAccount.vatCode| string| | 5| | | The unique identifier of the vat account.|
| voucherNumber| integer| | | | | The identifier of the voucher this entry belongs to.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/totals

#### Schema name

[accounting-years.accountingYear.totals.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.totals.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Filterable properties

account.accountNumber, fromDate, toDate

#### Sortable properties

account.accountNumber, fromDate, toDate

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| account| object| | The account used.|
| account.accountNumber| integer| | The account number.|
| account.self| string| uri| A unique reference to the account resource.|
| fromDate| string| full-date| The first date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| self| string| uri| A unique reference to the account accounting year totals resource.|
| toDate| string| full-date| The last date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| totalInBaseCurrency| number| | The total entry amount in base currency for the accounting year.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/periods

#### Schema name

[accounting-years.accountingYear.periods.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.periods.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

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
| accountingYear.self| string| uri| | | A unique reference to the accounting year resource.|
| accountingYear.year| string| | 10| | A unique identifier of the accounting year.|
| closed| boolean| | | | If true this indicates that the accounting period is closed for further transactions.|
| entries| string| uri| | | A link to a collection of all entries booked in the period.|
| fromDate| string| full-date| | | The first date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| periodNumber| integer| | | 1| A unique identifier of the period.|
| self| string| uri| | | A unique link reference to the period item.|
| toDate| string| full-date| | | The last date in the period formated according to ISO-8601 (YYYY-MM-DD).|
| totals| string| uri| | | A link to the chart of accounts with the periods total in base currency.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/periods/:accountingYearPeriod

#### Schema name

[accounting-years.accountingYear.periods.accountingYearPeriod.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.periods.accountingYearPeriod.get.schema.json)

#### Return type

This method returns a single object

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
| accountingYear.self| string| uri| | | A unique reference to the accounting year resource.|
| accountingYear.year| string| | 4| | A unique identifier of the accounting year.|
| closed| boolean| | | | If true this indicates that the accounting period is closed for further transactions.|
| entries| string| uri| | | A link to a collection of all entries booked in the period.|
| fromDate| string| full-date| | | The first date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| periodNumber| integer| | | 1| A unique identifier of the period.|
| self| string| uri| | | A unique link reference to the period item.|
| toDate| string| full-date| | | The last date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| totals| string| uri| | | A link to the chart of accounts with the periods total in base currency.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/periods/:accountingYearPeriod/entries

#### Schema name

[accounting-years.accountingYear.periods.accountingYearPeriod.entries.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.periods.accountingYearPeriod.entries.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Filterable properties

currency, date

#### Sortable properties

currency, date


#### Properties

| Name | Type | Format | Max length | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | ------ | ----------- |
| account| object| | | | | The account the entry is connected to.|
| account.accountNumber| integer| | | 1| | A unique identifier of the account.|
| account.self| string| uri| | | | A unique reference to the account resource.|
| amount| number| | | | | The total entry amount.|
| amountInBaseCurrency| number| | | | | The total entry amount in base currency.|
| currency| string| | | | | The ISO 4217 currency code of the entry.|
| date| string| full-date| | | | Invoice issue date. The date is formatted according to ISO-8601(YYYY-MM-DD).|
| departmentalDistribution| object| | | | | The departmental distribution the entry is connected to.|
| departmentalDistribution.departmentalDistributionNumber| integer| | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution.self| string| uri| | | | A unique reference to the departmental distribution resource.|
| entryNumber| integer| | | | | The unique identifier of the entry line.|
| entryType| Enum| | | | customerInvoice, customerPayment, supplierInvoice, supplierPayment, financeVoucher, reminder, openingEntry, transferredOpeningEntry, systemEntry, manualDebtorInvoice| The type of entry.|
| pdf| object| | | | | References a pdf representation of this entry.|
| pdf.self| string| uri| | | | The unique reference of the pdf representation for this entry.|
| project| object| | | | | The project the entry is connected to.|
| project.projectNumber| integer| | | 1| | A unique identifier of the project.|
| project.self| string| uri| | | | A unique reference to the project resource.|
| self| string| uri| | | | A unique reference to the entry resource.|
| text| string| | 255| | | A short description about the entry.|
| vatAccount| object| | | | | The account for VAT.|
| vatAccount.self| string| uri| | | | A unique link reference to the vatAccount item.|
| vatAccount.vatCode| string| | 5| | | The unique identifier of the vat account.|
| voucherNumber| integer| | | | | The identifier of the voucher this entry belongs to.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/periods/:accountingYearPeriod/totals

#### Schema name

[accounting-years.accountingYear.periods.accountingYearPeriod.totals.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.periods.accountingYearPeriod.totals.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Filterable properties

account.accountNumber, fromDate, toDate

#### Sortable properties

account.accountNumber, fromDate, toDate

#### Default sorting

     fromDate : ascending


#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| account| object| | A reference to the account totaled.|
| account.accountNumber| integer| | The account number.|
| account.self| string| uri| A unique reference to the account resource.|
| fromDate| string| full-date| The first date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| self| string| uri| A unique reference to the totals resource.|
| toDate| string| full-date| The last date in the period formatted according to ISO-8601(YYYY-MM-DD).|
| totalInBaseCurrency| number| | The total entry amount in base currency for the accounting year period.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/vouchers

#### Schema name

[accounting-years.accountingYear.vouchers.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.vouchers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

date, lines.amount, lines.supplier.supplierNumber, numberSeries, voucherNumber, voucherType

#### Filterable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType

#### Sortable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType


#### Properties

| Name | Type | Format | Read-only | Max length | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | ------ | ----------- |
| attachment| string| uri| | | | | A unique link reference to the attachment resource for this voucher item.|
| booked| boolean| | True| | | | Is this voucher booked or not.|
| date| string| full-date| | | | | Voucher issue date. The date is formatted according to ISO-8601 (YYYY-MM-DD). This is part of the unique identifier of a voucher. The other part of the unique identifier is the voucherId.|
| dueDate| string| full-date| | | | | The date the voucher is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| lines| array| | | | | | An array containing the specific voucher lines.|
| lines.accruals| object| | | | | | This is used to divide payments into equal sizes over a certain period of time.|
| lines.accruals.account| object| | | | | | The account used by the accruals.|
| lines.accruals.account.accountNumber| integer| | | | | | The account number.|
| lines.accruals.account.self| string| uri| | | | | A unique reference to the account resource.|
| lines.accruals.endDate| string| full-date| | | | | Accruals end date. The date is formatted according to ISO-8601.|
| lines.accruals.self| string| uri| | | | | A unique link reference to the accruals item.|
| lines.accruals.startDate| string| full-date| | | | | Accruals start date. The date is formatted according to ISO-8601.|
| lines.amount| number| | | | | | The amount on the invoice line.|
| lines.amountInBaseCurrency| number| | | | | | If you use base currency this must be the same as amount or not specified at all.|
| lines.booked| boolean| | True| | | | Is this voucher booked or not.|
| lines.contraAccount| object| | | | | | The contra account.|
| lines.contraAccount.accountNumber| integer| | | | | | The account number.|
| lines.contraAccount.accountType| Enum| | | | | profitAndLoss, status| The contra account must be of either ProfitAndLoss or Status type.|
| lines.contraAccount.self| string| uri| | | | | A unique reference to the account resource.|
| lines.contraVatAccount| object| | | | | | The contra account for VAT.|
| lines.contraVatAccount.self| string| uri| | | | | A unique link reference to the contraVatAccount item.|
| lines.contraVatAccount.vatCode| string| | | 5| | | The unique identifier of the contra vat account.|
| lines.contraVatAmount| number| | | | | | The amount of VAT on the voucher on the contra account.|
| lines.contraVatAmountInBaseCurrency| number| | | | | | The amount of VAT on the voucher on the contra account in base currency.|
| lines.currency| string| | | 3| | | The currency the invoice is specified in.|
| lines.department| object| | | | | | A reference to the department that this voucher is credited to.|
| lines.department.departmentNumber| integer| | | | | | The unique identifier of the department.|
| lines.department.self| string| uri| | | | | A unique link reference to the department item.|
| lines.departmentalDistribution| object| | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| lines.departmentalDistribution.departmentalDistributionNumber| integer| | | | 1| | A unique identifier of the departmental distribution.|
| lines.departmentalDistribution.self| string| uri| | | | | A unique reference to the departmental distribution resource.|
| lines.document| string| uri| | | | | The unique reference to the file.|
| lines.entryNumber| integer| | True| | | | The unique identifier of the invoice line.|
| lines.exchangeRate| number| | | | | | The exchange rate between the base currency and the invoice currency.|
| lines.remittanceInformation| object| | | | | | |
| lines.remittanceInformation.creditorId| string| | | 50| | | This could be the IBAN/SWIFT no, bank account no, bankgiro no or postgiro no depending on the payment type.|
| lines.remittanceInformation.creditorInvoiceId| string| | | 30| | | The OCR or message sent together with the creditorId.|
| lines.remittanceInformation.paymentType| object| | | | | | The payment type used.|
| lines.remittanceInformation.paymentType.paymentTypeNumber| integer| | | | | | The unique identifier of the payment type.|
| lines.remittanceInformation.paymentType.self| string| uri| | | | | A unique link reference to the paymentType item.|
| lines.remittanceInformation.self| string| uri| | | | | A unique link reference to the remittanceInformation item.|
| lines.supplier| object| | | | | | The supplier is the vendor from whom you buy your goods.|
| lines.supplier.self| string| uri| | | | | A unique self reference of the supplier.|
| lines.supplier.supplierNumber| integer| | | | | | The supplier number is a unique numerical identifier.|
| lines.supplierInvoiceNumber| string| | | | | | The unique identifier of the supplier invoice gotten from the supplier.|
| lines.text| string| | | 250| | | The text on the voucher line.|
| lines.vatAccount| object| | | | | | The account for VAT.|
| lines.vatAccount.self| string| uri| | | | | A unique link reference to the vatAccount item.|
| lines.vatAccount.vatCode| string| | | 5| | | The unique identifier of the vat account.|
| lines.vatAmount| number| | | | | | The amount of VAT on the voucher. Used if the line has a VAT account.|
| lines.vatAmountInBaseCurrency| number| | | | | | The amount of VAT on the voucher in base currency.|
| numberSeries| object| | | | | | The number series corresponding to the voucher type.|
| numberSeries.numberSeriesNumber| integer| | | | | | The unique identifier of the number series.|
| numberSeries.self| string| uri| | | | | A unique link reference to the number series item.|
| remainder| number| | True| | | | Remaining amount to be paid.|
| remainderInDefaultCurrency| number| | True| | | | Remaining amount to be paid in default currency.|
| self| string| uri| | | | | A unique link reference to the voucher item.|
| voucherId| number| | True| | | | Part of the unique identifier of a voucher. The other part of the unique identifier is the date.|
| voucherNumber| object| | | | | | The number series corresponding to the voucher type.|
| voucherNumber.displayVoucherNumber| string| | True| | | | This is a concatenation of the prefix and voucherNumber.|
| voucherNumber.prefix| string| | | | | | The number series prefix.|
| voucherNumber.voucherNumber| number| | | | | | The number of the voucher.|
| voucherType| Enum| | | | | customerInvoice, customerPayment, supplierInvoice, supplierPayment, financeVoucher, reminder, openingEntry, transferredOpeningEntry, systemEntry, manualDebtorInvoice| The type of voucher. Must be SupplierInvoice.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/vouchers/:voucherId

#### Schema name

[accounting-years.accountingYear.vouchers.voucherId.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.vouchers.voucherId.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

date, lines.amount, lines.supplier.supplierNumber, numberSeries, voucherNumber, voucherType

#### Filterable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType

#### Sortable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType


#### Properties

| Name | Type | Format | Read-only | Max length | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | ------ | ----------- |
| attachment| string| uri| | | | A unique link reference to the attachment resource for this voucher item.|
| booked| boolean| | True| | | Is this voucher booked or not.|
| date| string| full-date| | | | Voucher issue date. The date is formatted according to ISO-8601 (YYYY-MM-DD).|
| dueDate| string| full-date| | | | The date the voucher is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| lines| array| | | | | An array containing the specific voucher lines.|
| lines.accruals| object| | | | | This is used to divide payments into equal sizes over a certain period of time.|
| lines.accruals.account| object| | | | | The account used by the accruals.|
| lines.accruals.account.accountNumber| integer| | | | | The account number.|
| lines.accruals.account.self| string| uri| | | | A unique reference to the account resource.|
| lines.accruals.endDate| string| full-date| | | | Accruals end date. The date is formatted according to ISO-8601.|
| lines.accruals.self| string| uri| | | | A unique link reference to the accruals item.|
| lines.accruals.startDate| string| full-date| | | | Accruals start date. The date is formatted according to ISO-8601.|
| lines.amount| number| | | | | The amount on the invoice line.|
| lines.amountInBaseCurrency| number| | | | | If you use base currency this must be the same as amount or not specified at all.|
| lines.booked| boolean| | True| | | Is this voucher booked or not.|
| lines.contraAccount| object| | | | | The contra account.|
| lines.contraAccount.accountNumber| integer| | | | | The account number.|
| lines.contraAccount.accountType| Enum| | | | profitAndLoss, status| The contra account must be of either ProfitAndLoss or Status type.|
| lines.contraAccount.self| string| uri| | | | A unique reference to the account resource.|
| lines.contraVatAccount| object| | | | | The contra account for VAT.|
| lines.contraVatAccount.self| string| uri| | | | A unique link reference to the contraVatAccount item.|
| lines.contraVatAccount.vatCode| string| | | 5| | The unique identifier of the contra vat account.|
| lines.contraVatAmount| number| | | | | The amount of VAT on the voucher on the contra account.|
| lines.contraVatAmountInBaseCurrency| number| | | | | The amount of VAT on the voucher on the contra account in base currency.|
| lines.currency| string| | | 3| | The currency the invoice is specified in.|
| lines.department| object| | | | | A reference to the department that this voucher will be connected with.|
| lines.department.departmentNumber| integer| | | | | The unique identifier of the department.|
| lines.department.self| string| uri| | | | A unique link reference to the department item.|
| lines.document| string| uri| | | | The unique reference to the file.|
| lines.entryNumber| integer| | True| | | The unique identifier of the invoice line.|
| lines.exchangeRate| number| | | | | The exchange rate between the base currency and the invoice currency.|
| lines.remittanceInformation| object| | | | | |
| lines.remittanceInformation.creditorId| string| | | 50| | This could be the IBAN/SWIFT no, bank account no, bankgiro no or postgiro no depending on the payment type.|
| lines.remittanceInformation.creditorInvoiceId| string| | | 30| | The OCR or message sent together with the creditorId.|
| lines.remittanceInformation.paymentType| object| | | | | The payment type used.|
| lines.remittanceInformation.paymentType.paymentTypeNumber| integer| | | | | The unique identifier of the payment type.|
| lines.remittanceInformation.paymentType.self| string| uri| | | | A unique link reference to the paymentType item.|
| lines.remittanceInformation.self| string| uri| | | | A unique link reference to the remittanceInformation item.|
| lines.supplier| object| | | | | The supplier is the vendor from whom you buy your goods.|
| lines.supplier.self| string| uri| | | | A unique self reference of the supplier.|
| lines.supplier.supplierNumber| integer| | | | | The supplier number is a unique numerical identifier.|
| lines.supplierInvoiceNumber| string| | | | | The unique identifier of the supplier invoice gotten from the supplier.|
| lines.text| string| | | 250| | The text on the voucher line.|
| lines.vatAccount| object| | | | | The account for VAT.|
| lines.vatAccount.self| string| uri| | | | A unique link reference to the vatAccount item.|
| lines.vatAccount.vatCode| string| | | 5| | The unique identifier of the vat account.|
| lines.vatAmount| number| | | | | The amount of VAT on the voucher. Used if the line has a VAT account.|
| lines.vatAmountInBaseCurrency| number| | | | | The amount of VAT on the voucher in base currency.|
| numberSeries| object| | | | | The number series corresponding to the voucher type.|
| numberSeries.numberSeriesNumber| integer| | | | | The unique identifier of the number series.|
| numberSeries.self| string| uri| | | | A unique link reference to the number series item.|
| remainder| number| | True| | | Remaining amount to be paid.|
| remainderInDefaultCurrency| number| | True| | | Remaining amount to be paid in default currency.|
| self| string| uri| | | | A unique link reference to the voucher item.|
| voucherId| number| | True| | | Part of the unique identifier of a voucher.|
| voucherNumber| object| | | | | The number series corresponding to the voucher type.|
| voucherNumber.displayVoucherNumber| string| | True| | | This is a concatenation of the prefix and voucherNumber.|
| voucherNumber.prefix| string| | | | | The number series prefix.|
| voucherNumber.voucherNumber| number| | | | | The number of the voucher.|
| voucherType| Enum| | | | customerInvoice, customerPayment, supplierInvoice, supplierPayment, financeVoucher, reminder, openingEntry, transferredOpeningEntry, systemEntry, manualDebtorInvoice| The type of voucher. Must be SupplierInvoice.|



### <span class='get'>GET</span> /accounting-years/:accountingYear/vouchers/:voucherId/:date

#### Schema name

[accounting-years.accountingYear.vouchers.voucherId.date.get.schema.json](https://restapi.e-conomic.com/schema/accounting-years.accountingYear.vouchers.voucherId.date.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

date, lines.amount, lines.supplier.supplierNumber, numberSeries, voucherNumber, voucherType

#### Filterable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType

#### Sortable properties

lines.accruals.account.accountNumber, lines.contraAccount.accountNumber, lines.contraAccount.accountType


#### Properties

| Name | Type | Format | Read-only | Max length | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | ------ | ----------- |
| attachment| string| uri| | | | A unique link reference to the attachment resource for this voucher item.|
| booked| boolean| | True| | | Is this voucher booked or not.|
| date| string| full-date| | | | Voucher issue date. The date is formatted according to ISO-8601 (YYYY-MM-DD).|
| dueDate| string| full-date| | | | The date the voucher is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| lines| array| | | | | An array containing the specific voucher lines.|
| lines.accruals| object| | | | | This is used to divide payments into equal sizes over a certain period of time.|
| lines.accruals.account| object| | | | | The account used by the accruals.|
| lines.accruals.account.accountNumber| integer| | | | | The account number.|
| lines.accruals.account.self| string| uri| | | | A unique reference to the account resource.|
| lines.accruals.endDate| string| full-date| | | | Accruals end date. The date is formatted according to ISO-8601.|
| lines.accruals.self| string| uri| | | | A unique link reference to the accruals item.|
| lines.accruals.startDate| string| full-date| | | | Accruals start date. The date is formatted according to ISO-8601.|
| lines.amount| number| | | | | The amount on the invoice line.|
| lines.amountInBaseCurrency| number| | | | | If you use base currency this must be the same as amount or not specified at all.|
| lines.booked| boolean| | True| | | Is this voucher booked or not.|
| lines.contraAccount| object| | | | | The contra account.|
| lines.contraAccount.accountNumber| integer| | | | | The account number.|
| lines.contraAccount.accountType| Enum| | | | profitAndLoss, status| The contra account must be of either ProfitAndLoss or Status type.|
| lines.contraAccount.self| string| uri| | | | A unique reference to the account resource.|
| lines.contraVatAccount| object| | | | | The contra account for VAT.|
| lines.contraVatAccount.self| string| uri| | | | A unique link reference to the contraVatAccount item.|
| lines.contraVatAccount.vatCode| string| | | 5| | The unique identifier of the contra vat account.|
| lines.contraVatAmount| number| | | | | The amount of VAT on the voucher on the contra account.|
| lines.contraVatAmountInBaseCurrency| number| | | | | The amount of VAT on the voucher on the contra account in base currency.|
| lines.currency| string| | | 3| | The currency the invoice is specified in.|
| lines.department| object| | | | | A reference to the department that this voucher will be connected with.|
| lines.department.departmentNumber| integer| | | | | The unique identifier of the department.|
| lines.department.self| string| uri| | | | A unique link reference to the department item.|
| lines.document| string| uri| | | | The unique reference to the file.|
| lines.entryNumber| integer| | True| | | The unique identifier of the invoice line.|
| lines.exchangeRate| number| | | | | The exchange rate between the base currency and the invoice currency.|
| lines.remittanceInformation| object| | | | | |
| lines.remittanceInformation.creditorId| string| | | 50| | This could be the IBAN/SWIFT no, bank account no, bankgiro no or postgiro no depending on the payment type.|
| lines.remittanceInformation.creditorInvoiceId| string| | | 30| | The OCR or message sent together with the creditorId.|
| lines.remittanceInformation.paymentType| object| | | | | The payment type used.|
| lines.remittanceInformation.paymentType.paymentTypeNumber| integer| | | | | The unique identifier of the payment type.|
| lines.remittanceInformation.paymentType.self| string| uri| | | | A unique link reference to the paymentType item.|
| lines.remittanceInformation.self| string| uri| | | | A unique link reference to the remittanceInformation item.|
| lines.supplier| object| | | | | The supplier is the vendor from whom you buy your goods.|
| lines.supplier.self| string| uri| | | | A unique self reference of the supplier.|
| lines.supplier.supplierNumber| integer| | | | | The supplier number is a unique numerical identifier.|
| lines.supplierInvoiceNumber| string| | | | | The unique identifier of the supplier invoice gotten from the supplier.|
| lines.text| string| | | 250| | The text on the voucher line.|
| lines.vatAccount| object| | | | | The account for VAT.|
| lines.vatAccount.self| string| uri| | | | A unique link reference to the vatAccount item.|
| lines.vatAccount.vatCode| string| | | 5| | The unique identifier of the vat account.|
| lines.vatAmount| number| | | | | The amount of VAT on the voucher. Used if the line has a VAT account.|
| lines.vatAmountInBaseCurrency| number| | | | | The amount of VAT on the voucher in base currency.|
| numberSeries| object| | | | | The number series corresponding to the voucher type.|
| numberSeries.numberSeriesNumber| integer| | | | | The unique identifier of the number series.|
| numberSeries.self| string| uri| | | | A unique link reference to the number series item.|
| remainder| number| | True| | | Remaining amount to be paid.|
| remainderInDefaultCurrency| number| | True| | | Remaining amount to be paid in default currency.|
| self| string| uri| | | | A unique link reference to the voucher item.|
| voucherId| number| | True| | | Part of the unique identifier of a voucher.|
| voucherNumber| object| | | | | The number series corresponding to the voucher type.|
| voucherNumber.displayVoucherNumber| string| | True| | | This is a concatenation of the prefix and voucherNumber.|
| voucherNumber.prefix| string| | | | | The number series prefix.|
| voucherNumber.voucherNumber| number| | | | | The number of the voucher.|
| voucherType| Enum| | | | customerInvoice, customerPayment, supplierInvoice, supplierPayment, financeVoucher, reminder, openingEntry, transferredOpeningEntry, systemEntry, manualDebtorInvoice| The type of voucher. Must be SupplierInvoice.|

