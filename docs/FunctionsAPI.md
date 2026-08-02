# FunctionsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateFunction**](FunctionsAPI.md#activatefunction) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/activate | Activate function
[**createFunction**](FunctionsAPI.md#createfunction) | **POST** /api/functions/projects/{projectId}/functions | Create function
[**deactivateFunction**](FunctionsAPI.md#deactivatefunction) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/deactivate | Deactivate function
[**deleteFunction**](FunctionsAPI.md#deletefunction) | **DELETE** /api/functions/projects/{projectId}/functions/{functionId} | Delete function
[**executeFunction**](FunctionsAPI.md#executefunction) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/execute | Execute function
[**getFunction**](FunctionsAPI.md#getfunction) | **GET** /api/functions/projects/{projectId}/functions/{functionId} | Get function
[**getFunctionExecution**](FunctionsAPI.md#getfunctionexecution) | **GET** /api/functions/projects/{projectId}/functions/{functionId}/executions/{executionId} | Get execution status
[**getFunctionLogs**](FunctionsAPI.md#getfunctionlogs) | **GET** /api/functions/projects/{projectId}/functions/{functionId}/logs | Get function execution logs
[**getFunctionVersions**](FunctionsAPI.md#getfunctionversions) | **GET** /api/functions/projects/{projectId}/functions/{functionId}/versions | Get function versions
[**listFunctions**](FunctionsAPI.md#listfunctions) | **GET** /api/functions/projects/{projectId}/functions | List functions
[**retryFunctionExecution**](FunctionsAPI.md#retryfunctionexecution) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/retry/{executionIndex} | Retry failed execution
[**rollbackFunction**](FunctionsAPI.md#rollbackfunction) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/rollback | Rollback to previous version
[**simulateFunctionTrigger**](FunctionsAPI.md#simulatefunctiontrigger) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/simulate | Simulate trigger
[**triggerFunctionWebhook**](FunctionsAPI.md#triggerfunctionwebhook) | **POST** /api/functions/webhook/{projectId} | Trigger webhook functions
[**updateFunction**](FunctionsAPI.md#updatefunction) | **PUT** /api/functions/projects/{projectId}/functions/{functionId} | Update function


# **activateFunction**
```swift
    open class func activateFunction(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Activate function

Activate a deactivated function. Active functions can be triggered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 

// Activate function
FunctionsAPI.activateFunction(projectId: projectId, functionId: functionId) { (response, error) in
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
 **functionId** | **String** |  | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFunction**
```swift
    open class func createFunction(projectId: String, createFunctionRequest: CreateFunctionRequest, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Create function

Create a new serverless function. Trigger types: http, document, file, webhook, wallet, cron, messaging. Sandbox globals available today: `payload`, `context`, `env`, `console`. Function code runs in an isolated worker with no ambient network or database access — it can only read its trigger payload, the `env` vars you configure, and return a JSON-serializable result; it cannot yet call back into your project's database, storage, messaging, or wallet APIs from inside the function body. If you need to read or write project data from a function, call the regular REST API (with your own API key) from your own backend in response to the function's returned result, rather than from within the function's own code. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let createFunctionRequest = CreateFunctionRequest(name: "name_example", description: "description_example", code: "code_example", trigger: FunctionTrigger(type: "type_example", event: "event_example", schedule: "schedule_example", path: "path_example", method: "method_example", collectionId: "collectionId_example", bucketId: "bucketId_example"), environment: "TODO") // CreateFunctionRequest | 

// Create function
FunctionsAPI.createFunction(projectId: projectId, createFunctionRequest: createFunctionRequest) { (response, error) in
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
 **createFunctionRequest** | [**CreateFunctionRequest**](CreateFunctionRequest.md) |  | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateFunction**
```swift
    open class func deactivateFunction(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Deactivate function

Deactivate a function. Deactivated functions will not be triggered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 

// Deactivate function
FunctionsAPI.deactivateFunction(projectId: projectId, functionId: functionId) { (response, error) in
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
 **functionId** | **String** |  | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFunction**
```swift
    open class func deleteFunction(projectId: String, functionId: String, completion: @escaping (_ data: DeleteFunction200Response?, _ error: Error?) -> Void)
```

Delete function

Delete a function permanently. This is a destructive operation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 

// Delete function
FunctionsAPI.deleteFunction(projectId: projectId, functionId: functionId) { (response, error) in
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
 **functionId** | **String** |  | 

### Return type

[**DeleteFunction200Response**](DeleteFunction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeFunction**
```swift
    open class func executeFunction(projectId: String, functionId: String, executeFunctionRequest: ExecuteFunctionRequest? = nil, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Execute function

Manually execute a function with custom payload. Payload is merged with auto-injected trigger context. Rate limited (data mutation rate limiter). Enforces maxExecutionsPerMinute/maxExecutionsPerHour.  This endpoint is asynchronous: it returns 202 immediately with an `executionId`, before the function has necessarily finished running. Poll `GET /api/functions/projects/{projectId}/functions/{functionId}/executions/{executionId}` until `status` leaves `queued`/`running` to get the real result, error, and duration. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let executeFunctionRequest = executeFunction_request(payload: 123) // ExecuteFunctionRequest |  (optional)

// Execute function
FunctionsAPI.executeFunction(projectId: projectId, functionId: functionId, executeFunctionRequest: executeFunctionRequest) { (response, error) in
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
 **functionId** | **String** |  | 
 **executeFunctionRequest** | [**ExecuteFunctionRequest**](ExecuteFunctionRequest.md) |  | [optional] 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFunction**
```swift
    open class func getFunction(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Get function

Get function details by ID including createdBy/updatedBy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 

// Get function
FunctionsAPI.getFunction(projectId: projectId, functionId: functionId) { (response, error) in
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
 **functionId** | **String** |  | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFunctionExecution**
```swift
    open class func getFunctionExecution(projectId: String, functionId: String, executionId: String, completion: @escaping (_ data: FunctionExecutionStatusResponse?, _ error: Error?) -> Void)
```

Get execution status

Poll this after Execute function or Simulate trigger to get the real outcome — both of those endpoints return 202 immediately and do not carry the result themselves. `status` is one of `queued`, `provisioning`, `running`, `success`, `failed`, `timeout`; `result`/`error`/`durationMs`/`logs` are only populated once `status` leaves `queued`/`running`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let executionId = "executionId_example" // String | 

// Get execution status
FunctionsAPI.getFunctionExecution(projectId: projectId, functionId: functionId, executionId: executionId) { (response, error) in
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
 **functionId** | **String** |  | 
 **executionId** | **String** |  | 

### Return type

[**FunctionExecutionStatusResponse**](FunctionExecutionStatusResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFunctionLogs**
```swift
    open class func getFunctionLogs(projectId: String, functionId: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: FunctionLogsResponse?, _ error: Error?) -> Void)
```

Get function execution logs

Get execution logs with pagination. Includes stats (totalExecutions, successful, failed, successRate, avgExecutionTime, lastRun).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// Get function execution logs
FunctionsAPI.getFunctionLogs(projectId: projectId, functionId: functionId, limit: limit, offset: offset) { (response, error) in
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
 **functionId** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**FunctionLogsResponse**](FunctionLogsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFunctionVersions**
```swift
    open class func getFunctionVersions(projectId: String, functionId: String, completion: @escaping (_ data: GetFunctionVersions200Response?, _ error: Error?) -> Void)
```

Get function versions

List all code versions for a function. Used for rollback.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 

// Get function versions
FunctionsAPI.getFunctionVersions(projectId: projectId, functionId: functionId) { (response, error) in
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
 **functionId** | **String** |  | 

### Return type

[**GetFunctionVersions200Response**](GetFunctionVersions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFunctions**
```swift
    open class func listFunctions(projectId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, triggerType: TriggerType_listFunctions? = nil, isActive: Bool? = nil, completion: @escaping (_ data: FunctionListResponse?, _ error: Error?) -> Void)
```

List functions

List serverless functions in a project with optional search and filters. Supports trigger types: http, event, document, file, webhook, wallet, cron, messaging. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let search = "search_example" // String | Search by name or description (optional)
let triggerType = "triggerType_example" // String | Filter by trigger type (optional)
let isActive = true // Bool | Filter by active status (true/false) (optional)

// List functions
FunctionsAPI.listFunctions(projectId: projectId, page: page, limit: limit, search: search, triggerType: triggerType, isActive: isActive) { (response, error) in
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
 **search** | **String** | Search by name or description | [optional] 
 **triggerType** | **String** | Filter by trigger type | [optional] 
 **isActive** | **Bool** | Filter by active status (true/false) | [optional] 

### Return type

[**FunctionListResponse**](FunctionListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retryFunctionExecution**
```swift
    open class func retryFunctionExecution(projectId: String, functionId: String, executionIndex: Int, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Retry failed execution

Retry a failed execution by its index (0-based) in the logs. Cannot retry successful executions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let executionIndex = 987 // Int | 0-based index of the execution in logs

// Retry failed execution
FunctionsAPI.retryFunctionExecution(projectId: projectId, functionId: functionId, executionIndex: executionIndex) { (response, error) in
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
 **functionId** | **String** |  | 
 **executionIndex** | **Int** | 0-based index of the execution in logs | 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rollbackFunction**
```swift
    open class func rollbackFunction(projectId: String, functionId: String, rollbackFunctionRequest: RollbackFunctionRequest, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Rollback to previous version

Rollback function code to a previous version. Version number is required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let rollbackFunctionRequest = rollbackFunction_request(version: 123) // RollbackFunctionRequest | 

// Rollback to previous version
FunctionsAPI.rollbackFunction(projectId: projectId, functionId: functionId, rollbackFunctionRequest: rollbackFunctionRequest) { (response, error) in
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
 **functionId** | **String** |  | 
 **rollbackFunctionRequest** | [**RollbackFunctionRequest**](RollbackFunctionRequest.md) |  | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **simulateFunctionTrigger**
```swift
    open class func simulateFunctionTrigger(projectId: String, functionId: String, simulateFunctionTriggerRequest: SimulateFunctionTriggerRequest? = nil, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Simulate trigger

Test a function with simulated trigger context. Use to verify document, file, webhook, wallet, or cron payloads. Executes the function with the provided eventContext merged into the payload.  Asynchronous, same pattern as Execute function: returns 202 immediately with an `executionId`. Poll `GET /api/functions/projects/{projectId}/functions/{functionId}/executions/{executionId}` for the real result. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let simulateFunctionTriggerRequest = simulateFunctionTrigger_request(trigger: 123, eventContext: 123, payload: 123) // SimulateFunctionTriggerRequest |  (optional)

// Simulate trigger
FunctionsAPI.simulateFunctionTrigger(projectId: projectId, functionId: functionId, simulateFunctionTriggerRequest: simulateFunctionTriggerRequest) { (response, error) in
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
 **functionId** | **String** |  | 
 **simulateFunctionTriggerRequest** | [**SimulateFunctionTriggerRequest**](SimulateFunctionTriggerRequest.md) |  | [optional] 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerFunctionWebhook**
```swift
    open class func triggerFunctionWebhook(projectId: String, xWebhookSecret: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: TriggerFunctionWebhook200Response?, _ error: Error?) -> Void)
```

Trigger webhook functions

Public endpoint for external services to trigger functions with `trigger.type: webhook`. No authentication required. Optionally verify using `X-Webhook-Secret` header (configure per project or via FUNCTION_WEBHOOK_SECRET). Rate limited to 120 requests per 15 minutes per IP (per-org adjustable). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let xWebhookSecret = "xWebhookSecret_example" // String | Optional webhook secret for verification (optional)
let body = "TODO" // AnyCodable |  (optional)

// Trigger webhook functions
FunctionsAPI.triggerFunctionWebhook(projectId: projectId, xWebhookSecret: xWebhookSecret, body: body) { (response, error) in
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
 **xWebhookSecret** | **String** | Optional webhook secret for verification | [optional] 
 **body** | **AnyCodable** |  | [optional] 

### Return type

[**TriggerFunctionWebhook200Response**](TriggerFunctionWebhook200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFunction**
```swift
    open class func updateFunction(projectId: String, functionId: String, updateFunctionRequest: UpdateFunctionRequest? = nil, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Update function

Update function configuration. Code changes are versioned automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let functionId = "functionId_example" // String | 
let updateFunctionRequest = UpdateFunctionRequest(name: "name_example", description: "description_example", code: "code_example", trigger: FunctionTrigger(type: "type_example", event: "event_example", schedule: "schedule_example", path: "path_example", method: "method_example", collectionId: "collectionId_example", bucketId: "bucketId_example"), environment: 123, isActive: false, limits: UpdateFunctionRequest_limits(timeout: 123, maxPayloadSize: 123, maxExecutionsPerMinute: 123, maxExecutionsPerHour: 123), retryPolicy: UpdateFunctionRequest_retryPolicy(enabled: false, maxRetries: 123, backoffMs: 123), versionComment: "versionComment_example") // UpdateFunctionRequest |  (optional)

// Update function
FunctionsAPI.updateFunction(projectId: projectId, functionId: functionId, updateFunctionRequest: updateFunctionRequest) { (response, error) in
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
 **functionId** | **String** |  | 
 **updateFunctionRequest** | [**UpdateFunctionRequest**](UpdateFunctionRequest.md) |  | [optional] 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

