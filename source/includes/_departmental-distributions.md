## Departmental Distributions

<aside class="warning">
This endpoint is experimental and subject to change
</aside>

Departmental Distributions is used to define the relevant department or distribution on applicable entities.
This endpoint serves as the unified approach to distribution whether it be one department or many that the sum will be distributed to.

### <span class='get'>GET</span> /departmental-distributions

This endpoint allows you to fetch a collection of all departmental distributions.

#### Schema name

[departmental-distributions.get.schema.json](https://restapi.e-conomic.com/schema/departmental-distributions.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

distributions.department.self, self

#### Filterable properties

departmentalDistributionNumber, name

#### Sortable properties

departmentalDistributionNumber, name


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| departmentalDistributionNumber| integer| | | | | | A unique numeric identifier for the departmental distribution.|
| distributionType| string| | | | | distribution<wbr>, department| This property indicates whether the distribution is system generated from a departmentor if it is one created by a user. In order to make it easy to distribute everything to one department<wbr>, the system generates a distribution for each department.|
| distributions| array| | | | | | A list of departments and their share of the distribution in percentage. The percentages always add up to 100%.|
| distributions<wbr>.department| object| | | | | | A reference to the department.|
| distributions<wbr>.department<wbr>.departmentNumber| integer| | | | 1| | A unique identifier of the department.|
| distributions<wbr>.department<wbr>.self| string| uri| | | | | The unique self reference of the department.|
| distributions<wbr>.percentage| number| | | 100| 0| | The percentage distributed to this department.|
| name| string| | 250| | | | A descriptive name of the specific departmental distribution.|
| self| string| uri| | | | | The unique self reference of the departmental distribution.|
| subCollections| object| | | | | | Links to the sub collections that make up this collection.|



### <span class='get'>GET</span> /departmental-distributions/departments

This endpoint allows you to fetch a collection of all departmental distributions that distribute the entire sum to a single department.

#### Schema name

[departmental-distributions.departments.get.schema.json](https://restapi.e-conomic.com/schema/departmental-distributions.departments.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

distributions.department.self, self

#### Filterable properties

departmentalDistributionNumber, name

#### Sortable properties

departmentalDistributionNumber, name


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| barred| boolean| | | | | | Property indicating whether the departmental distribution is barred from being used.|
| departmentalDistributionNumber| integer| | | | | | A unique numeric identifier for the departmental distribution.|
| distributionType| string| | | | | distribution<wbr>, department| This property indicates whether the distribution is system generated from a departmentor if it is one created by a user. In order to make it easy to distribute everything to one department<wbr>, the system generates a distribution for each department.|
| distributions| array| | | | | | A list of departments and their share of the distribution in percentage. The percentages always add up to 100%.|
| distributions<wbr>.department| object| | | | | | A reference to the department.|
| distributions<wbr>.department<wbr>.departmentNumber| integer| | | | 1| | A unique identifier of the department.|
| distributions<wbr>.department<wbr>.self| string| uri| | | | | The unique self reference of the department.|
| distributions<wbr>.percentage| number| | | 100| 0| | The percentage distributed to this department.|
| name| string| | 250| | | | A descriptive name of the departmental distribution.|
| self| string| uri| | | | | The unique self reference of the departmental distribution.|
| subCollections| object| | | | | | Links to the sub collections that make up this collection.|



### <span class='get'>GET</span> /departmental-distributions/departments/:departmentalDistributionNumber

This endpoint allows you to fetch a specific departmental distribution that distributes the entire sum to a single department.

#### Schema name

[departmental-distributions.departments.departmentalDistributionNumber.get.schema.json](https://restapi.e-conomic.com/schema/departmental-distributions.departments.departmentalDistributionNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

distributions.department.self, self




#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| barred| boolean| | | | | | Property indicating whether the departmental distribution is barred from being used.|
| departmentalDistributionNumber| integer| | | | | | A unique numeric identifier for the departmental distribution.|
| distributionType| string| | | | | distribution<wbr>, department| This property indicates whether the distribution is system generated from a departmentor if it is one created by a user. In order to make it easy to distribute everything to one department<wbr>, the system generates a distribution for each department.|
| distributions| array| | | | | | A list of departments and their share of the distribution in percentage. The percentages always add up to 100%.|
| distributions<wbr>.department| object| | | | | | A reference to the department.|
| distributions<wbr>.department<wbr>.departmentNumber| integer| | | | 1| | A unique identifier of the department.|
| distributions<wbr>.department<wbr>.self| string| uri| | | | | The unique self reference of the department.|
| distributions<wbr>.percentage| number| | | 100| 0| | The percentage distributed to this department.|
| name| string| | 250| | | | A descriptive name of the departmental distribution.|
| self| string| uri| | | | | The unique self reference of the departmental distribution.|



### <span class='get'>GET</span> /departmental-distributions/distributions

This endpoint allows you to fetch a collection of all departmental distributions that distribute the sum across multiple departments.

#### Schema name

[departmental-distributions.distributions.get.schema.json](https://restapi.e-conomic.com/schema/departmental-distributions.distributions.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

distributions.department.self, self

#### Filterable properties

departmentalDistributionNumber, name

#### Sortable properties

departmentalDistributionNumber, name


#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| barred| boolean| | | | | | Property indicating whether the departmental distribution is barred from being used.|
| departmentalDistributionNumber| integer| | | | | | A unique numeric identifier for the departmental distribution.|
| distributionType| string| | | | | distribution<wbr>, department| This property indicates whether the distribution is system generated from a departmentor if it is one created by a user. In order to make it easy to distribute everything to one department<wbr>, the system generates a distribution for each department.|
| distributions| array| | | | | | A list of departments and their share of the distribution in percentage. The percentages must add up to 100%.|
| distributions<wbr>.department| object| | | | | | A reference to the department.|
| distributions<wbr>.department<wbr>.departmentNumber| integer| | | | 1| | A unique identifier of the department.|
| distributions<wbr>.department<wbr>.self| string| uri| | | | | The unique self reference of the department.|
| distributions<wbr>.percentage| number| | | 100| 0| | The percentage distributed to this department.|
| name| string| | 250| | | | A descriptive name of the departmental distribution.|
| self| string| uri| | | | | The unique self reference of the departmental distribution.|
| subCollections| object| | | | | | Links to the sub collections that make up this collection.|



### <span class='get'>GET</span> /departmental-distributions/distributions/:departmentalDistributionNumber

This endpoint allows you to fetch specific departmental distribution that distributes the sum across multiple departments.

#### Schema name

[departmental-distributions.distributions.departmentalDistributionNumber.get.schema.json](https://restapi.e-conomic.com/schema/departmental-distributions.distributions.departmentalDistributionNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

distributions.department.self, self




#### Properties

| Name | Type | Format | Max length | Max value | Min value | Values | Description |
| ---- | ---- | ------ | ---------- | --------- | --------- | ------ | ----------- |
| barred| boolean| | | | | | Property indicating whether the departmental distribution is barred from being used.|
| departmentalDistributionNumber| integer| | | | | | A unique numeric identifier for the departmental distribution.|
| distributionType| string| | | | | distribution<wbr>, department| This property indicates whether the distribution is system generated from a departmentor if it is one created by a user. In order to make it easy to distribute everything to one department<wbr>, the system generates a distribution for each department.|
| distributions| array| | | | | | A list of departments and their share of the distribution in percentage. The percentages must add up to 100%.|
| distributions<wbr>.department| object| | | | | | A reference to the department.|
| distributions<wbr>.department<wbr>.departmentNumber| integer| | | | 1| | A unique identifier of the department.|
| distributions<wbr>.department<wbr>.self| string| uri| | | | | The unique self reference of the department.|
| distributions<wbr>.percentage| number| | | 100| 0| | The percentage distributed to this department.|
| name| string| | 250| | | | A descriptive name of the departmental distribution.|
| self| string| uri| | | | | The unique self reference of the departmental distribution.|

