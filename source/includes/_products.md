## Products

This endpoint lists all products and their various attributes. Products can be updated, created and deleted here as well.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/opret-en-vare-ydelse](http://wiki2.e-conomic.dk/salg/opret-en-vare-ydelse).

### <span class='get'>GET</span> /products

This endpoint allows you to fetch a collection of all products.

<!_products.get.schema.md!>

### <span class='get'>GET</span> /products/:productNumber

This endpoint allows you to fetch a specific product.

<!_products.productNumber.get.schema.md!>

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

<!_products.post.schema.md!>

### <span class='put'>PUT</span> /products/:productNumber

This endpoint allows you to update an existing product.

<!_products.productNumber.put.schema.md!>

### <span class='delete'>DELETE</span> /products/:productNumber

This endpoint allows you to delete an existing product. Please note that you can't delete a product that is in use. It will return HttpStatusCode.NoContent (204) on success.

Currency specific product prices are excluding base currency price. The base currency price is available as sales price on the product.

### <span class='get'>GET</span> /products/:productNumber/pricing/currency-specific-sales-prices

This endpoint allows you to fetch a collection of all currency specific product prices belonging to a specific product. This does not include base currency price. Base currency price is available as sales price on the product

<!_products.productNumber.pricing.currency-specific-sales-prices.get.schema.md!>

### <span class='get'>GET</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to fetch a single currency specific product price belonging to a specific product.

<!_products.productNumber.pricing.currency-specific-sales-prices.currencyCode.get.schema.md!>

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

<!_products.productNumber.pricing.currency-specific-sales-prices.post.schema.md!>

### <span class='put'>PUT</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to update a currency specific product price belonging to a specific product.

<!_products.productNumber.pricing.currency-specific-sales-prices.currencyCode.put.schema.md!>

### <span class='delete'>DELETE</span> /products/:productNumber/pricing/currency-specific-sales-prices/:currencyCode

This endpoint allows you to delete an existing currency specific product price. It will return HttpStatusCode.NoContent (204) on success.
