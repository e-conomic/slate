## Product Groups

### <span class='get'>GET</span> /product-groups

This endpoint allows you to fetch a collection of all product groups.

#### Schema name

[product-groups.get.schema.json](https://restapi.e-conomic.com/schema/product-groups.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

accrual.accountsSummed.fromAccount.self, accrual.accountsSummed.toAccount.self, accrual.contraAccount.self, accrual.totalFromAccount.self, accrual.vatAccount.self, self




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | ------ | ----------- |
| accrual| object| | True| | | | A reference to the accrual account this product group is connected to.|
| accrual<wbr>.accountNumber| integer| | True| | | | Unique number identifying the accruals account.|
| accrual<wbr>.accountType| Enum| | True| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| accrual<wbr>.accountingYears| string| uri| True| | | | A link to a list of accounting years for which the account is usable.|
| accrual<wbr>.accountsSummed| array| | True| | | | An array of the account intervals used for calculating the total for this account.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount| object| | True| | | | The first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | True| | | | Account number of the first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| True| | | | The unique self link of the first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount| object| | True| | | | The last account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | True| | | | Account number of the last account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.self| string| uri| True| | | | The unique self link of the last account in the interval.|
| accrual<wbr>.balance| number| | True| | | | The current balance of the accruals account.|
| accrual<wbr>.barred| boolean| | True| | | | Shows if the account is barred from being used.|
| accrual<wbr>.blockDirectEntries| boolean| | True| | | | Determines if the account can be manually updated with entries.|
| accrual<wbr>.contraAccount| object| | True| | | | The default contra account of the account.|
| accrual<wbr>.contraAccount<wbr>.accountNumber| integer| | True| | | | Account number of the contra account.|
| accrual<wbr>.contraAccount<wbr>.self| string| uri| True| | | | The unique self link of the contra account.|
| accrual<wbr>.debitCredit| Enum| | True| | | debit<wbr>, credit| Describes the default update type of the account.|
| accrual<wbr>.draftBalance| number| | True| | | | The current balance of the account including draft (not yet booked) entries.|
| accrual<wbr>.name| string| | True| 125| | | The name of the account.|
| accrual<wbr>.totalFromAccount| object| | True| | | | The account from which the sum total for this account is calculated.|
| accrual<wbr>.totalFromAccount<wbr>.accountNumber| integer| | True| | | | Account number of the first account.|
| accrual<wbr>.totalFromAccount<wbr>.self| string| uri| True| | | | The unique self link of the first account.|
| accrual<wbr>.vatAccount| object| | True|
| accrual<wbr>.vatAccount<wbr>.self| string| uri| True| | | | The unique self link of the VAT code.|
| accrual<wbr>.vatAccount<wbr>.vatCode| string| | True| 5| | | The VAT code of the VAT account for this account.|
| inventoryEnabled| boolean| | True| | | | States if the product group is inventory enabled or not.|
| name| string| | | 50| 1| | Descriptive name of the product group.|
| productGroupNumber| integer| | | | | | Unique number identifying the product group.|
| products| string| uri| True| | | | A reference to the products in this product group resource.|
| salesAccounts| string| uri| True| | | | A reference to the sales accounts in this product group resource.|
| self| string| uri| | | | | A unique reference to this product group resource.|



### <span class='get'>GET</span> /product-groups/:productGroupNumber

This endpoint allows you to fetch a specific product group.

#### Schema name

[product-groups.productGroupNumber.get.schema.json](https://restapi.e-conomic.com/schema/product-groups.productGroupNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

accrual.accountsSummed.fromAccount.self, accrual.accountsSummed.toAccount.self, accrual.contraAccount.self, accrual.totalFromAccount.self, accrual.vatAccount.self, self




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | ------ | ----------- |
| accrual| object| | True| | | | A reference to the accrual account this product group is connected to.|
| accrual<wbr>.accountNumber| integer| | True| | | | Unique number identifying the accruals account.|
| accrual<wbr>.accountType| Enum| | True| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| accrual<wbr>.accountingYears| string| uri| True| | | | A link to a list of accounting years for which the account is usable.|
| accrual<wbr>.accountsSummed| array| | True| | | | An array of the account intervals used for calculating the total for this account.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount| object| | True| | | | The first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | True| | | | Account number of the first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| True| | | | The unique self link of the first account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount| object| | True| | | | The last account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | True| | | | Account number of the last account in the interval.|
| accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.self| string| uri| True| | | | The unique self link of the last account in the interval.|
| accrual<wbr>.balance| number| | True| | | | The current balance of the accruals account.|
| accrual<wbr>.barred| boolean| | True| | | | Shows if the account is barred from being used.|
| accrual<wbr>.blockDirectEntries| boolean| | True| | | | Determines if the account can be manually updated with entries.|
| accrual<wbr>.contraAccount| object| | True| | | | The default contra account of the account.|
| accrual<wbr>.contraAccount<wbr>.accountNumber| integer| | True| | | | Account number of the contra account.|
| accrual<wbr>.contraAccount<wbr>.self| string| uri| True| | | | The unique self link of the contra account.|
| accrual<wbr>.debitCredit| Enum| | True| | | debit<wbr>, credit| Describes the default update type of the account.|
| accrual<wbr>.draftBalance| number| | True| | | | The current balance of the account including draft (not yet booked) entries.|
| accrual<wbr>.name| string| | True| 125| | | The name of the account.|
| accrual<wbr>.totalFromAccount| object| | True| | | | The account from which the sum total for this account is calculated.|
| accrual<wbr>.totalFromAccount<wbr>.accountNumber| integer| | True| | | | Account number of the first account.|
| accrual<wbr>.totalFromAccount<wbr>.self| string| uri| True| | | | The unique self link of the first account.|
| accrual<wbr>.vatAccount| object| | True|
| accrual<wbr>.vatAccount<wbr>.self| string| uri| True| | | | The unique self link of the VAT code.|
| accrual<wbr>.vatAccount<wbr>.vatCode| string| | True| 5| | | The VAT code of the VAT account for this account.|
| inventoryEnabled| boolean| | True| | | | States if the product group is inventory enabled or not.|
| name| string| | | 50| 1| | Descriptive name of the product group.|
| productGroupNumber| integer| | | | | | Unique number identifying the product group.|
| products| string| uri| True| | | | A reference to the products in this product group resource.|
| salesAccounts| string| uri| True| | | | A reference to the sales accounts in this product group resource.|
| self| string| uri| | | | | A unique reference to this product group resource.|



### <span class='get'>GET</span> /product-groups/:productGroupNumber/sales-accounts

This endpoint allows you to fetch a list of sales accounts that belongs to this product group.

#### Schema name

[product-groups.productGroupNumber.sales-accounts.get.schema.json](https://restapi.e-conomic.com/schema/product-groups.productGroupNumber.sales-accounts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

salesAccount.accountsSummed.fromAccount.self, salesAccount.accountsSummed.toAccount.self, salesAccount.contraAccount.self, salesAccount.totalFromAccount.self, salesAccount.vatAccount.self, self, vatZone.self

#### Filterable properties

salesAccount.accountNumber, salesAccount.accountType, salesAccount.balance, salesAccount.barred, salesAccount.blockDirectEntries, salesAccount.debitCredit, salesAccount.name

#### Sortable properties

salesAccount.accountNumber, salesAccount.accountType, salesAccount.balance, salesAccount.blockDirectEntries, salesAccount.debitCredit, salesAccount.name

#### Default sorting

     salesAccount.accountNumber : ascending


#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| salesAccount| object| | | | A schema for information about an account.|
| salesAccount<wbr>.accountNumber| integer| | | | The account's number.|
| salesAccount<wbr>.accountType| Enum| | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| salesAccount<wbr>.accountingYears| string| uri| | | A link to a list of accounting years for which the account is usable.|
| salesAccount<wbr>.accountsSummed| array| | | | An array of the account intervals used for calculating the total for this account.|
| salesAccount<wbr>.accountsSummed<wbr>.fromAccount| object| | | | The first account in the interval.|
| salesAccount<wbr>.accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | | | Account number of the first account in the interval.|
| salesAccount<wbr>.accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| | | The unique self link of the first account in the interval.|
| salesAccount<wbr>.accountsSummed<wbr>.toAccount| object| | | | The last account in the interval.|
| salesAccount<wbr>.accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | | | Account number of the last account in the interval.|
| salesAccount<wbr>.accountsSummed<wbr>.toAccount<wbr>.self| string| uri| | | The unique self link of the last account in the interval.|
| salesAccount<wbr>.balance| number| | | | The current balance of the account.|
| salesAccount<wbr>.barred| boolean| | | | Shows if the account is barred from being used.|
| salesAccount<wbr>.blockDirectEntries| boolean| | | | Determines if the account can be manually updated with entries.|
| salesAccount<wbr>.contraAccount| object| | | | The default contra account of the account.|
| salesAccount<wbr>.contraAccount<wbr>.accountNumber| integer| | | | Account number of the contra account.|
| salesAccount<wbr>.contraAccount<wbr>.self| string| uri| | | The unique self link of the contra account.|
| salesAccount<wbr>.debitCredit| Enum| | | debit<wbr>, credit| Describes the default update type of the account.|
| salesAccount<wbr>.draftBalance| number| | | | The current balance of the account including draft (not yet booked) entries.|
| salesAccount<wbr>.name| string| | 125| | The name of the account.|
| salesAccount<wbr>.self| string| uri| | | A unique reference to the account resource.|
| salesAccount<wbr>.totalFromAccount| object| | | | The account from which the sum total for this account is calculated.|
| salesAccount<wbr>.totalFromAccount<wbr>.accountNumber| integer| | | | Account number of the first account.|
| salesAccount<wbr>.totalFromAccount<wbr>.self| string| uri| | | The unique self link of the first account.|
| salesAccount<wbr>.vatAccount| object|
| salesAccount<wbr>.vatAccount<wbr>.self| string| uri| | | The unique self link of the VAT code.|
| salesAccount<wbr>.vatAccount<wbr>.vatCode| string| | 5| | The VAT code of the VAT account for this account.|
| self| string| uri| | | The unique self reference of the product groups accounts collection.|
| vatZone| object| | | | A specific vat zone.|
| vatZone<wbr>.enabledForCustomer| boolean| | | | If this value is true<wbr>, then the vat zone can be used for a customer.|
| vatZone<wbr>.enabledForSupplier| boolean| | | | If this value is true<wbr>, then the vat zone can be used for a supplier.|
| vatZone<wbr>.name| string| | 50| | The name of the vat zone.|
| vatZone<wbr>.self| string| uri| | | A unique link reference to the vat zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | A unique identifier of the vat zone.|



### <span class='get'>GET</span> /product-groups/:productGroupNumber/products

This endpoint allows you to fetch a list of products that belongs to this product group.

#### Schema name

[product-groups.productGroupNumber.products.get.schema.json](https://restapi.e-conomic.com/schema/product-groups.productGroupNumber.products.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

departmentalDistribution.self, name, productGroup, productGroup.accrual.accountsSummed.fromAccount.self, productGroup.accrual.accountsSummed.toAccount.self, productGroup.accrual.contraAccount.self, productGroup.accrual.totalFromAccount.self, productGroup.accrual.vatAccount.self, productGroup.self, productNumber, self, unit.self

#### Filterable properties

barCode, barred, costPrice, departmentalDistribution.departmentalDistributionNumber, description, inventory.grossWeight, inventory.netWeight, inventory.packageVolume, inventory.recommendedCostPrice, lastUpdated, name, productNumber, recommendedPrice, salesPrice, unit.unitNumber

#### Sortable properties

barCode, barred, costPrice, description, inventory.grossWeight, inventory.netWeight, inventory.packageVolume, lastUpdated, name, productNumber, recommendedPrice, salesPrice


#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | ------ | ----------- |
| barCode| string| | | 50| | | | String representation of a machine readable barcode symbol that represents this product.|
| barred| boolean| | | | | | | If this value is true<wbr>, then the product can no longer be sold<wbr>, and trying to book an invoice with this product will not be possible.|
| costPrice| number| | | | | | | The cost of the goods. If you have the inventory module enabled<wbr>, this is read-only and will just be ignored.|
| departmentalDistribution| object| | | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| | A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.distributionType| string| | | | | | | Type of the distribution|
| departmentalDistribution<wbr>.self| string| uri| | | | | | A unique reference to the departmental distribution resource.|
| description| string| | | 500| | | | Free text description of product.|
| inventory| object| | | | | | | A collection of properties that are only applicable if the inventory module is enabled.|
| inventory<wbr>.available| number| | True| | | | | The number of units available to sell. This is the difference between the amount in stock and the amount ordered by customers.|
| inventory<wbr>.grossWeight| number| | True| | | | | The gross weight of the product.|
| inventory<wbr>.inStock| number| | True| | | | | The number of units in stock including any that have been ordered by customers.|
| inventory<wbr>.inventoryLastUpdated| string| full-date| True| | | | | The last time this product was updated with regards to inventory.|
| inventory<wbr>.netWeight| number| | True| | | | | The net weight of the product.|
| inventory<wbr>.orderedByCustomers| number| | True| | | | | The number of units that have been ordered by customers<wbr>, but haven't been sold yet.|
| inventory<wbr>.orderedFromSuppliers| number| | True| | | | | The number of units that have been ordered from your suppliers<wbr>, but haven't been delivered to you yet.|
| inventory<wbr>.packageVolume| number| | | | | | | The volume the shipped package makes up.|
| inventory<wbr>.recommendedCostPrice| number| | | | | | | The recommendedCostPrice of the product.|
| invoices| object| | | | | | | A collection of convenience links to invoices that contains this product.|
| invoices<wbr>.booked| string| uri| | | | | | A unique reference to the booked invoices containing this product.|
| invoices<wbr>.drafts| string| uri| | | | | | A unique reference to the draft invoices containing this product.|
| lastUpdated| string| full-date| True| | | | | Invoice issue date. The date is formatted according to ISO-8601.|
| name| string| | | 300| 1| | | Descriptive name of the product.|
| productGroup| object| | | | | | | A reference to the product group this product is contained within.|
| productGroup<wbr>.accrual| object| | True| | | | | A reference to the accrual account this product group is connected to.|
| productGroup<wbr>.accrual<wbr>.accountNumber| integer| | True| | | | | Unique number identifying the accruals account.|
| productGroup<wbr>.accrual<wbr>.accountType| Enum| | True| | | | profitAndLoss<wbr>, status<wbr>, totalFrom<wbr>, heading<wbr>, headingStart<wbr>, sumInterval<wbr>, sumAlpha| The type of account in the chart of accounts.|
| productGroup<wbr>.accrual<wbr>.accountingYears| string| uri| True| | | | | A link to a list of accounting years for which the account is usable.|
| productGroup<wbr>.accrual<wbr>.accountsSummed| array| | True| | | | | An array of the account intervals used for calculating the total for this account.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.fromAccount| object| | True| | | | | The first account in the interval.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.accountNumber| integer| | True| | | | | Account number of the first account in the interval.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.fromAccount<wbr>.self| string| uri| True| | | | | The unique self link of the first account in the interval.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.toAccount| object| | True| | | | | The last account in the interval.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.accountNumber| integer| | True| | | | | Account number of the last account in the interval.|
| productGroup<wbr>.accrual<wbr>.accountsSummed<wbr>.toAccount<wbr>.self| string| uri| True| | | | | The unique self link of the last account in the interval.|
| productGroup<wbr>.accrual<wbr>.balance| number| | True| | | | | The current balance of the accruals account.|
| productGroup<wbr>.accrual<wbr>.barred| boolean| | True| | | | | Shows if the account is barred from being used.|
| productGroup<wbr>.accrual<wbr>.blockDirectEntries| boolean| | True| | | | | Determines if the account can be manually updated with entries.|
| productGroup<wbr>.accrual<wbr>.contraAccount| object| | True| | | | | The default contra account of the account.|
| productGroup<wbr>.accrual<wbr>.contraAccount<wbr>.accountNumber| integer| | True| | | | | Account number of the contra account.|
| productGroup<wbr>.accrual<wbr>.contraAccount<wbr>.self| string| uri| True| | | | | The unique self link of the contra account.|
| productGroup<wbr>.accrual<wbr>.debitCredit| Enum| | True| | | | debit<wbr>, credit| Describes the default update type of the account.|
| productGroup<wbr>.accrual<wbr>.draftBalance| number| | True| | | | | The current balance of the account including draft (not yet booked) entries.|
| productGroup<wbr>.accrual<wbr>.name| string| | True| 125| | | | The name of the account.|
| productGroup<wbr>.accrual<wbr>.totalFromAccount| object| | True| | | | | The account from which the sum total for this account is calculated.|
| productGroup<wbr>.accrual<wbr>.totalFromAccount<wbr>.accountNumber| integer| | True| | | | | Account number of the first account.|
| productGroup<wbr>.accrual<wbr>.totalFromAccount<wbr>.self| string| uri| True| | | | | The unique self link of the first account.|
| productGroup<wbr>.accrual<wbr>.vatAccount| object| | True|
| productGroup<wbr>.accrual<wbr>.vatAccount<wbr>.self| string| uri| True| | | | | The unique self link of the VAT code.|
| productGroup<wbr>.accrual<wbr>.vatAccount<wbr>.vatCode| string| | True| 5| | | | The VAT code of the VAT account for this account.|
| productGroup<wbr>.inventoryEnabled| boolean| | True| | | | | States if the product group is inventory enabled or not.|
| productGroup<wbr>.name| string| | | 50| 1| | | Descriptive name of the product group.|
| productGroup<wbr>.productGroupNumber| integer| | | | | | | Unique number identifying the product group.|
| productGroup<wbr>.products| string| uri| True| | | | | A reference to the products in this product group resource.|
| productGroup<wbr>.salesAccounts| string| uri| True| | | | | A reference to the sales accounts in this product group resource.|
| productGroup<wbr>.self| string| uri| | | | | | A unique reference to the product group resource.|
| productNumber| string| | | 25| 1| | | Unique alphanumeric product number.|
| recommendedPrice| number| | | | | | | Recommended retail price of the goods.|
| salesPrice| number| | | | | | | This is the unit net price that will appear on invoice lines when a product is added to an invoice line.|
| self| string| uri| | | | | | A unique reference to this product resource.|
| unit| object| | | | | | | A reference to the unit this product is counted in.|
| unit<wbr>.name| string| | | 8| | | | The name of the unit.|
| unit<wbr>.self| string| uri| | | | | | A unique reference to the unit resource.|
| unit<wbr>.unitNumber| integer| | | | | | | Unique number identifying the unit.|


