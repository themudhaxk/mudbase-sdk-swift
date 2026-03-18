# FunctionsAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**functionsActivate**](FunctionsAPI.md#functionsactivate) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/activate | Activate function
[**functionsCreate**](FunctionsAPI.md#functionscreate) | **POST** /api/functions/projects/{projectId}/functions | Create function
[**functionsDeactivate**](FunctionsAPI.md#functionsdeactivate) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/deactivate | Deactivate function
[**functionsDelete**](FunctionsAPI.md#functionsdelete) | **DELETE** /api/functions/projects/{projectId}/functions/{functionId} | Delete function
[**functionsExecute**](FunctionsAPI.md#functionsexecute) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/execute | Execute function
[**functionsGet**](FunctionsAPI.md#functionsget) | **GET** /api/functions/projects/{projectId}/functions/{functionId} | Get function
[**functionsGetLogs**](FunctionsAPI.md#functionsgetlogs) | **GET** /api/functions/projects/{projectId}/functions/{functionId}/logs | Get function execution logs
[**functionsGetVersions**](FunctionsAPI.md#functionsgetversions) | **GET** /api/functions/projects/{projectId}/functions/{functionId}/versions | Get function versions
[**functionsList**](FunctionsAPI.md#functionslist) | **GET** /api/functions/projects/{projectId}/functions | List functions
[**functionsRetry**](FunctionsAPI.md#functionsretry) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/retry/{executionIndex} | Retry failed execution
[**functionsRollback**](FunctionsAPI.md#functionsrollback) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/rollback | Rollback to previous version
[**functionsSimulate**](FunctionsAPI.md#functionssimulate) | **POST** /api/functions/projects/{projectId}/functions/{functionId}/simulate | Simulate trigger
[**functionsTriggerWebhook**](FunctionsAPI.md#functionstriggerwebhook) | **POST** /api/functions/webhook/{projectId} | Trigger webhook functions
[**functionsUpdate**](FunctionsAPI.md#functionsupdate) | **PUT** /api/functions/projects/{projectId}/functions/{functionId} | Update function


# **functionsActivate**
```swift
    open class func functionsActivate(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Activate function

Activate a deactivated function. Active functions can be triggered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to activate.

// Activate function
FunctionsAPI.functionsActivate(projectId: projectId, functionId: functionId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to activate. | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsCreate**
```swift
    open class func functionsCreate(projectId: String, createFunctionRequest: CreateFunctionRequest, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Create function

Create a new serverless function. Trigger types: http, document, file, webhook, wallet, cron, messaging. Sandbox utilities available: db, files, messaging, wallet, utils, env, console. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let createFunctionRequest = CreateFunctionRequest(name: "name_example", description: "description_example", code: "code_example", trigger: FunctionTrigger(type: "type_example", event: "event_example", schedule: "schedule_example", path: "path_example", method: "method_example", collectionId: "collectionId_example", bucketId: "bucketId_example"), environment: "TODO") // CreateFunctionRequest | Function name, description, code, trigger config, and optional environment.

// Create function
FunctionsAPI.functionsCreate(projectId: projectId, createFunctionRequest: createFunctionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **createFunctionRequest** | [**CreateFunctionRequest**](CreateFunctionRequest.md) | Function name, description, code, trigger config, and optional environment. | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsDeactivate**
```swift
    open class func functionsDeactivate(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Deactivate function

Deactivate a function. Deactivated functions will not be triggered.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to deactivate.

// Deactivate function
FunctionsAPI.functionsDeactivate(projectId: projectId, functionId: functionId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to deactivate. | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsDelete**
```swift
    open class func functionsDelete(projectId: String, functionId: String, completion: @escaping (_ data: FunctionsDelete200Response?, _ error: Error?) -> Void)
```

Delete function

Delete a function permanently. This is a destructive operation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let functionId = "functionId_example" // String | Function ID to delete.

// Delete function
FunctionsAPI.functionsDelete(projectId: projectId, functionId: functionId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **functionId** | **String** | Function ID to delete. | 

### Return type

[**FunctionsDelete200Response**](FunctionsDelete200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsExecute**
```swift
    open class func functionsExecute(projectId: String, functionId: String, functionsExecuteRequest: FunctionsExecuteRequest? = nil, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Execute function

Manually execute a function with custom payload. Payload is merged with auto-injected trigger context. Rate limited (data mutation rate limiter). Enforces maxExecutionsPerMinute/maxExecutionsPerHour. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to execute.
let functionsExecuteRequest = functions_execute_request(payload: 123) // FunctionsExecuteRequest | Optional JSON payload merged with trigger context (e.g. document, file, webhook body). Omit for no custom input. (optional)

// Execute function
FunctionsAPI.functionsExecute(projectId: projectId, functionId: functionId, functionsExecuteRequest: functionsExecuteRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to execute. | 
 **functionsExecuteRequest** | [**FunctionsExecuteRequest**](FunctionsExecuteRequest.md) | Optional JSON payload merged with trigger context (e.g. document, file, webhook body). Omit for no custom input. | [optional] 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsGet**
```swift
    open class func functionsGet(projectId: String, functionId: String, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Get function

Get function details by ID including createdBy/updatedBy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let functionId = "functionId_example" // String | Function ID.

// Get function
FunctionsAPI.functionsGet(projectId: projectId, functionId: functionId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **functionId** | **String** | Function ID. | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsGetLogs**
```swift
    open class func functionsGetLogs(projectId: String, functionId: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: FunctionLogsResponse?, _ error: Error?) -> Void)
```

Get function execution logs

Get execution logs with pagination. Includes stats (totalExecutions, successful, failed, successRate, avgExecutionTime, lastRun).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to get logs for.
let limit = 987 // Int | Maximum number of log entries to return. (optional) (default to 50)
let offset = 987 // Int | Number of log entries to skip for pagination. (optional) (default to 0)

// Get function execution logs
FunctionsAPI.functionsGetLogs(projectId: projectId, functionId: functionId, limit: limit, offset: offset) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to get logs for. | 
 **limit** | **Int** | Maximum number of log entries to return. | [optional] [default to 50]
 **offset** | **Int** | Number of log entries to skip for pagination. | [optional] [default to 0]

### Return type

[**FunctionLogsResponse**](FunctionLogsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsGetVersions**
```swift
    open class func functionsGetVersions(projectId: String, functionId: String, completion: @escaping (_ data: FunctionsGetVersions200Response?, _ error: Error?) -> Void)
```

Get function versions

List all code versions for a function. Used for rollback.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to list versions for.

// Get function versions
FunctionsAPI.functionsGetVersions(projectId: projectId, functionId: functionId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to list versions for. | 

### Return type

[**FunctionsGetVersions200Response**](FunctionsGetVersions200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsList**
```swift
    open class func functionsList(projectId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, triggerType: TriggerType_functionsList? = nil, isActive: Bool? = nil, completion: @escaping (_ data: FunctionListResponse?, _ error: Error?) -> Void)
```

List functions

List serverless functions in a project with optional search and filters. Supports trigger types: http, event, document, file, webhook, wallet, cron, messaging. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of functions per page. (optional) (default to 20)
let search = "search_example" // String | Search by name or description (optional)
let triggerType = "triggerType_example" // String | Filter by trigger type (optional)
let isActive = true // Bool | Filter by active status (true/false) (optional)

// List functions
FunctionsAPI.functionsList(projectId: projectId, page: page, limit: limit, search: search, triggerType: triggerType, isActive: isActive) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of functions per page. | [optional] [default to 20]
 **search** | **String** | Search by name or description | [optional] 
 **triggerType** | **String** | Filter by trigger type | [optional] 
 **isActive** | **Bool** | Filter by active status (true/false) | [optional] 

### Return type

[**FunctionListResponse**](FunctionListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsRetry**
```swift
    open class func functionsRetry(projectId: String, functionId: String, executionIndex: Int, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Retry failed execution

Retry a failed execution by its index (0-based) in the logs. Cannot retry successful executions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to retry execution for.
let executionIndex = 987 // Int | 0-based index of the execution in logs

// Retry failed execution
FunctionsAPI.functionsRetry(projectId: projectId, functionId: functionId, executionIndex: executionIndex) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to retry execution for. | 
 **executionIndex** | **Int** | 0-based index of the execution in logs | 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsRollback**
```swift
    open class func functionsRollback(projectId: String, functionId: String, functionsRollbackRequest: FunctionsRollbackRequest, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Rollback to previous version

Rollback function code to a previous version. Version number is required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to rollback.
let functionsRollbackRequest = functions_rollback_request(version: 123) // FunctionsRollbackRequest | Version number (integer) to rollback to; use GET .../versions to list available versions.

// Rollback to previous version
FunctionsAPI.functionsRollback(projectId: projectId, functionId: functionId, functionsRollbackRequest: functionsRollbackRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to rollback. | 
 **functionsRollbackRequest** | [**FunctionsRollbackRequest**](FunctionsRollbackRequest.md) | Version number (integer) to rollback to; use GET .../versions to list available versions. | 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsSimulate**
```swift
    open class func functionsSimulate(projectId: String, functionId: String, functionsSimulateRequest: FunctionsSimulateRequest? = nil, completion: @escaping (_ data: FunctionExecutionResponse?, _ error: Error?) -> Void)
```

Simulate trigger

Test a function with simulated trigger context. Use to verify document, file, webhook, wallet, or cron payloads. Executes the function with the provided eventContext merged into the payload. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) that owns the function.
let functionId = "functionId_example" // String | Function ID (MongoDB ObjectId) to simulate.
let functionsSimulateRequest = functions_simulate_request(trigger: 123, eventContext: 123, payload: 123) // FunctionsSimulateRequest | Simulated trigger (type, event) and eventContext (document, file, webhook, wallet, message, or cron). Merged into the function payload for testing. (optional)

// Simulate trigger
FunctionsAPI.functionsSimulate(projectId: projectId, functionId: functionId, functionsSimulateRequest: functionsSimulateRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) that owns the function. | 
 **functionId** | **String** | Function ID (MongoDB ObjectId) to simulate. | 
 **functionsSimulateRequest** | [**FunctionsSimulateRequest**](FunctionsSimulateRequest.md) | Simulated trigger (type, event) and eventContext (document, file, webhook, wallet, message, or cron). Merged into the function payload for testing. | [optional] 

### Return type

[**FunctionExecutionResponse**](FunctionExecutionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsTriggerWebhook**
```swift
    open class func functionsTriggerWebhook(projectId: String, xWebhookSecret: String? = nil, body: AnyCodable? = nil, completion: @escaping (_ data: FunctionsTriggerWebhook200Response?, _ error: Error?) -> Void)
```

Trigger webhook functions

Public endpoint for external services to trigger functions with `trigger.type: webhook`. No authentication required. Optionally verify using `X-Webhook-Secret` header (configure per project or via FUNCTION_WEBHOOK_SECRET). Rate limited to 30 requests per 15 minutes per IP. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let xWebhookSecret = "xWebhookSecret_example" // String | Optional webhook secret for verification (optional)
let body = "TODO" // AnyCodable | Payload sent to the triggered function(s). (optional)

// Trigger webhook functions
FunctionsAPI.functionsTriggerWebhook(projectId: projectId, xWebhookSecret: xWebhookSecret, body: body) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **xWebhookSecret** | **String** | Optional webhook secret for verification | [optional] 
 **body** | **AnyCodable** | Payload sent to the triggered function(s). | [optional] 

### Return type

[**FunctionsTriggerWebhook200Response**](FunctionsTriggerWebhook200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **functionsUpdate**
```swift
    open class func functionsUpdate(projectId: String, functionId: String, updateFunctionRequest: UpdateFunctionRequest? = nil, completion: @escaping (_ data: FunctionResponse?, _ error: Error?) -> Void)
```

Update function

Update function configuration. Code changes are versioned automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let functionId = "functionId_example" // String | Function ID.
let updateFunctionRequest = UpdateFunctionRequest(name: "name_example", description: "description_example", code: "code_example", trigger: FunctionTrigger(type: "type_example", event: "event_example", schedule: "schedule_example", path: "path_example", method: "method_example", collectionId: "collectionId_example", bucketId: "bucketId_example"), environment: 123, isActive: false, limits: UpdateFunctionRequest_limits(timeout: 123, maxPayloadSize: 123, maxExecutionsPerMinute: 123, maxExecutionsPerHour: 123), retryPolicy: UpdateFunctionRequest_retryPolicy(enabled: false, maxRetries: 123, backoffMs: 123), versionComment: "versionComment_example") // UpdateFunctionRequest | Fields to update (name, description, code, trigger, environment, isActive, limits, retryPolicy). (optional)

// Update function
FunctionsAPI.functionsUpdate(projectId: projectId, functionId: functionId, updateFunctionRequest: updateFunctionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **functionId** | **String** | Function ID. | 
 **updateFunctionRequest** | [**UpdateFunctionRequest**](UpdateFunctionRequest.md) | Fields to update (name, description, code, trigger, environment, isActive, limits, retryPolicy). | [optional] 

### Return type

[**FunctionResponse**](FunctionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

