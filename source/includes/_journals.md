## Journals

<aside class="warning">
This endpoint is experimental and subject to change
</aside>

Journals contain your draft transactions, that can be modified until the journal is booked or the drafts are deleted. Journals are known as Kassekladder in Danish.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/regnskab/kassekladder-daglig](http://wiki2.e-conomic.dk/regnskab/kassekladder-daglig).


### <span class='get'>GET</span> /journals-experimental

This is the root endpoint for the journals endpoint. It provides you with an overview of available journals on the agreement.
It also includes convenience links to a few templates that allow you to create entries in the journal with ease.

<!_journals-experimental.get.schema.md!>

### <span class='get'>GET</span> /journals-experimental/:journalNumber

This endpoint provides you the information regarding a specific journal and the settings associated with it.
From here you can navigate to the entries endpoint - which will return the entire collection of entries across all types in the journal, or to the vouchers endpoint which will return entries grouped by the voucher number set on the entry.
The journal also includes convenience links to relevant templates that allow you to create entries in the journal with ease.

<!_journals-experimental.journalNumber.get.schema.md!>

### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers

This endpoint returns a collection of vouchers containing entries as assigned by the voucher number. 

<!_journals-experimental.journalNumber.vouchers.get.schema.md!>

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

<!_journals-experimental.journalNumber.vouchers.post.schema.md!>

### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber

Provides detailed information regarding a specific entry that is located on the given voucher.

<!_journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.get.schema.md!>

### <span class='get'>GET</span> /journals-experimental/:journalNumber/vouchers/:accountingYear-voucherNumber/attachment

Provides file attachment metadata. E.g. number of pages available on the document.

<!_journals-experimental.journalNumber.vouchers.accountingYear-voucherNumber.attachment.get.schema.md!>

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

<!_journals-experimental.journalNumber.entries.get.schema.md!>

### <span class='delete'>DELETE</span> /journals-experimental/:journalNumber/entries/:entryNumber

Removes an entry from the given journal.

### <span class='get'>GET</span> /journals-experimental/:journalNumber/templates

Returns the templates available for journal entries. Templates are used to simplifiy the resource creation that can be quite complex to build. Please note that templates return entry objects that must be wrapped in a voucher object and POSTed to /vouchers.

<!_journals-experimental.journalNumber.templates.get.schema.md!>

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

<!_journals-experimental.journalNumber.templates.financeVoucher.get.schema.md!>

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

<!_journals-experimental.journalNumber.templates.manualCustomerInvoice.get.schema.md!>