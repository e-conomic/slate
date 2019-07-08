## Products

This endpoint lists all products and their various attributes. Products can be updated, created and deleted here as well.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/opret-en-vare-ydelse](http://wiki2.e-conomic.dk/salg/opret-en-vare-ydelse).

### <span class='get'>GET</span> /products

This endpoint allows you to fetch a collection of all products.

#### Schema name

[products.get.schema.json](https://restapi.e-conomic.com/schema/products.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

departmentalDistribution.self, name, productGroup, productGroup.accrual.accountsSummed.fromAccount.self, productGroup.accrual.accountsSummed.toAccount.self, productGroup.accrual.contraAccount.self, productGroup.accrual.totalFromAccount.self, productGroup.accrual.vatAccount.self, productGroup.self, productNumber, self, unit.self

#### Filterable properties

barCode, barred, costPrice, departmentalDistribution.departmentalDistributionNumber, description, inventory.grossWeight, inventory.netWeight, inventory.packageVolume, inventory.recommendedCostPrice, lastUpdated, name, productGroup.productGroupNumber, productNumber, recommendedPrice, salesPrice, unit.unitNumber

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
| lastUpdated| string| full-date| True| | | | | The last time the product was updated<wbr>, either directly or through inventory changed. The date is formatted according to ISO-8601.|
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



### <span class='get'>GET</span> /products/:productNumber

This endpoint allows you to fetch a specific product.

#### Schema name

[products.productNumber.get.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

departmentalDistribution.self, name, productGroup, productGroup.accrual.accountsSummed.fromAccount.self, productGroup.accrual.accountsSummed.toAccount.self, productGroup.accrual.contraAccount.self, productGroup.accrual.totalFromAccount.self, productGroup.accrual.vatAccount.self, productGroup.self, productNumber, self, unit.self

#### Filterable properties

barCode, costPrice, description, inventory.grossWeight, inventory.netWeight, inventory.packageVolume, lastUpdated, name, productNumber, recommendedPrice, salesPrice

#### Sortable properties

barCode, costPrice, description, inventory.grossWeight, inventory.netWeight, inventory.packageVolume, lastUpdated, name, productNumber, recommendedPrice, salesPrice


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
| inventory<wbr>.grossWeight| number| | | | | | | The gross weight of the product.|
| inventory<wbr>.inStock| number| | True| | | | | The number of units in stock including any that have been ordered by customers.|
| inventory<wbr>.netWeight| number| | | | | | | The net weight of the product.|
| inventory<wbr>.orderedByCustomers| number| | True| | | | | The number of units that have been ordered by customers<wbr>, but haven't been sold yet.|
| inventory<wbr>.orderedFromSuppliers| number| | True| | | | | The number of units that have been ordered from your suppliers<wbr>, but haven't been delivered to you yet.|
| inventory<wbr>.packageVolume| number| | | | | | | The volume the shipped package makes up.|
| inventory<wbr>.recommendedCostPrice| number| | | | | | | The recommendedCostPrice of the product. The field is required if the Inventory module is enabled<wbr>, but the validation cannot throw errors since it would cause issues for people already using the Inventory module. If no value is provided it is set to 0.0.|
| invoices| object| | | | | | | A collection of convenience links to invoices that contains this product.|
| invoices<wbr>.booked| string| uri| | | | | | A unique reference to the booked invoices containing this product.|
| invoices<wbr>.drafts| string| uri| | | | | | A unique reference to the draft invoices containing this product.|
| lastUpdated| string| full-date| True| | | | | The last time the product was updated<wbr>, either directly or through inventory changed. The date is formatted according to ISO-8601.|
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



### <span class='post'>POST</span> /products

```javascript
var settings = {
  "crossDomain": true,
  "url": "https://restapi.e-conomic.com/products",
  "method": "POST",
  "headers": {
    "x-appsecrettoken": "demo",
    "x-agreementgranttoken": "demo",
    "content-type": "application/json",
  },
  "data": {
		'productNumber': '500',
		'name': 'My test product',
		'costPrice': 50,
		'salesPrice': 100,
		'productGroup': {
			'productGroupNumber': 1
		}
	}
  }

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

This endpoint allows you to create a new product.

#### Schema name

[products.post.schema.json](https://restapi.e-conomic.com/schema/products.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, productGroup, productNumber




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | ----------- |
| barCode| string| | | 50| | | String representation of a machine readable barcode symbol that represents this product.|
| barred| boolean| | | | | | If this value is true<wbr>, then the product can no longer be sold<wbr>, and trying to book an invoice with this product will not be possible.|
| costPrice| number| | | | | | The cost of the goods. If you have the inventory module enabled<wbr>, this is read-only and will just be ignored.|
| departmentalDistribution| object| | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.distributionType| string| | | | | | Type of the distribution|
| departmentalDistribution<wbr>.self| string| uri| | | | | A unique reference to the departmental distribution resource.|
| description| string| | | 500| | | Free text description of product.|
| inventory| object| | | | | | A collection of properties that are only applicable if the inventory module is enabled.|
| inventory<wbr>.available| number| | True| | | | The number of units available to sell. This is the difference between the amount in stock and the amount ordered by customers.|
| inventory<wbr>.grossWeight| number| | True| | | | The gross weight of the product.|
| inventory<wbr>.inStock| number| | True| | | | The number of units in stock including any that have been ordered by customers.|
| inventory<wbr>.netWeight| number| | True| | | | The net weight of the product.|
| inventory<wbr>.orderedByCustomers| number| | True| | | | The number of units that have been ordered by customers<wbr>, but haven't been sold yet.|
| inventory<wbr>.orderedFromSuppliers| number| | True| | | | The number of units that have been ordered from your suppliers<wbr>, but haven't been delivered to you yet.|
| inventory<wbr>.packageVolume| number| | | | | | The volume the shipped package makes up.|
| inventory<wbr>.recommendedCostPrice| number| | | | | | The recommendedCostPrice of the product. The field is required if the Inventory module is enabled.|
| name| string| | | 300| 1| | Descriptive name of the product.|
| productGroup| object| | | | | | A reference to the product group this product is contained within.|
| productGroup<wbr>.productGroupNumber| integer| | | | | | Unique number identifying the product group.|
| productGroup<wbr>.self| string| uri| | | | | A unique reference to the product group resource.|
| productNumber| string| | | 25| 1| | Unique alphanumeric product number.|
| recommendedPrice| number| | | | | | Recommended retail price of the goods.|
| salesPrice| number| | | | | | This is the unit net price that will appear on invoice lines when a product is added to an invoice line.|
| unit| object| | | | | | A reference to the unit this product is counted in.|
| unit<wbr>.self| string| uri| | | | | A unique reference to the unit resource.|
| unit<wbr>.unitNumber| integer| | | | | | Unique number identifying the unit.|



### <span class='put'>PUT</span> /products/:productNumber

This endpoint allows you to update an existing product.

#### Schema name

[products.productNumber.put.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, productGroup, productNumber




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | ----------- |
| barCode| string| | | 50| | | String representation of a machine readable barcode symbol that represents this product.|
| barred| boolean| | | | | | If this value is true<wbr>, then the product can no longer be sold<wbr>, and trying to book an invoice with this product will not be possible.|
| costPrice| number| | | | | | The cost of the goods. If you have the inventory module enabled<wbr>, this is read-only and will just be ignored.|
| departmentalDistribution| object| | | | | | A departmental distribution defines which departments this entry is distributed between. This requires the departments module to be enabled.|
| departmentalDistribution<wbr>.departmentalDistributionNumber| integer| | | | | 1| A unique identifier of the departmental distribution.|
| departmentalDistribution<wbr>.distributionType| string| | | | | | Type of the distribution|
| departmentalDistribution<wbr>.self| string| uri| | | | | A unique reference to the departmental distribution resource.|
| description| string| | | 500| | | Free text description of product.|
| inventory| object| | | | | | A collection of properties that are only applicable if the inventory module is enabled.|
| inventory<wbr>.available| number| | True| | | | The number of units available to sell. This is the difference between the amount in stock and the amount ordered by customers.|
| inventory<wbr>.grossWeight| number| | True| | | | The gross weight of the product.|
| inventory<wbr>.inStock| number| | True| | | | The number of units in stock including any that have been ordered by customers.|
| inventory<wbr>.netWeight| number| | True| | | | The net weight of the product.|
| inventory<wbr>.orderedByCustomers| number| | True| | | | The number of units that have been ordered by customers<wbr>, but haven't been sold yet.|
| inventory<wbr>.orderedFromSuppliers| number| | True| | | | The number of units that have been ordered from your suppliers<wbr>, but haven't been delivered to you yet.|
| inventory<wbr>.packageVolume| number| | | | | | The volume the shipped package makes up.|
| inventory<wbr>.recommendedCostPrice| number| | | | | | The recommendedCostPrice of the product. The field is required if the Inventory module is enabled.|
| name| string| | | 300| 1| | Descriptive name of the product.|
| productGroup| object| | | | | | A reference to the product group this product is contained within.|
| productGroup<wbr>.productGroupNumber| integer| | | | | | Unique number identifying the product group.|
| productGroup<wbr>.self| string| uri| | | | | A unique reference to the product group resource.|
| productNumber| string| | | 25| 1| | Unique alphanumeric product number.|
| recommendedPrice| number| | | | | | Recommended retail price of the goods.|
| salesPrice| number| | | | | | This is the unit net price that will appear on invoice lines when a product is added to an invoice line.|
| unit| object| | | | | | A reference to the unit this product is counted in.|
| unit<wbr>.self| string| uri| | | | | A unique reference to the unit resource.|
| unit<wbr>.unitNumber| integer| | | | | | Unique number identifying the unit.|



### <span class='delete'>DELETE</span> /products/:productNumber

This endpoint allows you to delete an existing product. Please note that you can't delete a product that is in use. It will return HttpStatusCode.NoContent (204) on success.

Currency specific product prices are excluding base currency price. The base currency price is available as sales price on the product.

### <span class='get'>GET</span> /products/:productNumber/pricing/currency-specific-sales-prices

This endpoint allows you to fetch a collection of all currency specific product prices belonging to a specific product. This does not include base currency price. Base currency price is available as sales price on the product

#### Schema name

[products.productNumber.pricing.currency-specific-sales-prices.get.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.pricing.currency-specific-sales-prices.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

currency.self, price, product.productNumber, product.self, self

#### Filterable properties

currency.currencyCode, price, product.productNumber

#### Sortable properties

currency.currencyCode, price, product.productNumber


#### Properties

| Name | Type | Format | Max length | Min length | Description |
| ---- | ---- | ------ | ---------- | ---------- | ----------- |
| currency| object| | | | A reference to the currency this product price is in.|
| currency<wbr>.currencyCode| string| | | | The ISO 4217 currency code of the invoice.|
| currency<wbr>.self| string| uri| | | A unique reference to the currency resource.|
| price| number| | | | The price of the product.|
| product| object| | | | A reference to the product this product price belongs to.|
| product<wbr>.productNumber| string| | 25| 1| Unique alphanumeric product number.|
| product<wbr>.self| string| uri| | | A unique reference to the product resource.|
| self| string| uri| | | A unique reference to this product-prices resource.|



### <span class='get'>GET</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to fetch a single currency specific product price belonging to a specific product.

#### Schema name

[products.productNumber.pricing.currency-specific-sales-prices.currencyCode.get.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.pricing.currency-specific-sales-prices.currencyCode.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency.self, price, product.productNumber, product.self, self

#### Filterable properties

currency.currencyCode, price, product.productNumber

#### Sortable properties

currency.currencyCode, price, product.productNumber


#### Properties

| Name | Type | Format | Max length | Min length | Description |
| ---- | ---- | ------ | ---------- | ---------- | ----------- |
| currency| object| | | | A reference to the currency this product price is in.|
| currency<wbr>.currencyCode| string| | | | The ISO 4217 currency code of the invoice.|
| currency<wbr>.self| string| uri| | | A unique reference to the currency resource.|
| price| number| | | | The price of the product.|
| product| object| | | | A reference to the product this product price belongs to.|
| product<wbr>.productNumber| string| | 25| 1| Unique alphanumeric product number.|
| product<wbr>.self| string| uri| | | A unique reference to the product resource.|
| self| string| uri| | | A unique reference to this product-prices resource.|



### <span class='post'>POST</span> /products/:productNumber/pricing/currency-specific-sales-prices

```javascript
var settings = {
  "crossDomain": true,
  "url": "https://restapi.e-conomic.com/products/1/pricing/currency-specific-sales-prices",
  "method": "POST",
  "headers": {
    "x-appsecrettoken": "demo",
    "x-agreementgranttoken": "demo",
    "content-type": "application/json",
  },
  "data": {
		'price': 88,
		'currency': {
			'code': 'SEK'
		},
		'product': {
			'productNumber": '1'
		}
	}
  }

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

This endpoint allows you to create a new currency specific product price on a product.

#### Schema name

[products.productNumber.pricing.currency-specific-sales-prices.post.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.pricing.currency-specific-sales-prices.post.schema.json)

#### Return type

This method returns a single object

#### Required property

price

#### Filterable properties

currency.code, price, product.productNumber

#### Sortable properties

currency.code, price, product.productNumber


#### Properties

| Name | Type | Format | Max length | Min length | Description |
| ---- | ---- | ------ | ---------- | ---------- | ----------- |
| currency| object| | | | A reference to the currency this product price is in.|
| currency<wbr>.code| string| | | | The ISO 4217 currency code of the invoice.|
| currency<wbr>.self| string| uri| | | A unique reference to the currency resource.|
| price| number| | | | The price of the product.|
| product| object| | | | A reference to the product this product price belongs to.|
| product<wbr>.productNumber| string| | 25| 1| Unique alphanumeric product number.|
| product<wbr>.self| string| uri| | | A unique reference to the product resource.|



### <span class='put'>PUT</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to update a currency specific product price belonging to a specific product.

#### Schema name

[products.productNumber.pricing.currency-specific-sales-prices.currencyCode.put.schema.json](https://restapi.e-conomic.com/schema/products.productNumber.pricing.currency-specific-sales-prices.currencyCode.put.schema.json)

#### Return type

This method returns a single object

#### Required property

price

#### Filterable properties

currency.currencyCode, price, product.productNumber

#### Sortable properties

currency.currencyCode, price, product.productNumber


#### Properties

| Name | Type | Format | Max length | Min length | Description |
| ---- | ---- | ------ | ---------- | ---------- | ----------- |
| currency| object| | | | A reference to the currency this product price is in.|
| currency<wbr>.currencyCode| string| | | | The ISO 4217 currency code of the invoice.|
| currency<wbr>.self| string| uri| | | A unique reference to the currency resource.|
| price| number| | | | The price of the product.|
| product| object| | | | A reference to the product this product price belongs to.|
| product<wbr>.productNumber| string| | 25| 1| Unique alphanumeric product number.|
| product<wbr>.self| string| uri| | | A unique reference to the product resource.|
| self| string| uri| | | A unique reference to this product-prices resource.|



### <span class='delete'>DELETE</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to delete an existing currency specific product price. It will return HttpStatusCode.NoContent (204) on success.
