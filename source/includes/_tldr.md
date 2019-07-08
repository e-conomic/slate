#TL;DR

```javascript
$.ajax({
    url: "https://restapi.e-conomic.com/customers",
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

**Add these three headers to your requests.**

Header	| Value	| What is this?
-------------	| -------------	| ------------- 
X-AppSecretToken	| YOUR_PRIVATE_TOKEN	| This identifies your app. This is your secret token. **Try using the value demo**.
X-AgreementGrantToken	| YOUR_AGREEMENT_GRANT_TOKEN	| This identifies the grant issued by an agreement, to allow your app to access their data. **Try using the value demo**.
Content-Type	|  application/json	| We're a JSON based api. This tells us that you agree with us on using JSON.

Issue a GET to [https://restapi.e-conomic.com/customers](https://restapi.e-conomic.com/customers) and see what is returned.

Next try getting [https://restapi.e-conomic.com](https://restapi.e-conomic.com) and see what is available.