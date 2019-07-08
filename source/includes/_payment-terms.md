## Payment Terms

Payment terms are the different ways your customers can pay you in regards to, type of payment, days of credit etc.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-betalingsbetingelser](http://wiki2.e-conomic.dk/indstillinger/kategorier-og-enheder-betalingsbetingelser).

### <span class='get'>GET</span> /payment-terms

#### Schema name

[payment-terms.get.schema.json](https://restapi.e-conomic.com/schema/payment-terms.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

contraAccountForPrepaidAmount.self, contraAccountForRemainderAmount.self, creditCardCompany.self, paymentTermsType, self




#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| contraAccountForPrepaidAmount| object| | | | The contra account for prepaid amount of the payment term.|
| contraAccountForPrepaidAmount<wbr>.accountNumber| integer| | | | The account number for the contraAccountForPrepaidAmount.|
| contraAccountForPrepaidAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for prepaid amount item.|
| contraAccountForRemainderAmount| object| | | | The contra account for remainder amount of the payment term.|
| contraAccountForRemainderAmount<wbr>.accountNumber| integer| | | | The account number for the contraAccountForRemainderAmount.|
| contraAccountForRemainderAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for remainder amount item.|
| creditCardCompany| object| | | | The credit card company of the payment term.|
| creditCardCompany<wbr>.customerNumber| integer| | | | The credit card company customer number.|
| creditCardCompany<wbr>.self| string| uri| | | A unique link reference to the credit card company customer item.|
| daysOfCredit| integer| | | | The number of days before payment must be made.|
| description| string| | 1000| | A description of the payment term.|
| name| string| | 50| | The name of the payment term.|
| paymentTermsNumber| integer| | | | A unique identifier of the payment term.|
| paymentTermsType| Enum| | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| percentageForPrepaidAmount| number| | | | The % to be pre paid.|
| percentageForRemainderAmount| number| | | | The % to be post paid.|
| self| string| uri| | | A unique link reference to the payment term item.|



### <span class='get'>GET</span> /payment-terms/:paymentTermsNumber

#### Schema name

[payment-terms.paymentTermsNumber.get.schema.json](https://restapi.e-conomic.com/schema/payment-terms.paymentTermsNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

contraAccountForPrepaidAmount.self, contraAccountForRemainderAmount.self, creditCardCompany.self, paymentTermsType, self




#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| contraAccountForPrepaidAmount| object| | | | The contra account for prepaid amount of the payment term.|
| contraAccountForPrepaidAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForPrepaidAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for prepaid amount item.|
| contraAccountForRemainderAmount| object| | | | The contra account for remainder amount of the payment term.|
| contraAccountForRemainderAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForRemainderAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for remainder amount item.|
| creditCardCompany| object| | | | The credit card company of the payment term.|
| creditCardCompany<wbr>.customerNumber| integer| | | | The credit card company customer number.|
| creditCardCompany<wbr>.self| string| uri| | | A unique link reference to the customer item.|
| daysOfCredit| integer| | | | The number of days before payment must be made.|
| description| string| | 1000| | A description of the payment term.|
| name| string| | 50| | The name of the payment term.|
| paymentTermsNumber| integer| | | | A unique identifier of the payment term.|
| paymentTermsType| Enum| | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term defines how the payment term behaves.|
| percentageForPrepaidAmount| number| | | | The % to be pre paid.|
| percentageForRemainderAmount| number| | | | The % to be post paid.|
| self| string| uri| | | A unique link reference to the payment term item.|



### <span class='post'>POST</span> /payment-terms

#### Schema name

[payment-terms.post.schema.json](https://restapi.e-conomic.com/schema/payment-terms.post.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, paymentTermsType




#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| contraAccountForPrepaidAmount| object| | | | The contra account for prepaid amount of the payment term.|
| contraAccountForPrepaidAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForPrepaidAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for prepaid amount item.|
| contraAccountForRemainderAmount| object| | | | The contra account for remainder amount of the payment term.|
| contraAccountForRemainderAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForRemainderAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for remainder amount item.|
| creditCardCompany| object| | | | The credit card company of the payment term.|
| creditCardCompany<wbr>.customerNumber| integer| | | | The credit card company customer number.|
| creditCardCompany<wbr>.self| string| uri| | | A unique link reference to the customer item.|
| daysOfCredit| integer| | | | The number of days before payment must be made.|
| description| string| | 1000| | A description of the payment term.|
| name| string| | 50| | The name of the payment term.|
| paymentTermsType| Enum| | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| percentageForPrepaidAmount| number| | | | The % to be pre paid.|
| percentageForRemainderAmount| number| | | | The % to be post paid.|



### <span class='put'>PUT</span> /payment-terms/:paymentTermsNumber

#### Schema name

[payment-terms.paymentTermsNumber.put.schema.json](https://restapi.e-conomic.com/schema/payment-terms.paymentTermsNumber.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

name, paymentTermsType




#### Properties

| Name | Type | Format | Max length | Values | Description |
| ---- | ---- | ------ | ---------- | ------ | ----------- |
| contraAccountForPrepaidAmount| object| | | | The contra account for prepaid amount of the payment term.|
| contraAccountForPrepaidAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForPrepaidAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for prepaid amount item.|
| contraAccountForRemainderAmount| object| | | | The contra account for remainder amount of the payment term.|
| contraAccountForRemainderAmount<wbr>.accountNumber| integer| | | | The account number of the contra account.|
| contraAccountForRemainderAmount<wbr>.self| string| uri| | | A unique link reference to the contra account for remainder amount item.|
| creditCardCompany| object| | | | The credit card company of the payment term.|
| creditCardCompany<wbr>.customerNumber| integer| | | | The credit card company customer number.|
| creditCardCompany<wbr>.self| string| uri| | | A unique link reference to the customer item.|
| daysOfCredit| integer| | | | The number of days before payment must be made.|
| description| string| | 1000| | A description of the payment term.|
| name| string| | 50| | The name of the payment term.|
| paymentTermsType| Enum| | | net<wbr>, invoiceMonth<wbr>, paidInCash<wbr>, prepaid<wbr>, dueDate<wbr>, factoring<wbr>, invoiceWeekStartingSunday<wbr>, invoiceWeekStartingMonday<wbr>, creditcard| The type of payment term.|
| percentageForPrepaidAmount| number| | | | The % to be pre paid.|
| percentageForRemainderAmount| number| | | | The % to be pre paid.|



### <span class='delete'>DELETE</span> /payment-terms/:paymentTermsNumber

<aside class="notice">
This endpoint is not documented yet.
</aside>
