## Self

The self endpoint is where you go to read about your and your company's settings.

### <span class='get'>GET</span> /self

This endpoint provides you with information about your settings. 

#### Schema name

[self.get.schema.json](https://restapi.e-conomic.com/schema/self.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

application.requiredRoles.self, application.self, modules.self, self, user.language.self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| agreementNumber| integer| | | The unique identifier of your e-conomic agreement.|
| agreementType| object| | | The type of agreement this is. It can either be denmark<wbr>, sweden or norway|
| agreementType<wbr>.agreementTypeNumber| integer| | | The unique identifier of your agreement type.|
| agreementType<wbr>.name| string| | | The name of the agreement type.|
| application| object| | | The company's bank settings.|
| application<wbr>.appNumber| integer| | | The unique identifier of the application.|
| application<wbr>.appPublicToken| string| | | The public token of the application used for other e-conomic customers to use the application.|
| application<wbr>.created| string| full-date| | The date the application was created. Format: YYYY-MM-DD.|
| application<wbr>.name| string| | | The name of the application.|
| application<wbr>.requiredRoles| array| | | The roles required to use this application.|
| application<wbr>.requiredRoles<wbr>.name| string| | | The name of the role.|
| application<wbr>.requiredRoles<wbr>.roleNumber| integer| | | The unique identifier of the role.|
| application<wbr>.requiredRoles<wbr>.self| string| uri| | A unique link reference to the role resource.|
| application<wbr>.self| string| uri| | A unique link reference to the application resource.|
| bankInformation| object| | | The company's bank settings.|
| bankInformation<wbr>.bankAccountNumber| string| | | The account number in the company's bank.|
| bankInformation<wbr>.bankGiroNumber| string| | | The company's bankgiro number. Only used in Sweden and Norway.|
| bankInformation<wbr>.bankName| string| | | The name of the bank.|
| bankInformation<wbr>.bankSortCode| string| | | The registration number of the bank account.|
| bankInformation<wbr>.pbsCustomerGroupNumber| string| | | Number used when registering an invoice to betalingsservice. Only used in Denmark.|
| bankInformation<wbr>.pbsFiSupplierNumber| string| | | Number used when registering an invoice to betalingsservice. Only used in Denmark.|
| canSendElectronicInvoice| boolean| | | A boolean indicating if the company is setup to send electronic invoices. See http://wiki2.e-conomic.dk/salg/ean-faktura (Danish) for more information.|
| company| object| | | The currently logged in user's company.|
| company<wbr>.addressLine1| string| | | The company's address.|
| company<wbr>.addressLine2| string| | | The company's address.|
| company<wbr>.attention| string| | | The company's primary contact person.|
| company<wbr>.city| string| | | The company's city.|
| company<wbr>.companyIdentificationNumber| string| | | The company's company identification number. For example CVR in Denmark.|
| company<wbr>.country| string| | | The company's country.|
| company<wbr>.email| string| | | The company's email.|
| company<wbr>.name| string| | | The company's name.|
| company<wbr>.phoneNumber| string| | | The company's phone number.|
| company<wbr>.vatNumber| string| | | The company's value added tax identification number. This field is only available to agreements in Sweden. Not to be mistaken for the danish CVR number<wbr>, which is defined on the 'companyIdentificationNumber' property.|
| company<wbr>.website| string| | | The company's web site url.|
| company<wbr>.zip| string| | | The company's postcode.|
| companyAffiliation| string| | | The affiliation of the agreement. This can be 'E-conomic' or 'Developer'.|
| modules| array| | | The modules the company have active.|
| modules<wbr>.moduleNumber| integer| | | The unique identifier of the module.|
| modules<wbr>.name| string| | | The name of the module.|
| modules<wbr>.self| string| uri| | A unique link reference to the module resource.|
| self| string| uri| | A unique link reference to the self resource.|
| settings| object| | | Other settings.|
| settings<wbr>.baseCurrency| string| | 3| The ISO 4217 code of the company's base currency.|
| settings<wbr>.internationalLedger| string| | | If this value is 'true' then the international ledger is used.|
| signupDate| string| full-date| | The date the currently logged in user signed up. Format: YYYY-MM-DD.|
| user| object| | | The currently logged in user.|
| user<wbr>.agreementNumber| integer| | | The unique identifier of the account of the currently logged user.|
| user<wbr>.email| string| | | The email of the user.|
| user<wbr>.language| object| | | The currently logged in user's language.|
| user<wbr>.language<wbr>.culture| string| | | The IETF language tag.|
| user<wbr>.language<wbr>.languageNumber| integer| | | The unique identifier of the language.|
| user<wbr>.language<wbr>.name| string| | | The name of the language.|
| user<wbr>.language<wbr>.self| string| uri| | A unique link reference to the language resource.|
| user<wbr>.loginId| string| | | The unique identifier of the user.|
| user<wbr>.name| string| | | The name of the user.|
| userName| string| | | The name of the the currently logged in user.|




### <span class='put'>PUT</span> /self/user

This endpoint allows you to update your user information.

#### Schema name

[self.user.put.schema.json](https://restapi.e-conomic.com/schema/self.user.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

agreementNumber, email, language, language.culture, language.languageNumber, language.name, loginId, name




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| agreementNumber| integer| | The unique identifier of the account of the currently logged user.|
| email| string| | The email of the user.|
| language| object| | The currently logged in user's language.|
| language<wbr>.culture| string| | The IETF language tag.|
| language<wbr>.languageNumber| integer| | The unique identifier of the language.|
| language<wbr>.name| string| | The name of the language.|
| language<wbr>.self| string| uri| A unique link reference to the language resource.|
| loginId| string| | The unique identifier of the user.|
| name| string| | The name of the user.|




### <span class='put'>PUT</span> /self/company

This endpoint allows you to update your company information.

#### Schema name

[self.company.put.schema.json](https://restapi.e-conomic.com/schema/self.company.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

addressLine1, attention, city, email, name, phoneNumber, zip




#### Properties

| Name | Type | Description |
| ---- | ---- | ----------- |
| addressLine1| string| The company's address.|
| addressLine2| string| The company's address.|
| attention| string| The company's primary contact person.|
| city| string| The company's city.|
| companyIdentificationNumber| string| The company's identification number. For example CVR in Denmark.|
| country| string| The company's country.|
| email| string| The company's email.|
| name| string| The company's name.|
| phoneNumber| string| The company's phone number.|
| vatNumber| string| The company's value added tax identification number. This field is only available to agreements in Sweden. Not to be mistaken for the danish CVR number<wbr>, which is defined on the 'companyIdentificationNumber' property.|
| website| string| The company's web site url.|
| zip| string| The company's postcode.|



### <span class='put'>PUT</span> /self/company/bankinformation

This endpoint allows you to update your company bank information.

#### Schema name

[self.company.bankinformation.put.schema.json](https://restapi.e-conomic.com/schema/self.company.bankinformation.put.schema.json)

#### Return type

This method returns a single object

#### Required property

pbsCustomerGroupNumber




#### Properties

| Name | Type | Max length | Min length | Description |
| ---- | ---- | ---------- | ---------- | ----------- |
| bankAccountNumber| string| | | The account number in the company's bank.|
| bankGiroNumber| string| | | The company's bankgiro number. Only used in Sweden and Norway.|
| bankName| string| | | The name of the bank.|
| bankSortCode| string| | | The registration number of the bank account.|
| bankgirotCustomerNumber| string| | | The company's bank Giro number. Only used in Sweden.|
| eanLocationNumber| string| 13| 13| The company's EAN number.|
| giro| string| 20| | The company's Giro number. Only used in Denmark.|
| ibanNumber| string| 50| | The company's IBAN number.|
| pbsCustomerGroupNumber| string| | | Number used when registering an invoice to betalingsservice. Only used in Denmark.|
| pbsFiSupplierNumber| string| | | Number used when registering an invoice to betalingsservice. Only used in Denmark.|
| pbsNumber| string| 8| | The company's PBS number.|
| plusGiroNumber| string| | | The company's Giro plus number.|
| swiftCode| string| 20| | The company's SWIFT code.|

