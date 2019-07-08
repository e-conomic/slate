## Layouts

Layouts are a collection of templates and used for assigning a layout to a sales document (invoice, order, quotation).
Template modification is done via e-conomic web application.

For more information please look at the Danish e-copedia article [http://wiki2.e-conomic.dk/salg/opsaetning/design-og-layout/](http://wiki2.e-conomic.dk/salg/opsaetning/design-og-layout/).

### <span class='get'>GET</span> /layouts

#### Schema name

[layouts.get.schema.json](https://restapi.e-conomic.com/schema/layouts.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| deleted| boolean| | | A flag indicating that the layout is deleted. Layouts with this flag set will not appear in the collection of layouts<wbr>, but resources such as booked invoices might still reference this layout.|
| layoutNumber| integer| | | A unique identifier of the layout.|
| name| string| | 250| The name of the layout.|
| self| string| uri| | A unique link reference to the layout item.|



### <span class='get'>GET</span> /layouts/:layoutNumber

#### Schema name

[layouts.layoutNumber.get.schema.json](https://restapi.e-conomic.com/schema/layouts.layoutNumber.get.schema.json)

#### Return type

This method returns a single object

#### Required property

self




#### Properties

| Name | Type | Format | Max length | Description |
| ---- | ---- | ------ | ---------- | ----------- |
| deleted| boolean| | | A flag indicating that the layout is deleted. Layouts with this flag set will not appear in the collection of layouts<wbr>, but resources such as booked invoices might still reference this layout.|
| layoutNumber| integer| | | A unique identifier of the layout.|
| name| string| | 250| The name of the layout.|
| self| string| uri| | A unique link reference to the layout item.|

