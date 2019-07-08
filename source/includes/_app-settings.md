## App Settings

This endpoint allows you to save a set of custom settings specific to your app. The settings will only be exposed for your app and are not visible for anybody else. Settings can be specific to the authenticated user or to the agreement as a whole. You can only save 200 settings per user and 200 per agreement.

The settings are a key-value set where the key is a string and the setting has to be a valid json document.

### <span class='get'>GET</span> /app-settings

<!_app-settings.get.schema.md!>

### <span class='get'>GET</span> /app-settings/agreement

<!_app-settings.agreement.get.schema.md!>

### <span class='get'>GET</span> /app-settings/agreement/:settingId

<!_app-settings.agreement.settingId.get.schema.md!>

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

<!_app-settings.agreement.settingId.put.schema.md!>

### <span class='delete'>DELETE</span> /app-settings/agreement/:settingId

This endpoint deletes an app setting from the agreements app settings.

### <span class='get'>GET</span> /app-settings/user

<!_app-settings.user.get.schema.md!>

### <span class='get'>GET</span> /app-settings/user/:settingId

<!_app-settings.user.settingId.get.schema.md!>

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

<!_app-settings.user.settingId.put.schema.md!>

### <span class='delete'>DELETE</span> /app-settings/user/:settingId

This endpoint deletes an app setting from the users app settings.