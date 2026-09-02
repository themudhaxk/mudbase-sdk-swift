# KYCAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiKycEventsGet**](KYCAPI.md#apikyceventsget) | **GET** /api/kyc/events | List recent compliance webhook deliveries
[**apiKycSessionsPost**](KYCAPI.md#apikycsessionspost) | **POST** /api/kyc/sessions | Start a platform KYC session
[**apiKycStatusGet**](KYCAPI.md#apikycstatusget) | **GET** /api/kyc/status | Get the organization&#39;s platform KYC status
[**apiKycVerificationsIdGet**](KYCAPI.md#apikycverificationsidget) | **GET** /api/kyc/verifications/{id} | Get a single KYC verification record
[**apiKycWebhookConfigGet**](KYCAPI.md#apikycwebhookconfigget) | **GET** /api/kyc/webhook-config | Get white-label KYC webhook config
[**apiKycWebhookConfigPut**](KYCAPI.md#apikycwebhookconfigput) | **PUT** /api/kyc/webhook-config | Set white-label KYC webhook config
[**apiKycWebhookConfigTestPost**](KYCAPI.md#apikycwebhookconfigtestpost) | **POST** /api/kyc/webhook-config/test | Send a signed test event to the configured webhook endpoint
[**apiKycWorkflowsGet**](KYCAPI.md#apikycworkflowsget) | **GET** /api/kyc/workflows | List available verification workflows
[**apiProjectsProjectIdKybSessionsPost**](KYCAPI.md#apiprojectsprojectidkybsessionspost) | **POST** /api/projects/{projectId}/kyb/sessions | Start a business verification (KYB) session for one of your business customers


# **apiKycEventsGet**
```swift
    open class func apiKycEventsGet(limit: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List recent compliance webhook deliveries

Audit trail of compliance webhook events received for this organization and whether Mudbase forwarded each one to the organization's own endpoint. Owner, admin, and developer roles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let limit = 987 // Int | Maximum number of events to return. (optional) (default to 25)

// List recent compliance webhook deliveries
KYCAPI.apiKycEventsGet(limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | Maximum number of events to return. | [optional] [default to 25]

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycSessionsPost**
```swift
    open class func apiKycSessionsPost(apiKycSessionsPostRequest: ApiKycSessionsPostRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start a platform KYC session

Creates a verification session for the caller's organization. Owner/admin only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let apiKycSessionsPostRequest = _api_kyc_sessions_post_request(language: "language_example") // ApiKycSessionsPostRequest |  (optional)

// Start a platform KYC session
KYCAPI.apiKycSessionsPost(apiKycSessionsPostRequest: apiKycSessionsPostRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKycSessionsPostRequest** | [**ApiKycSessionsPostRequest**](ApiKycSessionsPostRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycStatusGet**
```swift
    open class func apiKycStatusGet(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get the organization's platform KYC status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get the organization's platform KYC status
KYCAPI.apiKycStatusGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycVerificationsIdGet**
```swift
    open class func apiKycVerificationsIdGet(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a single KYC verification record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | Verification record id.

// Get a single KYC verification record
KYCAPI.apiKycVerificationsIdGet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Verification record id. | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycWebhookConfigGet**
```swift
    open class func apiKycWebhookConfigGet(completion: @escaping (_ data: ApiKycWebhookConfigGet200Response?, _ error: Error?) -> Void)
```

Get white-label KYC webhook config

Returns the destination URL where the organization's own system receives KYC results and whether a signing secret is set. The secret value itself is never returned. Owner/admin only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get white-label KYC webhook config
KYCAPI.apiKycWebhookConfigGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKycWebhookConfigGet200Response**](ApiKycWebhookConfigGet200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycWebhookConfigPut**
```swift
    open class func apiKycWebhookConfigPut(apiKycWebhookConfigPutRequest: ApiKycWebhookConfigPutRequest? = nil, completion: @escaping (_ data: ApiKycWebhookConfigPut200Response?, _ error: Error?) -> Void)
```

Set white-label KYC webhook config

Updates the destination URL and/or signing secret used to deliver KYC results to the organization's own system. The outbound URL is SSRF-validated. When generateSecret is true a new secret is created and returned once. Owner/admin only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let apiKycWebhookConfigPutRequest = _api_kyc_webhook_config_put_request(webhookUrl: "webhookUrl_example", webhookSecret: "webhookSecret_example", generateSecret: false) // ApiKycWebhookConfigPutRequest |  (optional)

// Set white-label KYC webhook config
KYCAPI.apiKycWebhookConfigPut(apiKycWebhookConfigPutRequest: apiKycWebhookConfigPutRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKycWebhookConfigPutRequest** | [**ApiKycWebhookConfigPutRequest**](ApiKycWebhookConfigPutRequest.md) |  | [optional] 

### Return type

[**ApiKycWebhookConfigPut200Response**](ApiKycWebhookConfigPut200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycWebhookConfigTestPost**
```swift
    open class func apiKycWebhookConfigTestPost(completion: @escaping (_ data: ApiKycWebhookConfigTestPost200Response?, _ error: Error?) -> Void)
```

Send a signed test event to the configured webhook endpoint

Delivers a sample `kyc.test` payload, signed exactly like a real event, so you can confirm your receiver and signature verification work. Ignores your event subscription. Owner/admin only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Send a signed test event to the configured webhook endpoint
KYCAPI.apiKycWebhookConfigTestPost() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKycWebhookConfigTestPost200Response**](ApiKycWebhookConfigTestPost200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiKycWorkflowsGet**
```swift
    open class func apiKycWorkflowsGet(completion: @escaping (_ data: ApiKycWorkflowsGet200Response?, _ error: Error?) -> Void)
```

List available verification workflows

Returns the verification workflows configured on this Mudbase account, split into kyc (individual identity) and kyb (business verification). Used to choose a default workflow in the console instead of pasting a workflow UUID. Owner/admin only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List available verification workflows
KYCAPI.apiKycWorkflowsGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKycWorkflowsGet200Response**](ApiKycWorkflowsGet200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsProjectIdKybSessionsPost**
```swift
    open class func apiProjectsProjectIdKybSessionsPost(projectId: String, apiProjectsProjectIdKybSessionsPostRequest: ApiProjectsProjectIdKybSessionsPostRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start a business verification (KYB) session for one of your business customers

Creates a KYB session scoped to your project. The workflow is resolved from the request, then the organization's configured default KYB workflow, then the platform default. Results arrive at your configured KYC webhook as `kyb.completed`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let apiProjectsProjectIdKybSessionsPostRequest = _api_projects__projectId__kyb_sessions_post_request(workflowId: "workflowId_example", vendorBusinessId: "vendorBusinessId_example", vendorData: "vendorData_example", callback: "callback_example", language: "language_example") // ApiProjectsProjectIdKybSessionsPostRequest |  (optional)

// Start a business verification (KYB) session for one of your business customers
KYCAPI.apiProjectsProjectIdKybSessionsPost(projectId: projectId, apiProjectsProjectIdKybSessionsPostRequest: apiProjectsProjectIdKybSessionsPostRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** |  | 
 **apiProjectsProjectIdKybSessionsPostRequest** | [**ApiProjectsProjectIdKybSessionsPostRequest**](ApiProjectsProjectIdKybSessionsPostRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

