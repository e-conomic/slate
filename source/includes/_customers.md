## Customers

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/kunder-kunder-ny-kunde](http://wiki2.e-conomic.dk/salg/kunder-kunder-ny-kunde).

### <span class='get'>GET</span> /customers

This endpoint provides you with a collection of customers. 

#### Schema name

[customers.get.schema.json](https://restapi.e-conomic.com/schema/customers.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

attention.self, currency, customerContact.self, customerGroup, customerGroup.self, defaultDeliveryLocation.self, invoices.self, layout.self, name, paymentTerms, paymentTerms.self, salesPerson.self, self, templates.self, totals.self, vatZone, vatZone.self

#### Filterable properties

address, balance, barred, city, corporateIdentificationNumber, country, creditLimit, currency, customerNumber, ean, email, lastUpdated, name, publicEntryNumber, telephoneAndFaxNumber, vatNumber, website, zip

#### Sortable properties

address, balance, city, corporateIdentificationNumber, country, creditLimit, currency, customerNumber, ean, email, lastUpdated, name, publicEntryNumber, telephoneAndFaxNumber, vatNumber, website, zip


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
| customerContact<wbr>.customerContactNumber| integer| | | | | | | The unique identifier of the customer contact.|
| customerContact<wbr>.self| string| uri| | | | | | A unique link reference to the customer contact item.|
| customerGroup| object| | | | | | | Reference to the customer group this customer is attached to.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| defaultDeliveryLocation| object| | | | | | | Customers default delivery location.|
| defaultDeliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | The unique identifier of the delivery location.|
| defaultDeliveryLocation<wbr>.self| string| uri| | | | | | A unique link reference to the delivery location.|
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



### <span class='get'>GET</span> /customers/:customerNumber

Returns a specific customer.

#### Schema name

[customers.customerNumber.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

attention.self, currency, customerContact.self, customerGroup, customerGroup.self, defaultDeliveryLocation.self, invoices.self, layout.self, name, paymentTerms, paymentTerms.self, salesPerson.self, self, templates.self, totals.self, vatZone, vatZone.self




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
| corporateIdentificationNumber| string| | | 40| | | | Corporate Identification Number. For example CVR in Denmark.|
| country| string| | | 50| | | | The customer's country.|
| creditLimit| number| | | | | | | A maximum credit for this customer. Once the maximum is reached or passed in connection with an order/quotation/invoice for this customer you see a warning in e-conomic.|
| currency| string| | | 3| 3| | | Default payment currency.|
| customerContact| object| | | | | | | Reference to main contact employee at customer.|
| customerContact<wbr>.customerContactNumber| integer| | | | | | | The unique identifier of the customer contact.|
| customerContact<wbr>.self| string| uri| | | | | | A unique link reference to the customer contact item.|
| customerGroup| object| | | | | | | Reference to the customer group this customer is attached to.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| defaultDeliveryLocation| object| | | | | | | Customer's default delivery location.|
| defaultDeliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | The unique identifier of the delivery location.|
| defaultDeliveryLocation<wbr>.self| string| uri| | | | | | A unique link reference to the delivery location.|
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
| paymentTerms| object| | | | | | | The default payment terms for the customer.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | | | The unique identifier of the payment terms.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique link reference to the payment terms item.|
| publicEntryNumber| string| | | 50| | | | The public entry number is used for electronic invoicing<wbr>, to define the account invoices will be registered on at the customer.|
| salesPerson| object| | | | | | | Reference to the employee responsible for contact with this customer.|
| salesPerson<wbr>.employeeNumber| integer| | | | | | | The unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | | A unique link reference to the employee resource.|
| self| string| uri| | | | | | The unique self reference of the customer resource.|
| telephoneAndFaxNumber| string| | | 255| | | | The customer's telephone and/or fax number.|
| templates| object| | | | | | | Templates available for the given customer|
| templates<wbr>.invoice| string| uri| | | | | | A unique link reference to the invoice template for the given customer.|
| templates<wbr>.invoiceLine| string| uri| | | | | | A unique link reference to the invoice line template for the given customer.|
| templates<wbr>.self| string| uri| | | | | | A unique link reference to the customer template item.|
| totals| object| | | | | | | Templates available for the given customer|
| totals<wbr>.booked| string| uri| | | | | | The unique reference to the booked invoice totals for this customer.|
| totals<wbr>.drafts| string| uri| | | | | | The unique reference to the draft invoice totals for this customer.|
| totals<wbr>.self| string| uri| | | | | | A unique link reference to the totals resource for this customer.|
| vatNumber| string| | | 50| | | | The customer's value added tax identification number. This field is only available to agreements in Sweden<wbr>, UK<wbr>, Germany<wbr>, Poland and Finland. Not to be mistaken for the danish CVR number<wbr>, which is defined on the corporateIdentificationNumber property.|
| vatZone| object| | | | | | | Indicates in which VAT-zone the customer is located (e.g.: domestically<wbr>, in Europe or elsewhere abroad).|
| vatZone<wbr>.self| string| uri| | | | | | A unique link reference to the VAT-zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | | The unique identifier of the VAT-zone.|
| website| string| | | 255| | | | Customer website<wbr>, if applicable.|
| zip| string| | | 30| | | | The customer's postcode.|



### <span class='get'>GET</span> /customers/:customerNumber/totals

Returns a specific customer totals.

#### Schema name

[customers.customerNumber.totals.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.totals.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| booked| string| uri| A reference of the customer booked invoices totals resource.|
| drafts| string| uri| A reference of the customer draft invoices totals resource.|
| self| string| uri| The unique self reference of the customer totals resource.|



### <span class='post'>POST</span> /customers

This endpoint allows you to create a new customer.

#### Schema name

[customers.post.schema.json](https://restapi.e-conomic.com/schema/customers.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, customerGroup, name, paymentTerms, vatZone




#### Properties

| Name | Type | Format | Read-only | Max length | Min length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | ---------- | --------- | --------- | ----------- |
| address| string| | | 510| | | | Address for the customer including street and number.|
| balance| number| | True| | | | | The outstanding amount for this customer.|
| barred| boolean| | | | | | | Boolean indication of whether the customer is barred from invoicing.|
| city| string| | | 50| | | | The customer's city.|
| corporateIdentificationNumber| string| | | 40| | | | Corporate Identification Number. For example CVR in Denmark.|
| country| string| | | 50| | | | The customer's country.|
| creditLimit| number| | | | | | | A maximum credit for this customer. Once the maximum is reached or passed in connection with an order/quotation/invoice for this customer you see a warning in e-conomic.|
| currency| string| | | 3| 3| | | Default payment currency.|
| customerGroup| object| | | | | | | In order to set up a new customer<wbr>, it is necessary to specify a customer group. It is useful to group a company’s customers (e.g.<wbr>, ‘domestic’ and ‘foreign’ customers) and to link the group members to the same account when generating reports.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits. If no customer number is specified a number will be supplied by the system.|
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
| priceGroup|
| publicEntryNumber| string| | | 50| | | | The public entry number is used for electronic invoicing<wbr>, to define the account invoices will be registered on at the customer.|
| salesPerson| object| | | | | | | Reference to the employee responsible for contact with this customer.|
| salesPerson<wbr>.employeeNumber| integer| | | | | | | The unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | | A unique link reference to the employee resource.|
| telephoneAndFaxNumber| string| | | 255| | | | The customer's telephone and/or fax number.|
| vatNumber| string| | | 50| | | | The customer's value added tax identification number. This field is only available to agreements in Sweden<wbr>, UK<wbr>, Germany<wbr>, Poland and Finland. Not to be mistaken for the danish CVR number<wbr>, which is defined on the corporateIdentificationNumber property.|
| vatZone| object| | | | | | | Indicates in which VAT-zone the customer is located (e.g.: domestically<wbr>, in Europe or elsewhere abroad).|
| vatZone<wbr>.self| string| uri| | | | | | A unique link reference to the VAT-zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | | The unique identifier of the VAT-zone.|
| website| string| | | 255| | | | Customer website<wbr>, if applicable.|
| zip| string| | | 30| | | | The customer's postcode.|



### <span class='put'>PUT</span> /customers/:customerNumber

This endpoint allows you to update an existing customer.

#### Schema name

[customers.customerNo.put.schema.json](https://restapi.e-conomic.com/schema/customers.customerNo.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

currency, customerGroup, name, paymentTerms, vatZone




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
| corporateIdentificationNumber| string| | | 40| | | | Corporate Identification Number. For example CVR in Denmark.|
| country| string| | | 50| | | | The customer's country.|
| creditLimit| number| | | | | | | A maximum credit for this customer. Once the maximum is reached or passed in connection with an order/quotation/invoice for this customer you see a warning in e-conomic.|
| currency| string| | | 3| 3| | | Default payment currency.|
| customerContact| object| | | | | | | Reference to main contact employee at customer.|
| customerContact<wbr>.customerContactNumber| integer| | | | | | | The unique identifier of the customer contact.|
| customerContact<wbr>.self| string| uri| | | | | | A unique link reference to the customer contact item.|
| customerGroup| object| | | | | | | In order to update a customer<wbr>, it is necessary to specify a customer group. It is useful to group a company’s customers (e.g.<wbr>, ‘domestic’ and ‘foreign’ customers) and to link the group members to the same account when generating reports.|
| customerGroup<wbr>.customerGroupNumber| integer| | | | | | | The unique identifier of the customer group.|
| customerGroup<wbr>.self| string| uri| | | | | | A unique link reference to the customer group item.|
| customerNumber| integer| | | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| defaultDeliveryLocation| object| | | | | | | Customer’s default delivery location.|
| defaultDeliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | The unique identifier of the delivery location.|
| defaultDeliveryLocation<wbr>.self| string| uri| | | | | | A unique link reference to the delivery location.|
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
| priceGroup|
| publicEntryNumber| string| | | 50| | | | The public entry number is used for electronic invoicing<wbr>, to define the account invoices will be registered on at the customer.|
| salesPerson| object| | | | | | | Reference to the employee responsible for contact with this customer.|
| salesPerson<wbr>.employeeNumber| integer| | | | | | | The unique identifier of the employee.|
| salesPerson<wbr>.self| string| uri| | | | | | A unique link reference to the employee resource.|
| telephoneAndFaxNumber| string| | | 255| | | | The customer's telephone and/or fax number.|
| vatNumber| string| | | 50| | | | The customer's value added tax identification number. This field is only available to agreements in Sweden<wbr>, UK<wbr>, Germany<wbr>, Poland and Finland. Not to be mistaken for the danish CVR number<wbr>, which is defined on the corporateIdentificationNumber property.|
| vatZone| object| | | | | | | Indicates in which VAT-zone the customer is located (e.g.: domestically<wbr>, in Europe or elsewhere abroad).|
| vatZone<wbr>.self| string| uri| | | | | | A unique link reference to the VAT-zone item.|
| vatZone<wbr>.vatZoneNumber| integer| | | | | | | The unique identifier of the VAT-zone.|
| website| string| | | 255| | | | Customer website<wbr>, if applicable.|
| zip| string| | | 30| | | | The customer's postcode.|



### <span class='delete'>DELETE</span> /customers/:customerNumber

This endpoint allows you to  delete a customer. This delete operation will return a HttpStatusCode.NoContent (204) on success.

### <span class='get'>GET</span> /customers/:customerNumber/templates/

Returns the templates available for customers. Templates are used to simplify the creation of 
resources that can otherwise be complex to build. An example of this is an Invoice.

#### Schema name

[customers.customerNumber.templates.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.templates.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| invoice| string| uri| The GET link to a draft invoice template.|
| invoiceline| string| uri| The GET link to a draft invoice line template.|
| self| string| uri| The self reference of the customer templates.|



### <span class='get'>GET</span> /customers/:customerNumber/templates/invoice

Returns a draft invoice template based on the customer. This can be modified and 
posted to [/invoices/drafts](#post-invoices-drafts)

#### Schema name

[customers.customerNumber.templates.invoice.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.templates.invoice.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.self, references.salesPerson.self




#### Properties

| Name | Type | Format | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ----------- |
| currency| string| | | | | The ISO 4217 currency code of the invoice. This represents the trading currency.|
| customer| object| | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | A unique reference to the customer resource.|
| date| string| full-date| | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | 255| | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | 50| | | The city of the place of delivery|
| delivery<wbr>.country| string| | 50| | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | 100| | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | 30| | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | The exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency.|
| paymentTerms| object| | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | 0| A unique identifier of the payment term.|
| paymentTerms<wbr>.self| string| uri| | | | A unique reference to the payment term resource.|
| recipient| object| | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | 250| | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | 250| | | The city of the actual recipient.|
| recipient<wbr>.country| string| | 50| | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | 13| | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | 250| | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | 40| | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | 50| | | The zip code of the actual recipient.|
| references| object| | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | 0| Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | A unique reference to the customer contact resource.|
| references<wbr>.salesPerson| object| | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | 1| Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | A unique reference to the employee resource.|



### <span class='get'>GET</span> /customers/:customerNumber/templates/invoiceline

This returns a collection of draft invoice lines, one for each product, with the corresponding link to the full draft invoice line template.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/customers/101/templates/invoiceline",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"	
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[customers.customerNumber.templates.invoiceline.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.templates.invoiceline.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

product.self, self

#### Filterable properties

description, product.productNumber

#### Sortable properties

product.productNumber


#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| description| string| | 2500| A description of the product or service sold.|
| product| object| | | The product or service offered on the invoice line.|
| product<wbr>.productNumber| string| | 25| The unique product number. This can be a stock keeping unit identifier (SKU).|
| product<wbr>.self| string| uri| | A unique reference to the product resource.|
| self| string| uri| | A unique reference to the draft invoice line template resource.|



### <span class='get'>GET</span> /customers/:customerNumber/templates/invoiceline/:productNumber

This returns the invoice line template for the specified product. This template can be used to easily create an invoice line on an existing draft invoice. Please note that this method accepts an additional parameter - 'quantity', in the query string, which defines the quantity on the template. This parameter can be used to ensure the correct discount level for a given customer, when using discount levels in the inventory module.

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/customers/101/templates/invoiceline/101?quantity=5",
    dataType: "json",
    headers: {
        'X-AppSecretToken': "demo",
        'X-AgreementGrantToken': "demo",
        'Content-Type': "application/json"	
    },
    type: "GET"
})
    .always(function (data) {
    $("#output").text(JSON.stringify(data, null, 4));
});
```

#### Schema name

[customers.customerNumber.templates.invoiceline.productNumber.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.templates.invoiceline.productNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

product.self, self, unit.self




#### Properties

| Name | Type | Format | Max length | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | ----------- |
| description| string| | 2500| | A description of the product or service sold.|
| discountPercentage| number| | | | A line discount expressed as a percentage.|
| marginInBaseCurrency| number| | | | The difference between the net price and the cost price on the invoice line in base currency.|
| marginPercentage| number| | | | The margin on the invoice line expressed as a percentage.|
| product| object| | | | The product or service offered on the invoice line.|
| product<wbr>.productNumber| string| | 25| | The unique product number. This can be a stock keeping unit identifier (SKU).|
| product<wbr>.self| string| uri| | | A unique reference to the product resource.|
| quantity| number| | | | The number of units of goods on the invoice line. By default value is set to 1<wbr>, which can be modified using parameter query string.|
| self| string| uri| | | A unique reference to the draft invoice line template resource.|
| unit| object| | | | The unit of measure applied to the invoice line.|
| unit<wbr>.self| string| uri| | | A unique reference to the unit resource.|
| unit<wbr>.unitNumber| integer| | | 0| The unique identifier of the unit.|
| unitCostPrice| number| | | | The cost price of 1 unit of the goods or services in the invoice currency.|
| unitNetPrice| number| | | | The price of 1 unit of the goods or services on the invoice line in the invoice currency.|



### <span class='get'>GET</span> /customers/:customerNumber/contacts

This endpoint provides you with a collection of customer contacts.

#### Schema name

[customers.customerNumber.contacts.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.contacts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, self

#### Filterable properties

customer.customerNumber, customerContactNumber, eInvoiceId, email, name, phone, sortKey

#### Sortable properties

customer.customerNumber, customerContactNumber, eInvoiceId, email, name, phone, sortKey


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| customer| object| | | | | | The customer this contact belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| customerContactNumber| number| | | | | | Unique numerical identifier of the customer contact.|
| deleted| boolean| | | | | | Flag indicating if the contact person is deleted.|
| eInvoiceId| string| | 50| | | | Electronic invoicing Id. This will appear on EAN invoices in the field <cbc:ID>. Note this is not available on UK agreements.|
| email| string| | 255| | | | Customer contact e-mail address. This is where copies of sales documents are sent.|
| emailNotifications| array| | | | | invoices<wbr>, orders<wbr>, quotations<wbr>, reminders| This array specifies what events the contact person should recieve email notifications on. Note that limited plans only have access to invoice notifications.|
| name| string| | 255| | | | Customer contact name.|
| notes| string| | 2000| | | | Any notes you need to keep on a contact person.|
| phone| string| | 50| | | | Customer contact phone number.|
| self| string| uri| | | | | The unique self reference of the customer contact resource.|
| sortKey| integer| | | | 1| | The customer contact number displayed in the e-conomic web interface.|



### <span class='get'>GET</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint provides you with a specific customer contacts.

#### Schema name

[customers.customerNumber.contacts.contactNumber.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.contacts.contactNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, self

#### Filterable properties

customer.customerNumber

#### Sortable properties

customer.customerNumber


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| customer| object| | | | | | The customer this contact belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| customerContactNumber| number| | | | | | Unique numerical identifier of the customer contact.|
| deleted| boolean| | | | | | Flag indicating if the contact person is deleted.|
| eInvoiceId| string| | 50| | | | Electronic invoicing Id. This will appear on EAN invoices in the field <cbc:ID>. Note this is not available on UK agreements.|
| email| string| | 255| | | | Customer contact e-mail address. This is where copies of sales documents are sent.|
| emailNotifications| array| | | | | invoices<wbr>, orders<wbr>, quotations<wbr>, reminders| This array specifies what events the contact person should recieve email notifications on. Note that limited plans only have access to invoice notifications.|
| name| string| | 255| | | | Customer contact name.|
| notes| string| | 2000| | | | Any notes you need to keep on a contact person.|
| phone| string| | 50| | | | Customer contact phone number.|
| self| string| uri| | | | | The unique self reference of the customer contact resource.|
| sortKey| integer| | | | 1| | Sort key shows a per agreement index in the UI.|



### <span class='post'>POST</span> /customers/:customerNumber/contacts

This endpoint allows you to create a new customer contact.

#### Schema name

[customers.customerNumber.contacts.post.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.contacts.post.schema.json)

#### Return type

This method returns a single object

#### Required property

name




#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| customer| object| | | | | | The customer this contact belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| eInvoiceId| string| | 50| | | | Electronic invoicing Id. This will appear on EAN invoices in the field <cbc:ID>. Note this is not available on UK agreements.|
| email| string| | 255| | | | Customer contact e-mail address. This is where copies of sales documents are sent.|
| emailNotifications| array| | | | | invoices<wbr>, orders<wbr>, quotations<wbr>, reminders| This array specifies what events the contact person should recieve email notifications on. Note that limited plans only have access to invoice notifications.|
| name| string| | 255| | | | Customer contact name.|
| notes| string| | 2000| | | | Any notes you need to keep on a contact person.|
| phone| string| | 50| | | | Customer contact phone number.|



### <span class='put'>PUT</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint allows you to update an existing customer contact.

#### Schema name

[customers.customerNumber.contacts.contactNumber.put.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.contacts.contactNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

customerContactNumber, name




#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| customer| object| | | | | | The customer this contact belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| customerContactNumber| integer| | | | | | Customer contact number.|
| eInvoiceId| string| | 50| | | | Electronic invoicing Id. This will appear on EAN invoices in the field <cbc:ID>.|
| email| string| | 255| | | | Customer contact e-mail address. This is where copies of sales documents are sent.|
| emailNotifications| array| | | | | invoices<wbr>, orders<wbr>, quotations<wbr>, reminders| This array specifies what events the contact person should recieve email notifications on. Note that limited plans only have access to invoice notifications.|
| name| string| | 255| | | | Customer contact name.|
| notes| string| | 2000| | | | Any notes you need to keep on a contact person.|
| phone| string| | 50| | | | Customer contact phone number.|
| self| string| uri| | | | | The unique self reference of the customer contact.|



### <span class='delete'>DELETE</span> /customers/:customerNumber/contacts/:contactNumber

This endpoint allows you to delete a customer contact. An HttpStatusCode.NoContent (204) is returned on success.

### <span class='get'>GET</span> /customers/:customerNumber/delivery-locations

This endpoint provides you with a collection of delivery locations for the customer.

#### Schema name

[customers.customerNumber.delivery-locations.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.delivery-locations.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, self

#### Filterable properties

address, barred, city, country, deliveryLocationNumber, postalCode, sortKey

#### Sortable properties

address, city, country, deliveryLocationNumber, postalCode, sortKey


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ----------- |
| address| string| | 255| | | Address for the delivery location including street and number.|
| barred| boolean| | | | | Indicates if the delivery location is barred from usage. Default is false.|
| city| string| | 50| | | The delivery location city.|
| country| string| | 50| | | The delivery location country.|
| customer| object| | | | | The customer this delivery location belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | A unique reference to the customer resource.|
| deliveryLocationNumber| integer| | | | 1| The delivery location number is a unique numerical identifier.|
| postalCode| string| | 15| | | The delivery location postcode.|
| self| string| uri| | | | The unique self reference of the delivery location resource.|
| sortKey| integer| | | | 1| The delivery location number displayed in the e-conomic web interface.|
| termsOfDelivery| string| | 100| | | Special delivery terms that apply to.|



### <span class='get'>GET</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint provides you with a specific delivery location for the customer.

#### Schema name

[customers.customerNumber.delivery-locations.deliveryLocationNumber.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.delivery-locations.deliveryLocationNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

customer.self, self

#### Filterable properties

address, barred, city, country, customer.customerNumber, deliveryLocationNumber, postalCode, sortKey

#### Sortable properties

address, city, country, customer.customerNumber, deliveryLocationNumber, postalCode, sortKey


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ----------- |
| address| string| | 255| | | Address for the delivery location including street and number.|
| barred| boolean| | | | | Indicates if the delivery location is barred from usage. Default is false.|
| city| string| | 50| | | The delivery location city.|
| country| string| | 50| | | The delivery location country.|
| customer| object| | | | | The customer this delivery location belongs to.|
| customer<wbr>.customerNumber| integer| | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | A unique reference to the customer resource.|
| deliveryLocationNumber| integer| | | | 1| The delivery location number is a unique numerical identifier.|
| postalCode| string| | 15| | | The delivery location postcode.|
| self| string| uri| | | | The unique self reference of the delivery location resource.|
| sortKey| integer| | | | 1| The delivery location number displayed in the e-conomic web interface.|
| termsOfDelivery| string| | 100| | | Special delivery terms that apply to.|



### <span class='post'>POST</span> /customers/:customerNumber/delivery-locations

This endpoint allows you to create a new delivery location for the customer.

#### Schema name

[customers.customerNumber.delivery-locations.post.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.delivery-locations.post.schema.json)

#### Return type

This method returns a single object

#### Filterable properties

barred


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| address| string| | | 255| | | Address for the delivery location including street and number.|
| barred| boolean| | | | | | Indicates if the delivery location is barred from usage. Default is false.|
| city| string| | | 50| | | The delivery location city.|
| country| string| | | 50| | | The delivery location country.|
| customer| object| | | | | | The customer this delivery location belongs to.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits. This value will be picked up from the url.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| deliveryLocationNumber| integer| | True| | | 1| The delivery location number is a unique numerical identifier. This identifier will be created for you.|
| postalCode| string| | | 15| | | The delivery location postcode.|
| sortKey| integer| | | | | 1| The delivery location number displayed in the e-conomic web interface. If not supplied this key will be created for you.|
| termsOfDelivery| string| | | 100| | | Special delivery terms that apply to.|



### <span class='put'>PUT</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint allows you to update an existing delivery location on the customer.

#### Schema name

[customers.customerNumber.delivery-locations.deliveryLocationNumber.put.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.delivery-locations.deliveryLocationNumber.put.schema.json)

#### Return type

This method returns a single object

#### Filterable properties

barred


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ----------- |
| address| string| | | 255| | | Address for the delivery location including street and number.|
| barred| boolean| | | | | | Indicates if the delivery location is barred from usage. Default is false.|
| city| string| | | 50| | | The delivery location city.|
| country| string| | | 50| | | The delivery location country.|
| customer| object| | | | | | The customer this delivery location belongs to.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| The customer number is a positive unique numerical identifier with a maximum of 9 digits. This value will be picked up from the url.|
| customer<wbr>.self| string| uri| | | | | A unique reference to the customer resource.|
| deliveryLocationNumber| integer| | True| | | 1| The delivery location number is a unique numerical identifier.|
| postalCode| string| | | 15| | | The delivery location postcode.|
| sortKey| integer| | | | | 1| The delivery location number displayed in the e-conomic web interface. If not supplied this key will be created for you.|
| termsOfDelivery| string| | | 100| | | Special delivery terms that apply to.|



### <span class='delete'>DELETE</span> /customers/:customerNumber/delivery-locations/:deliveryLocationNumber

This endpoint allows you to delete an existing delivery location on the customer. An HttpStatusCode.NoContent (204) is returned on success.

### <span class='get'>GET</span> /customers/:customerNumber/invoices

Links to invoices for a specific customer.

#### Schema name

[customers.customerNumber.invoices.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.invoices.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| booked| string| uri| The GET link to booked invoices for a specific customer.|
| drafts| string| uri| The GET link to draft invoices for a specific customer.|
| self| string| uri| The self reference of the customer invoices resource.|



### <span class='get'>GET</span> /customers/:customerNumber/invoices/drafts

This endpoint provides you with a collection of draft invoices for the customer.

#### Schema name

[customers.customerNumber.invoices.drafts.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.invoices.drafts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, paymentTerms.self, pdf.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self, templates.bookingInstructions, templates.self

#### Filterable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, draftInvoiceNumber, exchangeRate, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Default sorting

     draftInvoiceNumber : ascending


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| costPriceInBaseCurrency| number| | | | | | | The total cost of the items on the invoice in the base currency of the agreement.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| draftInvoiceNumber| integer| | | | 999999999| 1| | A reference number for the draft invoice document. This is not the final invoice number. The final invoice number can't be determined until the invoice is booked.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| exchangeRate| number| | | | | | | The exchange rate between the invoice currency and the base currency of the agreement. The exchange rate expresses how much it will cost in base currency to buy 100 units of the invoice currency.|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| grossAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| marginInBaseCurrency| number| | | | | | | The difference between the cost price of the items on the invoice and the sales net invoice amount in base currency. For a credit note this amount will be negative.|
| marginPercentage| number| | | | | | | The margin expressed as a percentage. If the net invoice amount is less than the cost price this number will be negative.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 1| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | True| | | | | References to a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | References a pdf representation of this invoice.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 1| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the specific draft invoice.|
| templates| object| | True| | | | | References to all templates on this draft invoice.|
| templates<wbr>.bookingInstructions| string| uri| | | | | | The self reference to the document to POST to /invoices/booked to book the invoice draft.|
| templates<wbr>.self| string| uri| | | | | | The self reference to the draft invoice templates resource.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|



### <span class='get'>GET</span> /customers/:customerNumber/invoices/booked

This endpoint provides you with a collection of booked invoices for the customer.

#### Schema name

[customers.customerNumber.invoices.booked.get.schema.json](https://restapi.e-conomic.com/schema/customers.customerNumber.invoices.booked.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

customer.self, deliveryLocation.self, layout.self, paymentTerms.self, pdf.self, project.self, recipient.attention.self, recipient.vatZone.self, references.customerContact.customer.self, references.customerContact.self, references.salesPerson.self, references.vendorReference.self, self

#### Filterable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber

#### Sortable properties

bookedInvoiceNumber, currency, customer.customerNumber, date, delivery.address, delivery.city, delivery.country, delivery.deliveryDate, delivery.deliveryTerms, delivery.zip, deliveryLocation.deliveryLocationNumber, notes.heading, notes.textLine1, notes.textLine2, paymentTerms.paymentTermsNumber, recipient.address, recipient.city, recipient.country, recipient.ean, recipient.name, recipient.publicEntryNumber, recipient.zip, references.customerContact.customer.customerNumber, references.other, references.salesPerson.employeeNumber, references.vendorReference.employeeNumber


#### Properties

| Name | Type | Format | Read-only | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ---------- | --------- | --------- | ------ | ----------- |
| bookedInvoiceNumber| integer| | | | | 1| | A reference number for the booked invoice document.|
| currency| string| | | | | | | The ISO 4217 currency code of the invoice.|
| customer| object| | | | | | | The customer being invoiced.|
| customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| date| string| full-date| | | | | | Invoice issue date. Format according to ISO-8601 (YYYY-MM-DD).|
| delivery| object| | | | | | | The actual place of delivery for the goods on the invoice. This is usually the same place as the one referenced in the deliveryLocation property<wbr>, but may be edited as required.|
| delivery<wbr>.address| string| | | 255| | | | Street address where the goods must be delivered to the customer.|
| delivery<wbr>.city| string| | | 50| | | | The city of the place of delivery|
| delivery<wbr>.country| string| | | 50| | | | The country of the place of delivery|
| delivery<wbr>.deliveryDate| string| full-date| | | | | | The date of delivery.|
| delivery<wbr>.deliveryTerms| string| | | 100| | | | Details about the terms of delivery.|
| delivery<wbr>.zip| string| | | 30| | | | The zip code of the place of delivery.|
| deliveryLocation| object| | | | | | | A reference to the place of delivery for the goods on the invoice|
| deliveryLocation<wbr>.deliveryLocationNumber| integer| | | | | | | A unique identifier for the delivery location.|
| deliveryLocation<wbr>.self| string| uri| | | | | | A unique reference to the delivery location resource.|
| dueDate| string| full-date| | | | | | The date the invoice is due for payment. Format according to ISO-8601 (YYYY-MM-DD). This is only used if the terms of payment is of type 'duedate'.|
| grossAmount| number| | | | | | | The total invoice amount in the invoice currency after all taxes and discounts have been applied. For a credit note this amount will be negative.|
| layout| object| | | | | | | Layout to be applied for this invoice.|
| layout<wbr>.layoutNumber| integer| | | | | | | The unique identifier of the layout.|
| layout<wbr>.self| string| uri| | | | | | A unique link reference to the layout item.|
| netAmount| number| | | | | | | The total invoice amount in the invoice currency before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| netAmountInBaseCurrency| number| | | | | | | The total invoice amount in the base currency of the agreement before all taxes and discounts have been applied. For a credit note this amount will be negative.|
| notes| object| | | | | | | Notes on the invoice.|
| notes<wbr>.heading| string| | | 250| | | | The invoice heading. Usually displayed at the top of the invoice.|
| notes<wbr>.textLine1| string| | | 1000| | | | The first line of supplementary text on the invoice. This is usually displayed right under the heading in a smaller font.|
| notes<wbr>.textLine2| string| | | 1000| | | | The second line of supplementary text in the notes on the invoice. This is usually displayed as a footer on the invoice.|
| paymentTerms| object| | | | | | | The terms of payment for the invoice.|
| paymentTerms<wbr>.daysOfCredit| integer| | | | | 0| | The number of days of credit on the invoice. This field is only valid if terms of payment is not of type 'duedate|
| paymentTerms<wbr>.name| string| | | 50| | | | The name of the payment terms.|
| paymentTerms<wbr>.paymentTermsNumber| integer| | | | | 0| | A unique identifier of the payment term.|
| paymentTerms<wbr>.paymentTermsType| Enum| | | | | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| paymentTerms<wbr>.self| string| uri| | | | | | A unique reference to the payment term resource.|
| pdf| object| | | | | | | References a pdf representation of this invoice.|
| pdf<wbr>.self| string| uri| | | | | | The unique reference of the pdf representation for this booked invoice.|
| project| object| | | | | | | A reference to any project this entry might be related to. This requires the projects module to be enabled.|
| project<wbr>.projectNumber| integer| | | | | 1| | A unique identifier of the project.|
| project<wbr>.self| string| uri| | | | | | A unique reference to the project resource.|
| recipient| object| | | | | | | The actual recipient of the invoice. This may be the same info found on the customer (and will probably be so in most cases) but it may also be a different recipient. For instance<wbr>, the customer placing the order may be ACME Headquarters<wbr>, but the recipient of the invoice may be ACME IT.|
| recipient<wbr>.address| string| | | 250| | | | The street address of the actual recipient.|
| recipient<wbr>.attention| object| | | | | | | The person to whom this invoice is addressed.|
| recipient<wbr>.attention<wbr>.customerContactNumber| integer| | | | | | | Unique identifier of the customer employee.|
| recipient<wbr>.attention<wbr>.self| string| uri| | | | | | A unique reference to the customer employee.|
| recipient<wbr>.city| string| | | 250| | | | The city of the actual recipient.|
| recipient<wbr>.country| string| | | 50| | | | The country of the actual recipient.|
| recipient<wbr>.ean| string| | | 13| | | | The 'European Article Number' of the actual recipient.|
| recipient<wbr>.name| string| | | 250| | | | The name of the actual recipient.|
| recipient<wbr>.publicEntryNumber| string| | | 40| | | | The public entry number of the actual recipient.|
| recipient<wbr>.vatZone| object| | | | | | | Recipient vat zone.|
| recipient<wbr>.vatZone<wbr>.self| string| uri| | | | | | A unique reference to the vat zone.|
| recipient<wbr>.vatZone<wbr>.vatZoneNumber| integer| | | | | | | Unique identifier of the vat zone.|
| recipient<wbr>.zip| string| | | 50| | | | The zip code of the actual recipient.|
| references| object| | | | | | | Customer and company references related to this invoice.|
| references<wbr>.customerContact| object| | | | | | | The customer contact is a reference to the employee at the customer to contact regarding the invoice.|
| references<wbr>.customerContact<wbr>.customer| object| | | | | | | The customer this contact belongs to.|
| references<wbr>.customerContact<wbr>.customer<wbr>.customerNumber| integer| | | | 999999999| 1| | The customer number is a positive unique numerical identifier with a maximum of 9 digits.|
| references<wbr>.customerContact<wbr>.customer<wbr>.self| string| uri| | | | | | A unique reference to the customer resource.|
| references<wbr>.customerContact<wbr>.customerContactNumber| integer| | | | | 0| | Unique identifier of the customer contact.|
| references<wbr>.customerContact<wbr>.self| string| uri| | | | | | A unique reference to the customer contact resource.|
| references<wbr>.other| string| | | 250| | | | A text field that can be used to save any custom reference on the invoice.|
| references<wbr>.salesPerson| object| | | | | | | The sales person is a reference to the employee who sold the goods on the invoice. This is also the person who is credited with this sale in reports.|
| references<wbr>.salesPerson<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.salesPerson<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| references<wbr>.vendorReference| object| | | | | | | A reference to any second employee involved in the sale.|
| references<wbr>.vendorReference<wbr>.employeeNumber| integer| | | | | 1| | Unique identifier of the employee.|
| references<wbr>.vendorReference<wbr>.self| string| uri| | | | | | A unique reference to the employee resource.|
| remainder| number| | True| | | | | Remaining amount to be paid.|
| remainderInBaseCurrency| number| | True| | | | | Remaining amount to be paid in base currency.|
| roundingAmount| number| | | | | | | The total rounding error<wbr>, if any<wbr>, on the invoice in base currency.|
| self| string| uri| | | | | | The unique self reference of the booked invoice.|
| vatAmount| number| | | | | | | The total amount of VAT on the invoice in the invoice currency. This will have the same sign as net amount|


