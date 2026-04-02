# RealtimeAnalyticsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**realtimeAnalyticsCheckUserPresence**](RealtimeAnalyticsAPI.md#realtimeanalyticscheckuserpresence) | **POST** /api/realtime/projects/{projectId}/presence | Check presence status for users
[**realtimeAnalyticsGetActiveUsers**](RealtimeAnalyticsAPI.md#realtimeanalyticsgetactiveusers) | **GET** /api/realtime/projects/{projectId}/active-users | Get active users for a project
[**realtimeAnalyticsGetEventThroughput**](RealtimeAnalyticsAPI.md#realtimeanalyticsgeteventthroughput) | **GET** /api/realtime/projects/{projectId}/throughput | Get event throughput metrics
[**realtimeAnalyticsGetHistoricalAnalytics**](RealtimeAnalyticsAPI.md#realtimeanalyticsgethistoricalanalytics) | **GET** /api/realtime/projects/{projectId}/history | Get historical analytics
[**realtimeAnalyticsGetProject**](RealtimeAnalyticsAPI.md#realtimeanalyticsgetproject) | **GET** /api/realtime/projects/{projectId}/analytics | Get project real-time analytics


# **realtimeAnalyticsCheckUserPresence**
```swift
    open class func realtimeAnalyticsCheckUserPresence(projectId: String, realtimeAnalyticsCheckUserPresenceRequest: RealtimeAnalyticsCheckUserPresenceRequest, completion: @escaping (_ data: RealtimeAnalyticsCheckUserPresence200Response?, _ error: Error?) -> Void)
```

Check presence status for users

Returns online status for specified user IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let realtimeAnalyticsCheckUserPresenceRequest = realtimeAnalytics_checkUserPresence_request(userIds: ["userIds_example"]) // RealtimeAnalyticsCheckUserPresenceRequest | Array of user IDs to check presence for.

// Check presence status for users
RealtimeAnalyticsAPI.realtimeAnalyticsCheckUserPresence(projectId: projectId, realtimeAnalyticsCheckUserPresenceRequest: realtimeAnalyticsCheckUserPresenceRequest) { (response, error) in
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
 **realtimeAnalyticsCheckUserPresenceRequest** | [**RealtimeAnalyticsCheckUserPresenceRequest**](RealtimeAnalyticsCheckUserPresenceRequest.md) | Array of user IDs to check presence for. | 

### Return type

[**RealtimeAnalyticsCheckUserPresence200Response**](RealtimeAnalyticsCheckUserPresence200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realtimeAnalyticsGetActiveUsers**
```swift
    open class func realtimeAnalyticsGetActiveUsers(projectId: String, completion: @escaping (_ data: RealtimeAnalyticsGetActiveUsers200Response?, _ error: Error?) -> Void)
```

Get active users for a project

Returns list of currently connected users

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.

// Get active users for a project
RealtimeAnalyticsAPI.realtimeAnalyticsGetActiveUsers(projectId: projectId) { (response, error) in
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

### Return type

[**RealtimeAnalyticsGetActiveUsers200Response**](RealtimeAnalyticsGetActiveUsers200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realtimeAnalyticsGetEventThroughput**
```swift
    open class func realtimeAnalyticsGetEventThroughput(projectId: String, window: Int? = nil, completion: @escaping (_ data: RealtimeAnalyticsGetEventThroughput200Response?, _ error: Error?) -> Void)
```

Get event throughput metrics

Returns event throughput for a project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let window = 987 // Int | Time window in milliseconds (optional) (default to 60000)

// Get event throughput metrics
RealtimeAnalyticsAPI.realtimeAnalyticsGetEventThroughput(projectId: projectId, window: window) { (response, error) in
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
 **window** | **Int** | Time window in milliseconds | [optional] [default to 60000]

### Return type

[**RealtimeAnalyticsGetEventThroughput200Response**](RealtimeAnalyticsGetEventThroughput200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realtimeAnalyticsGetHistoricalAnalytics**
```swift
    open class func realtimeAnalyticsGetHistoricalAnalytics(projectId: String, period: Period_realtimeAnalyticsGetHistoricalAnalytics? = nil, completion: @escaping (_ data: RealtimeAnalyticsGetHistoricalAnalytics200Response?, _ error: Error?) -> Void)
```

Get historical analytics

Returns historical analytics for charting

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let period = "period_example" // String | Time period for historical data (optional) (default to .hour)

// Get historical analytics
RealtimeAnalyticsAPI.realtimeAnalyticsGetHistoricalAnalytics(projectId: projectId, period: period) { (response, error) in
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
 **period** | **String** | Time period for historical data | [optional] [default to .hour]

### Return type

[**RealtimeAnalyticsGetHistoricalAnalytics200Response**](RealtimeAnalyticsGetHistoricalAnalytics200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **realtimeAnalyticsGetProject**
```swift
    open class func realtimeAnalyticsGetProject(projectId: String, completion: @escaping (_ data: RealtimeAnalyticsGetProject200Response?, _ error: Error?) -> Void)
```

Get project real-time analytics

Returns real-time metrics for a specific project (active connections, events, etc.)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to get real-time analytics for.

// Get project real-time analytics
RealtimeAnalyticsAPI.realtimeAnalyticsGetProject(projectId: projectId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to get real-time analytics for. | 

### Return type

[**RealtimeAnalyticsGetProject200Response**](RealtimeAnalyticsGetProject200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

