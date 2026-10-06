# RealTimeAnalyticsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkUserPresence**](RealTimeAnalyticsAPI.md#checkuserpresence) | **POST** /api/realtime/projects/{projectId}/presence | Check presence status for users
[**getActiveUsers**](RealTimeAnalyticsAPI.md#getactiveusers) | **GET** /api/realtime/projects/{projectId}/active-users | Get active users for a project
[**getEventThroughput**](RealTimeAnalyticsAPI.md#geteventthroughput) | **GET** /api/realtime/projects/{projectId}/throughput | Get event throughput metrics
[**getGlobalAnalytics**](RealTimeAnalyticsAPI.md#getglobalanalytics) | **GET** /api/realtime/analytics | Get global real-time analytics
[**getHistoricalAnalytics**](RealTimeAnalyticsAPI.md#gethistoricalanalytics) | **GET** /api/realtime/projects/{projectId}/history | Get historical analytics
[**getProjectAnalytics**](RealTimeAnalyticsAPI.md#getprojectanalytics) | **GET** /api/realtime/projects/{projectId}/analytics | Get project real-time analytics


# **checkUserPresence**
```swift
    open class func checkUserPresence(projectId: String, checkUserPresenceRequest: CheckUserPresenceRequest, completion: @escaping (_ data: CheckUserPresence200Response?, _ error: Error?) -> Void)
```

Check presence status for users

Returns online status for specified user IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let checkUserPresenceRequest = checkUserPresence_request(userIds: ["userIds_example"]) // CheckUserPresenceRequest | 

// Check presence status for users
RealTimeAnalyticsAPI.checkUserPresence(projectId: projectId, checkUserPresenceRequest: checkUserPresenceRequest) { (response, error) in
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
 **checkUserPresenceRequest** | [**CheckUserPresenceRequest**](CheckUserPresenceRequest.md) |  | 

### Return type

[**CheckUserPresence200Response**](CheckUserPresence200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActiveUsers**
```swift
    open class func getActiveUsers(projectId: String, completion: @escaping (_ data: GetActiveUsers200Response?, _ error: Error?) -> Void)
```

Get active users for a project

Returns list of currently connected users

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get active users for a project
RealTimeAnalyticsAPI.getActiveUsers(projectId: projectId) { (response, error) in
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

[**GetActiveUsers200Response**](GetActiveUsers200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventThroughput**
```swift
    open class func getEventThroughput(projectId: String, window: Int? = nil, completion: @escaping (_ data: GetEventThroughput200Response?, _ error: Error?) -> Void)
```

Get event throughput metrics

Returns event throughput for a project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let window = 987 // Int | Time window in milliseconds (optional) (default to 60000)

// Get event throughput metrics
RealTimeAnalyticsAPI.getEventThroughput(projectId: projectId, window: window) { (response, error) in
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
 **window** | **Int** | Time window in milliseconds | [optional] [default to 60000]

### Return type

[**GetEventThroughput200Response**](GetEventThroughput200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalAnalytics**
```swift
    open class func getGlobalAnalytics(completion: @escaping (_ data: GetGlobalAnalytics200Response?, _ error: Error?) -> Void)
```

Get global real-time analytics

Returns system-wide real-time metrics (admin only)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get global real-time analytics
RealTimeAnalyticsAPI.getGlobalAnalytics() { (response, error) in
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

[**GetGlobalAnalytics200Response**](GetGlobalAnalytics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricalAnalytics**
```swift
    open class func getHistoricalAnalytics(projectId: String, period: Period_getHistoricalAnalytics? = nil, completion: @escaping (_ data: GetHistoricalAnalytics200Response?, _ error: Error?) -> Void)
```

Get historical analytics

Returns historical analytics for charting

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let period = "period_example" // String | Time period for historical data (optional) (default to .hour)

// Get historical analytics
RealTimeAnalyticsAPI.getHistoricalAnalytics(projectId: projectId, period: period) { (response, error) in
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
 **period** | **String** | Time period for historical data | [optional] [default to .hour]

### Return type

[**GetHistoricalAnalytics200Response**](GetHistoricalAnalytics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectAnalytics**
```swift
    open class func getProjectAnalytics(projectId: String, completion: @escaping (_ data: GetProjectAnalytics200Response?, _ error: Error?) -> Void)
```

Get project real-time analytics

Returns real-time metrics for a specific project (active connections, events, etc.)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get project real-time analytics
RealTimeAnalyticsAPI.getProjectAnalytics(projectId: projectId) { (response, error) in
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

[**GetProjectAnalytics200Response**](GetProjectAnalytics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

