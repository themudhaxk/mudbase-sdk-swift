# UsageAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usageGetProject**](UsageAPI.md#usagegetproject) | **GET** /api/usage/projects/{projectId} | Get project usage
[**usageGetTrends**](UsageAPI.md#usagegettrends) | **GET** /api/usage/trends | Get usage trends


# **usageGetProject**
```swift
    open class func usageGetProject(projectId: String, period: Period_usageGetProject? = nil, completion: @escaping (_ data: ProjectUsageStatsResponse?, _ error: Error?) -> Void)
```

Get project usage

Get usage statistics for a project (API calls, storage, bandwidth, database operations). Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to get usage for.
let period = "period_example" // String | Aggregation period for usage (day, week, or month). (optional) (default to .month)

// Get project usage
UsageAPI.usageGetProject(projectId: projectId, period: period) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to get usage for. | 
 **period** | **String** | Aggregation period for usage (day, week, or month). | [optional] [default to .month]

### Return type

[**ProjectUsageStatsResponse**](ProjectUsageStatsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usageGetTrends**
```swift
    open class func usageGetTrends(days: Int? = nil, completion: @escaping (_ data: UsageTrendsResponse?, _ error: Error?) -> Void)
```

Get usage trends

Get usage trends over time for the authenticated organization or project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let days = 987 // Int | Number of days of trend data to return (default 30). (optional) (default to 30)

// Get usage trends
UsageAPI.usageGetTrends(days: days) { (response, error) in
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
 **days** | **Int** | Number of days of trend data to return (default 30). | [optional] [default to 30]

### Return type

[**UsageTrendsResponse**](UsageTrendsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

