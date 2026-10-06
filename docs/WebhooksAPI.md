# WebhooksAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configureWebhook**](WebhooksAPI.md#configurewebhook) | **PUT** /api/webhooks/projects/{projectId}/config | Create or update project webhook
[**getWebhookConfig**](WebhooksAPI.md#getwebhookconfig) | **GET** /api/webhooks/projects/{projectId}/config | Get project webhook configuration
[**getWebhookStats**](WebhooksAPI.md#getwebhookstats) | **GET** /api/webhooks/stats | Get webhook delivery statistics
[**listProjectWebhookLogs**](WebhooksAPI.md#listprojectwebhooklogs) | **GET** /api/webhooks/projects/{projectId} | List webhook delivery logs (project)
[**listWebhooks**](WebhooksAPI.md#listwebhooks) | **GET** /api/webhooks | List webhook delivery logs (organization)
[**retryWebhook**](WebhooksAPI.md#retrywebhook) | **POST** /api/webhooks/retry/{webhookId} | Retry a failed webhook delivery
[**testWebhookTransformation**](WebhooksAPI.md#testwebhooktransformation) | **POST** /api/webhooks/projects/{projectId}/test-transformation | Test webhook transformation
[**triggerWebhook**](WebhooksAPI.md#triggerwebhook) | **POST** /api/webhooks/trigger | Manually trigger an outbound webhook


# **configureWebhook**
```swift
    open class func configureWebhook(projectId: String, configureWebhookRequest: ConfigureWebhookRequest? = nil, completion: @escaping (_ data: ConfigureWebhook200Response?, _ error: Error?) -> Void)
```

Create or update project webhook

Set or update the project webhook URL and options. This is how you **add** or **create** a webhook for a project: provide **webhookUrl** to enable delivery; omit or set to null to disable. Optionally set **webhookSecret**, **webhookEvents**, **webhookVersion**, and **transformations**. Plan limits (webhooks per project) apply when adding a new URL. Requires ProjectBearerAuth (JWT) or ApiKeyAuth (X-API-Key) with project update access. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let configureWebhookRequest = configureWebhook_request(webhookUrl: "webhookUrl_example", webhookSecret: "webhookSecret_example", webhookEvents: ["webhookEvents_example"], webhookVersion: "webhookVersion_example", transformations: [getWebhookConfig_200_response_data_transformations_inner(type: "type_example", config: 123)]) // ConfigureWebhookRequest |  (optional)

// Create or update project webhook
WebhooksAPI.configureWebhook(projectId: projectId, configureWebhookRequest: configureWebhookRequest) { (response, error) in
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
 **configureWebhookRequest** | [**ConfigureWebhookRequest**](ConfigureWebhookRequest.md) |  | [optional] 

### Return type

[**ConfigureWebhook200Response**](ConfigureWebhook200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookConfig**
```swift
    open class func getWebhookConfig(projectId: String, completion: @escaping (_ data: GetWebhookConfig200Response?, _ error: Error?) -> Void)
```

Get project webhook configuration

Get the current webhook URL, events, version, and transformations for a project. This is **where Mudbase POSTs event payloads**; it does **not** return a `webhookId`. Delivery ids (`WebhookLog._id`) come from **`POST /api/webhooks/trigger`** or automatic deliveries, and from **list logs** endpoints.  Requires ProjectBearerAuth (JWT) or ApiKeyAuth (X-API-Key) with project read access. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get project webhook configuration
WebhooksAPI.getWebhookConfig(projectId: projectId) { (response, error) in
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

### Return type

[**GetWebhookConfig200Response**](GetWebhookConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookStats**
```swift
    open class func getWebhookStats(projectId: String? = nil, days: Int? = nil, completion: @escaping (_ data: WebhookStatsResponse?, _ error: Error?) -> Void)
```

Get webhook delivery statistics

Aggregates **`WebhookLog`** rows for your organization over the last **`days`** (default 7). Optional **`projectId`** filters to a project in your org.  Returns **`statusStats`** (counts and average duration per delivery **status**) and **`eventStats`** (counts and success rate per **event** name).  **Auth:** Organization JWT only (`authRequired`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Optional; limit stats to this project. (optional)
let days = 987 // Int |  (optional) (default to 7)

// Get webhook delivery statistics
WebhooksAPI.getWebhookStats(projectId: projectId, days: days) { (response, error) in
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
 **projectId** | **String** | Optional; limit stats to this project. | [optional] 
 **days** | **Int** |  | [optional] [default to 7]

### Return type

[**WebhookStatsResponse**](WebhookStatsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjectWebhookLogs**
```swift
    open class func listProjectWebhookLogs(projectId: String, page: Int? = nil, limit: Int? = nil, status: Status_listProjectWebhookLogs? = nil, event: String? = nil, completion: @escaping (_ data: WebhookListResponse?, _ error: Error?) -> Void)
```

List webhook delivery logs (project)

Same **`WebhookLog`** documents as **`GET /api/webhooks`**, scoped to **`projectId`** in the path. Accepts **org JWT**, **project JWT**, or **project API key** with project read access.  Each item’s **`_id`** is the id returned as **`webhookId`** from **`POST /api/webhooks/trigger`** and used in **`POST /api/webhooks/retry/{webhookId}`**. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let status = "status_example" // String |  (optional)
let event = "event_example" // String |  (optional)

// List webhook delivery logs (project)
WebhooksAPI.listProjectWebhookLogs(projectId: projectId, page: page, limit: limit, status: status, event: event) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **status** | **String** |  | [optional] 
 **event** | **String** |  | [optional] 

### Return type

[**WebhookListResponse**](WebhookListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhooks**
```swift
    open class func listWebhooks(page: Int? = nil, limit: Int? = nil, status: Status_listWebhooks? = nil, event: String? = nil, projectId: String? = nil, completion: @escaping (_ data: WebhookListResponse?, _ error: Error?) -> Void)
```

List webhook delivery logs (organization)

Paginated **webhook delivery logs** for your organization (each row is one outbound HTTP attempt). Optional **`projectId`** query filters to a project that belongs to your org.  Use each log document’s **`_id`** (MongoDB ObjectId) as **`webhookId`** when calling **`POST /api/webhooks/retry/{webhookId}`** after a failed delivery. Organization **JWT only** (`OrgBearerAuth`); project API keys are not accepted on this route. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let status = "status_example" // String |  (optional)
let event = "event_example" // String |  (optional)
let projectId = "projectId_example" // String | Optional; restrict logs to this project (must belong to your org). (optional)

// List webhook delivery logs (organization)
WebhooksAPI.listWebhooks(page: page, limit: limit, status: status, event: event, projectId: projectId) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **status** | **String** |  | [optional] 
 **event** | **String** |  | [optional] 
 **projectId** | **String** | Optional; restrict logs to this project (must belong to your org). | [optional] 

### Return type

[**WebhookListResponse**](WebhookListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retryWebhook**
```swift
    open class func retryWebhook(webhookId: String, completion: @escaping (_ data: RetryWebhookResponse?, _ error: Error?) -> Void)
```

Retry a failed webhook delivery

**`webhookId`** (path) = **`WebhookLog._id`** (MongoDB ObjectId)—the same value returned as **`webhookId`** from **`POST /api/webhooks/trigger`** and as **`_id`** on **`GET /api/webhooks`** / **`GET /api/webhooks/projects/{projectId}`**.  **Not** the string **`webhookId`** field stored on the log document (e.g. `manual-173…`); use the document **`_id`** for this path.  Resets a non-success log to **pending** and re-delivers. **400** if status is already **`success`**.  **Auth:** Organization JWT only; project API keys are not accepted. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | WebhookLog document `_id` (delivery log id).

// Retry a failed webhook delivery
WebhooksAPI.retryWebhook(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **String** | WebhookLog document &#x60;_id&#x60; (delivery log id). | 

### Return type

[**RetryWebhookResponse**](RetryWebhookResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testWebhookTransformation**
```swift
    open class func testWebhookTransformation(projectId: String, testWebhookTransformationRequest: TestWebhookTransformationRequest, completion: @escaping (_ data: TestWebhookTransformation200Response?, _ error: Error?) -> Void)
```

Test webhook transformation

Apply transformation rules to a sample payload and return original and transformed payloads. Requires ProjectBearerAuth (JWT) or ApiKeyAuth (X-API-Key) with project update access. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let testWebhookTransformationRequest = testWebhookTransformation_request(payload: 123, transformations: [getWebhookConfig_200_response_data_transformations_inner(type: "type_example", config: 123)]) // TestWebhookTransformationRequest | 

// Test webhook transformation
WebhooksAPI.testWebhookTransformation(projectId: projectId, testWebhookTransformationRequest: testWebhookTransformationRequest) { (response, error) in
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
 **testWebhookTransformationRequest** | [**TestWebhookTransformationRequest**](TestWebhookTransformationRequest.md) |  | 

### Return type

[**TestWebhookTransformation200Response**](TestWebhookTransformation200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerWebhook**
```swift
    open class func triggerWebhook(triggerWebhookRequest: TriggerWebhookRequest, completion: @escaping (_ data: TriggerWebhookResponse?, _ error: Error?) -> Void)
```

Manually trigger an outbound webhook

Queues an HTTP delivery to **`url`** for **`projectId`** (must belong to your org). Creates a **`WebhookLog`** row, runs delivery, and returns the new log’s **`_id`**.  **Response field `webhookId`:** This is the **MongoDB `_id` of the delivery log** (same as the log’s **`_id`** in list endpoints). It is **not** part of the request body and is **not** the project `webhookSecret` from **`PUT .../config`**.  **Auth:** Org JWT, project JWT, or project API key with **project `update`** permission. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let triggerWebhookRequest = TriggerWebhookRequest(projectId: "projectId_example", url: "url_example", event: "event_example", payload: 123, method: "method_example") // TriggerWebhookRequest | 

// Manually trigger an outbound webhook
WebhooksAPI.triggerWebhook(triggerWebhookRequest: triggerWebhookRequest) { (response, error) in
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
 **triggerWebhookRequest** | [**TriggerWebhookRequest**](TriggerWebhookRequest.md) |  | 

### Return type

[**TriggerWebhookResponse**](TriggerWebhookResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

