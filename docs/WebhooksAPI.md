# WebhooksAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooksGetStats**](WebhooksAPI.md#webhooksgetstats) | **GET** /api/webhooks/stats | Get webhook statistics


# **webhooksGetStats**
```swift
    open class func webhooksGetStats(projectId: String? = nil, days: Int? = nil, completion: @escaping (_ data: WebhookStatsResponse?, _ error: Error?) -> Void)
```

Get webhook statistics

Get webhook delivery statistics including success rate, total deliveries, and breakdown by status. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID to filter stats (optional). (optional)
let days = 987 // Int | Number of days to include in the stats window. (optional) (default to 7)

// Get webhook statistics
WebhooksAPI.webhooksGetStats(projectId: projectId, days: days) { (response, error) in
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
 **projectId** | **String** | Project ID to filter stats (optional). | [optional] 
 **days** | **Int** | Number of days to include in the stats window. | [optional] [default to 7]

### Return type

[**WebhookStatsResponse**](WebhookStatsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

