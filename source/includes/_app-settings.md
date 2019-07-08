## App Settings

This endpoint allows you to save a set of custom settings specific to your app. The settings will only be exposed for your app and are not visible for anybody else. Settings can be specific to the authenticated user or to the agreement as a whole. You can only save 200 settings per user and 200 per agreement.

The settings are a key-value set where the key is a string and the setting has to be a valid json document.

### <span class='get'>GET</span> /app-settings

#### Schema name

[app-settings.get.schema.json](https://restapi.e-conomic.com/schema/app-settings.get.schema.json)

#### Return type

This method returns a single object




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| agreement| string| uri| A reference to the agreements app settings collection.|
| user| string| uri| A reference to the user's app settings collection.|



### <span class='get'>GET</span> /app-settings/agreement

#### Schema name

[app-settings.agreement.get.schema.json](https://restapi.e-conomic.com/schema/app-settings.agreement.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

content, self, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the app setting item.|
| settingKey| string| | A unique key.|



### <span class='get'>GET</span> /app-settings/agreement/:settingId

#### Schema name

[app-settings.agreement.settingId.get.schema.json](https://restapi.e-conomic.com/schema/app-settings.agreement.settingId.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

content, self, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the app setting item.|
| settingKey| string| | A unique key.|



### <span class='put'>PUT</span> /app-settings/agreement/:settingId

```javascript
var headers = {
    'X-AppSecretToken': "demo",
    'X-AgreementGrantToken': "demo",
    'Content-Type': "application/json"
};

var setting = {
    "settingKey": "123",
    "content": {
        "v": "Alibaba"
    }
}

$(document).ready(function () {
    $('#input').text(JSON.stringify(setting, null, 4));
    $.ajax({
        url: "https://restapi.e-conomic.com/app-settings/agreement/123",
        dataType: "json",
        headers: headers,
        data: JSON.stringify(setting),
        contentType: 'application/json; charset=UTF-8',
        type: "PUT"
    }).always(function (data) {
        $('#output').text(JSON.stringify(data, null, 4));
    });
});
```

#### Schema name

[app-settings.agreement.settingId.put.schema.json](https://restapi.e-conomic.com/schema/app-settings.agreement.settingId.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

content, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the setting item.|
| settingKey| string| | A unique key.|



### <span class='delete'>DELETE</span> /app-settings/agreement/:settingId

This endpoint deletes an app setting from the agreements app settings.

### <span class='get'>GET</span> /app-settings/user

#### Schema name

[app-settings.user.get.schema.json](https://restapi.e-conomic.com/schema/app-settings.user.get.schema.json)

#### Return type

This method returns a [collection](#collections-vs--resources) of items. The containing items are described below.

#### Required properties

content, self, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the app setting item.|
| settingKey| string| | A unique key.|



### <span class='get'>GET</span> /app-settings/user/:settingId

#### Schema name

[app-settings.user.settingId.get.schema.json](https://restapi.e-conomic.com/schema/app-settings.user.settingId.get.schema.json)

#### Return type

This method returns a single object

#### Required properties

content, self, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the app setting item.|
| settingKey| string| | A unique key.|



### <span class='put'>PUT</span> /app-settings/user/:settingId

```javascript
var headers = {
    'X-AppSecretToken': "demo",
    'X-AgreementGrantToken': "demo",
    'Content-Type': "application/json"
};

var setting = {
    "settingKey": "123",
    "content": {
        "v": "Alibaba"
    }
}

$(document).ready(function () {
    $('#input').text(JSON.stringify(setting, null, 4));
    $.ajax({
        url: "https://restapi.e-conomic.com/app-settings/user/123",
        dataType: "json",
        headers: headers,
        data: JSON.stringify(setting),
        contentType: 'application/json; charset=UTF-8',
        type: "PUT"
    }).always(function (data) {
        $('#output').text(JSON.stringify(data, null, 4));
    });
});
```

#### Schema name

[app-settings.user.settingId.put.schema.json](https://restapi.e-conomic.com/schema/app-settings.user.settingId.put.schema.json)

#### Return type

This method returns a single object

#### Required properties

content, settingKey




#### Properties

| Name | Type | Format | Description |
| ---- | ---- | ------ | ----------- |
| content| object| | The setting payload.|
| self| string| uri| A unique link reference to the setting item.|
| settingKey| string| | A unique key.|



### <span class='delete'>DELETE</span> /app-settings/user/:settingId

This endpoint deletes an app setting from the users app settings.