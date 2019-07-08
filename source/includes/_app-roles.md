## App Roles

### <span class='get'>GET</span> /app-roles

#### Schema name

[app-roles.get.schema.json](https://restapi.e-conomic.com/schema/app-roles.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

requiredModules.self, self

#### Filterable properties

roleNumber

#### Sortable properties

roleNumber

#### Default sorting

     roleNumber : ascending


#### Properties

| Name | Type | Format | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ------ | ----------- |
| name| string| | | SuperUser<wbr>, Bookkeeping<wbr>, Sales<wbr>, ProjectEmployee| API Role name.|
| requiredModules| array| | | | An array containing the required modules.|
| requiredModules<wbr>.moduleNumber| integer| | 1| | A reference number for the module.|
| requiredModules<wbr>.self| string| uri| | | A unique reference to the module resource.|
| roleNumber| integer| | 1| | A reference number for the app role.|
| self| string| uri| | | The unique self reference of the app role collection.|

 

### <span class='get'>GET</span> /app-roles/:roleNumber

#### Schema name

[app-roles.roleNumber.get.schema.json](https://restapi.e-conomic.com/schema/app-roles.roleNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required property

requiredModules.self

#### Filterable properties

roleNumber

#### Sortable properties

roleNumber

#### Default sorting

     roleNumber : ascending


#### Properties

| Name | Type | Format | Min value | Values | Description |
| ---- | ---- | ------ | --------- | ------ | ----------- |
| name| string| | | SuperUser<wbr>, Bookkeeping<wbr>, Sales<wbr>, ProjectEmployee| API Role name.|
| requiredModules| array| | | | An array containing the required modules.|
| requiredModules<wbr>.moduleNumber| integer| | 1| | A reference number for the module.|
| requiredModules<wbr>.self| string| uri| | | A unique reference to the module resource.|
| roleNumber| integer| | 1| | A reference number for the app role.|

 