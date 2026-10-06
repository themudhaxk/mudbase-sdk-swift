# SearchAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSearchAnalytics**](SearchAPI.md#getsearchanalytics) | **GET** /api/search/projects/{projectId}/search/analytics | Get search analytics
[**getSearchSuggestions**](SearchAPI.md#getsearchsuggestions) | **GET** /api/search/projects/{projectId}/search/suggestions | Get search suggestions
[**searchData**](SearchAPI.md#searchdata) | **GET** /api/search/projects/{projectId}/search | Full-text search


# **getSearchAnalytics**
```swift
    open class func getSearchAnalytics(projectId: String, timeframe: Timeframe_getSearchAnalytics? = nil, completion: @escaping (_ data: GetSearchAnalytics200Response?, _ error: Error?) -> Void)
```

Get search analytics

Get search analytics including top queries, search volume, and performance metrics. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let timeframe = "timeframe_example" // String |  (optional) (default to ._7d)

// Get search analytics
SearchAPI.getSearchAnalytics(projectId: projectId, timeframe: timeframe) { (response, error) in
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
 **timeframe** | **String** |  | [optional] [default to ._7d]

### Return type

[**GetSearchAnalytics200Response**](GetSearchAnalytics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchSuggestions**
```swift
    open class func getSearchSuggestions(projectId: String, q: String, limit: Int? = nil, completion: @escaping (_ data: GetSearchSuggestions200Response?, _ error: Error?) -> Void)
```

Get search suggestions

Get search query suggestions based on partial input. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let q = "q_example" // String | 
let limit = 987 // Int |  (optional) (default to 10)

// Get search suggestions
SearchAPI.getSearchSuggestions(projectId: projectId, q: q, limit: limit) { (response, error) in
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
 **q** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 10]

### Return type

[**GetSearchSuggestions200Response**](GetSearchSuggestions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchData**
```swift
    open class func searchData(projectId: String, q: String, collections: String? = nil, fields: String? = nil, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: SearchResponse?, _ error: Error?) -> Void)
```

Full-text search

Perform full-text search across collections in a project. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let q = "q_example" // String | 
let collections = "collections_example" // String |  (optional)
let fields = "fields_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 20)
let page = 987 // Int |  (optional) (default to 1)

// Full-text search
SearchAPI.searchData(projectId: projectId, q: q, collections: collections, fields: fields, limit: limit, page: page) { (response, error) in
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
 **q** | **String** |  | 
 **collections** | **String** |  | [optional] 
 **fields** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 20]
 **page** | **Int** |  | [optional] [default to 1]

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

