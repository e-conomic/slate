# Introduction

**Welcome to the E-conomic REST API Documentation!**

The e-conomic API is a document based JSON REST API. We have tried to make it human-readable and approachable for developers with limited understanding of the inner-workings of e-conomic.

For more in-depth information about e-conomic please have a look at the e-copedia [http://wiki.e-conomic.dk](http://wiki.e-conomic.dk).

## Demo authentication

If you wish to try out the API before registering a developer agreement, you can do this using the demo agreement. There are two ways of doing that. 

### Via query string
The first way is really easy. Just append the query string `?demo=true` to your request URL. You only need to this on the first request, then all links in the API will have that query string appended. 
All 401 Not Authorized responses also include a demo link to that exact resource. This allows for easy browsing of the API when discovering what is available.

Example: [https://restapi.e-conomic.com/customers?demo=true](https://restapi.e-conomic.com/customers?demo=true)

### Via headers
The second way is one that allows for an easy "hello world" application. This mimics the authentication flow you will have to use when you create your own app. Just specify HTTP header tokens `X-AgreementGrantToken: demo` and `X-AppSecretToken: demo`. That way you can create an application and connect just as you would if you had a real integration. But without the need to register.

<aside class="notice">
Note that when using the demo integration, you can only use the GET http method.
</aside>

## Tools we use every day
 
We use these tools all day every day when working with our REST API. They make things easy for us, and we think they could help you as well.

### Postman
This is one our favorite REST clients. All links are clickable. Header definition is easy and everything is nicely formatted and easily readable. Responses are easy to inspect. You can save requests and setups. Whatever you want to test out in the REST API this is your new best friend. If you haven't yet explored a hyper media REST API through Postman then good things are definitely waiting for you.

[https://getpostman.com](https://getpostman.com)
 
### Fiddler
When you need to debug, then Fiddler is absolutely one of the best tools out there. It will let you proxy your HTTP requests and responses so you can gain complete insight and see exactly what your code or client generated. This will save you many hours of head scratching. Head on over to Telerik and download it.
 
[http://www.telerik.com/fiddler](http://www.telerik.com/fiddler)
 
### JSON Formatter Chrome Extension
This extension formats all JSON in a nice and readable manner. It also makes all links clickable just like in Postman. If you want to start exploring our API directly in your browser, then just install this extension, go to https://restapi.e-conomic.com?demo=true and follow the links.
 
[https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)
 
### Advanced REST Client Chrome Plugin
This tool makes it easy to send requests to our API, and inspect the response. Just add your headers and start GET'ing and POST'ing.

[https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo)
 
### Chrome Developer Extensions
If you are building a browser JavaScript app, nothing beats the developer tools already embedded in the browser. Just hit F12 and start inspecting your requests.
 
### Wireshark
In case a proxy like Fiddler isn't hardcore enough for you there's always Wireshark. Wireshark will let you inspect EVERYTHING going over the internet pipes. Literally. An added bonus is there's even a MacOS version as well as the source code if you're feeling adventurous.

[https://www.wireshark.org/#download](https://www.wireshark.org/#download)

## REST Basics

### Self link
All resources and collections have a property "self" which value is a unique URL that represents that exact resource or collection. The self link for a collection will also contain any pagination, filtering or sorting applied.

### Collections vs. Resources
The e-conomic REST API is a json document based API, that consists of a number of resources and collections of resources. Collections are named after the type of resource that can be found in the collection, and then pluralized. For example a collection of customers is called just that: https://restapi.e-conomic.com/customers.

Each resource in the collection will contain a self link, that is made up of the collection self link with the resource identifier appended. So customer #20 will have the following self link; https://restapi.e-conomic.com/customers/20. For entities with complex identifiers the self link will always give you the compliant URL for the resource.

### HTTP Verbs

**POST**
Create. POST is always done at collection level.

**PUT**
Overwrite / Create. PUT is always directed at a ressource. PUT to an existing ressource will overwrite the full object and must include the full entity. PUT to a non-existing ressource will depending on support of defining the ID create a ressource at that path.

**PATCH**
Add / Overwrite. PATCH is always directed at a ressource. In REST terms PATCH would allow changing select properties. Please note that our API does NOT feature PATCH support on JSON documents. Please use PUT and remember this must include the full entity/document.

## Annotated errors

<aside class="notice">
This feature is being rolled out. Not all endpoints have this implemented yet.
</aside>

When creating or updating data through the REST API validation will be made on the supplied data before any create/update operation is executed. If any errors are found in the supplied data your operation will not be accepted and you will get a 400 Bad Request resonse back that, amongst other things, details the errors found. 

The annotated errors are formatted to match the data sent in the request payload. That means that we return a document with the properties that fail validation, where the value of each property has been replaced with an error object. The valid properties are removed from the document, making it easy to match up with a UI that already matches up with the request payload.

The response will look like this:

| Property | Description |
| ------------- | ------------- |
| message | A general message explaining the error |
| developerHint | A general hit given to developers to help solve the error |
| httpStatusCode | The HTTP status code returned |
| errors | A listing of all errors found in annotated form |

The annotated errors are formatted to match the data sent in the request payload. That means that we return a document with the properties that fail validation, where the value of each property has been replaced with an error object. The valid properties are removed from the document, making it easy to match up with a UI that already matches up with the request payload.

### Errors
```JSON
//example of a response for a failed POST operation.

{
    "message": "Validation error.",
    "developerHint": "Inspect validation errors and correct your request.",
    "logId": "c7ca5bc2-ad2d-4639-93f9-b22ba88c97d7",
    "httpStatusCode": 400,
    "errors": {
        "currency": {
            "errors": [
                {
                    "errorCode": "E06000",
                    "message": "currency does not exist.",
                    "value": "ZUL",
                    "developerHint": "Find a list of currencies at https://restapi.e-conomic.com/currencies."
                }
            ]
        },
        "customer": {
            "errors": [
                {
                    "errorCode": "E06000",
                    "message": "customer does not exist.",
                    "value": "987987987",
                    "developerHint": "Find a list of resources at https://restapi.e-conomic.com/customers."
                }
            ]
        },
        "lines": [
            {
                "arrayIndex": 0,
                "unit": {
                    "errors": [
                        {
                            "errorCode": "E06000",
                            "message": "unit does not exist.",
                            "value": 10,
                            "developerHint": "Find a list of units at https://restapi.e-conomic.com/units."
                        }
                    ]
                },
                "unitNetPrice": {
                    "errors": [
                        {
                            "errorCode": "E04740",
                            "message": "unitNetPrice scale cannot be greater then two decimal places.",
                            "value": 10.12345,
                            "developerHint": "Please check the format of your data."
                        }
                    ]
                }
            },
            {
                "arrayIndex": 1,
                "product": {
                    "errors": [
                        {
                            "errorCode": "E04500",
                            "message": "No identifiers present on product. Please include either a self link or a productNumber.",
                            "developerHint": "Find a list of resources at https://restapi.e-conomic.com/products."
                        }
                    ]
                }
            }
        ],
        "quantity": {
            "errors": [
                {
                    "errorCode": "E04730",
                    "message": "Property quantity must have a value when product is set.",
                    "developerHint": "Please check your request data."
                }
            ]
        }
    },
    "logTime": "2015-03-12T16:44:56"
}
```

The example to the right shows a POST operation to invoices/drafts containing a single invoice with 3 lines. There are a total of 6 errors found 3 on the invoice, 2 on line 1 and 1 on line 2.

A specific error consists of the following information or a subset there of:

| Property | Description |
| ------------- | ------------- |
| errorCode | The error code associated with this particular error |
| message | A text describing the error |
| value | The value sent in |
| developerHint | A message to developers to try to help them resolve the issue |

If multiple errors are found on a specific property the errors array will contain multiple error objects.

**Array index**

The "arrayIndex" property is a bit special. In our example it is present on the invoice lines level but it may also be present on the invoice level in a different operation. The arrayIndex specify, in our example, what line the errors where found on. If our operation would have been a POST containing multiple invoices arrayIndex, on the invoice level, would have been present and would here specify what invoice the errors was found on. 

**Errors on the invoice level**

These are the errors found on the invoice level:

<pre class='inlinecode prettyprint'>
"currency": {
    "errors": [
        {
            "errorCode": "E06000",
            "message": "currency does not exist.",
            "value": "ZUL",
            "developerHint": "Find a list of currencies at https://restapi.e-conomic.com/currencies."
        }
    ]
}

"customer": {
    "errors": [
        {
            "errorCode": "E06000",
            "message": "customer does not exist.",
            "value": "987987987",
            "developerHint": "Find a list of resources at https://restapi.e-conomic.com/customers."
        }
    ]
}

"quantity": {
    "errors": [
        {
            "errorCode": "E04730",
            "message": "Property quantity must have a value when product is set.",
            "developerHint": "Please check your request data."
        }
    ]
}
</pre>

**Errors on the invoice line level**

These are the errors found on the invoice line level:

<pre class='inlinecode prettyprint'>
"lines": [
    {
        "arrayIndex": 0,
        "unit": {
            "errors": [
                {
                    "errorCode": "E06000",
                    "message": "unit does not exist.",
                    "value": 10,
                    "developerHint": "Find a list of units at https://restapi.e-conomic.com/units."
                }
            ]
        },
        "unitNetPrice": {
            "errors": [
                {
                    "errorCode": "E04740",
                    "message": "unitNetPrice scale cannot be greater then two decimal places.",
                    "value": 10.12345,
                    "developerHint": "Please check the format of your data."
                }
            ]
        }
    },
    {
        "arrayIndex": 1,
        "product": {
            "errors": [
                {
                    "errorCode": "E04500",
                    "message": "No identifiers present on product. Please include either a self link or a productNumber.",
                    "developerHint": "Find a list of resources at https://restapi.e-conomic.com/products."
                }
            ]
        }
    }
]
</pre>

This structure looks a bit different than the errors on the invoice level, specifically the addition of a "arrayIndex" property. This property tells us which line the errors was found on. So in our example above we found 2 errors on the first line (unit and unitNetPrice) and 1 error on the second line (product).

## Versioning

Currently we offer no versioning of the API. Some endpoints will be stable and others will be experimental. This is displayed directly on the home resource of the API. As endpoints move out of their experimental mode and become stable, we'll update the home resource to reflect this.

Later on, as our API evolves, we might find it necessary to add versioning. But calling directly on the root of the API will always provide you with the latest API version.

## Pagination

We use pagination on our collections. If nothing else is specified the collection endpoints will return 20 resources. URL parameters will allow you to increase this to 1.000 resources and to skip pages if necessary. Each endpoint offers convenient links to navigate through the pagination. The examples below is what you would get on a resource with 40 entries. 

**First page**

`https://restapi.e-conomic.com/invoices/drafts?skippages=0&pagesize=20`

**Next page**

`https://restapi.e-conomic.com/invoices/drafts?skippages=1&pagesize=20`

**Last page**

`https://restapi.e-conomic.com/invoices/drafts?skippages=2&pagesize=20`

## Filtering

Filtering is enabled on all collection endpoints but not on all properties.

Filtering on collections can be done using the query string parameter `filter`. A filter is made up of a set of predicates, and follows a syntax inspired by mongoDB. A predicate is made up of a property name, an operator and a value. 

Example: `?filter=name$eq:Joe`

This matches all resources with the value Joe in the property name.

Predicates can be chained using either of the logical operators AND and OR.

Example: `?filter=name$eq:Joe$and:city$like:*port`

Filtering on strings is case insensitive.

###Specifying Operator affinity
If you want to control the operator affinity then you can use parentheses.

An example is: `?filter=name$eq:Joe$and:(city$like:*port$or:age$lt:40)`

###URL Encoding
URL parameter values should always be URL compatible. Always URL encode filter strings.

###Filter Operators
The allowed filtering operators are:

Operator  | Syntax
------------- | -------------
Equals | "$eq:"
Not equals | "$ne:"
Greater than | "$gt:"
Greater than or equal | "$gte:"
Less than | "$lt:"
Less than or equal | "$lte:"
Substring match | "$like:"
And also | "$and:"
Or else | "$or:"
In | "$in:"
Not In | "$nin:"

###Substring matching
The `$like:` filter supports both using wildcards (*) and not using wildcards. If no wildcards are used, the expression is considered a _contains_ expression and effectively becomes a filter with a wildcard at the start of the string and one at the end of the string.

###Escaping special characters in your filter
In order to not interfere with the parsing of the filter expression, certain escape sequences are necessary. 

* "$" is escaped with "$$"
* "(" is escaped with "$("
* ")" is escaped with "$)"
* "\*" is escaped with "$\*"
* "," is escaped with "$,"
* "[" is escaped with "$["
* "]" is escaped with "$]"

###Using null values in your filter
Should you want to filter for the non existence of a property (i.e. null value) you can use the null escape sequence.

`$null:`

###Using in and not in operators
To determine whether a specified value matches any value in (or not in) a list you filter using the `$in:` or `$nin:` operator. The list to filter by has to be inclosed in brackets and values seperated by commas.

`customerNumber$in:[2,5,7,22,45]`

We only allow in and not in operators on numeric properties. So it is not possible to use on string properties. It is possible to also use the `$null:` keyword if you wish to include that in the filter.

The max supported length of an array using the `$in:` or `$nin:` operator is 200.

Information about what properties allow filtering can be found in the schema for the collection. Each property that allows filtering has the property `"filterable": true` set. If you try to sort on something that isn't allowed the server will respond with a status code 400.

## Sorting

Sorting on strings is case insensitive.

###Sort ascending
Sorting on collections can be done using the query string parameter 'sort'. 

`?sort=name`

###Sort descending
The default sort direction is ascending, but this can be turned by prepending a minus (-).

`?sort=-name`

###Sort by multiple properties
If you need to sort by multiple properties these can just be separated by commas. Mixing of directions is allowed.

`?sort=-name,age`

###Sort alphabetically
In certain cases you might want to enforce that even numeric values are sorted alphabetically, so 1000 is less than 30. In those cases you can prepend the sort property with a tilde (~).

`?sort=~name`

Information about what properties are sortable can be found in the schema for the collection. Each property that allows sorting has the property `"sortable": true` set. The property the collection is sorted by by default has the property `defaultSorting` set to either ascending or descending.

## HTTP Status Codes

The REST API returns these HTTP status codes.

Code | Text | Description
------------- | ------------- | -------------
200  | OK | Everything is OK
201  | Created | When you create resources, this is what you get. This will be accompanied by the created resource in the body and a location header with a link to the created resource.
204  | No Content | In certain cases there is nothing to return. So we will let you know by returning a 204.
400  | Bad Request | The request you made was somehow malformed. A malformed request could be failed validation on creation or updating. If you try to filter on something that isn't filterable this is also what you'll see. Whenever possible we will also try to include a developer hint to help you get around this issue.
401  | Unauthorized | The credentials you supplied us with weren't correct, or perhaps you forgot them all together. If an agreement has revoked the grant they gave your app, this is what you will see.
403  | Forbidden | You won't necessarily have access to everything. So even though you were authorized we might still deny access to certain resources. This depends on the roles asked for when the grant was issued. 
404  | Not Found | This is returned when you try to request something that doesn't exist. This could be a resource that has been deleted or just a url you tried to hack. If you see a lot of these, it could be an indication that you aren't using the links provided by the API. You should never need to concatenate any urls. The API should provide you with the links needed.
405  | Method Not Allowed | Not all endpoints support all http methods. If you try issue a PUT request to a collection resource this is what you get.
415  | Unsupported Media Type | Our API is a JSON api. If you ask us to give you anything else, we give you this, and tell you why in the JSON body of the response.
500  | Internal Server Error | We don't like to see these, and they are flagged in our logs. When you see this, something went wrong on our end. Either try again, or contact our support.
501  | Not Implemented | The API is still evolving, and sometimes our resources will link to stuff that we haven't implemented yet.

## JSON Schema

JSON schema is a vocabulary that allows you to annotate and validate JSON documents.
The JSON document is being validated against the document containing the description that is called schema.
Currently we use JSON schema version 3 in the e-conomic REST API. 

## Required Properties

Each endpoint that allows writing data must include a list of required properties for the action.
This list will mention required objects and properties as well as required properties on optional objects when these are set.
If 'object' is listed then that object is required.
If 'property' is listed then that property is required.
If 'objectA.property' is listed but 'objectA' is not listed as required, then this is an optional object and the property is only required when the object is set.

**Example:** property1, property2, object1, object1.property1, object2.property1

object2.property1 is ONLY required IF object2 is defined. But object2 is not listed and is therefore optional.

**Please note** that for referenced objects in the REST API you are free to reference the entity via either id or self-link. For that reason an object like 'customer' on POST to /invoice is required yet there are no properties listed as required as customer.customerNumber and customer.self are either/or for requirement. The rule here is that self will always point directly to the resource.

## Custom resource self-link encoding

For self-links (the direct URL path to a resource) the question of non-alphanumeric characters must be solved in REST APIs by either encoding or replacement to ensure URL compatibility.

In the e-conomic REST API a subset of non-alphanumeric characters are replaced using a custom scheme for resource URLs:

Character | Replacement
------------- | -------------
"<" | _0_
">" | _1_
"*" | _2_
"%" | _3_
":" | _4_
"&" | _5_
"/" | _6_
"\" | _7_
"_" | _8_
" " (whitespace) | _9_
"?" | _10_
"." | _11_
"#" | _12_
"+" | _13_

Example: Product "My Awesome Product_Discount5%"
Resource URL (self): https://restapi.e-conomic.com/products/My_9_Awesome_9_Product_8_Discount5_3_

All other non-alphanumeric characters in resource URLs are standard URL encoded. Please refer to standard URL encoding for characters not mentioned above.

## Implementation specifics

Helpful details to know when implementing e-conomic REST.

### Booleans
Booleans should only be expected to be represented in responses when true. A false boolean is omitted from response body. The same logic applies to write operations such as POST and PUT.

### Nulling
We do not generally accept null as a value and a validation exception should be expected. To null a property you must exclude it from your JSON on the write operation.
