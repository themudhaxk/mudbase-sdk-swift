# SearchAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchGetAnalytics**](SearchAPI.md#searchgetanalytics) | **GET** /api/search/projects/{projectId}/search/analytics | Get search analytics
[**searchGetSuggestions**](SearchAPI.md#searchgetsuggestions) | **GET** /api/search/projects/{projectId}/search/suggestions | Get search suggestions
[**searchSearch**](SearchAPI.md#searchsearch) | **GET** /api/search/projects/{projectId}/search | Full-text search


# **searchGetAnalytics**
```swift
    open class func searchGetAnalytics(projectId: String, timeframe: Timeframe_searchGetAnalytics? = nil, completion: @escaping (_ data: SearchGetAnalytics200Response?, _ error: Error?) -> Void)
```

Get search analytics

Get search analytics including top queries, search volume, and performance metrics. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to get analytics for.
let timeframe = "timeframe_example" // String | Timeframe for analytics (1d, 7d, or 30d). (optional) (default to ._7d)

// Get search analytics
SearchAPI.searchGetAnalytics(projectId: projectId, timeframe: timeframe) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to get analytics for. | 
 **timeframe** | **String** | Timeframe for analytics (1d, 7d, or 30d). | [optional] [default to ._7d]

### Return type

[**SearchGetAnalytics200Response**](SearchGetAnalytics200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGetSuggestions**
```swift
    open class func searchGetSuggestions(projectId: String, q: String, limit: Int? = nil, completion: @escaping (_ data: SearchGetSuggestions200Response?, _ error: Error?) -> Void)
```

Get search suggestions

Get search query suggestions based on partial input. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to get suggestions for.
let q = "q_example" // String | Partial search query (min 2 characters, max 50); suggestions are based on past queries and indexed content.
let limit = 987 // Int | Maximum number of suggestions to return (1–20). (optional) (default to 10)

// Get search suggestions
SearchAPI.searchGetSuggestions(projectId: projectId, q: q, limit: limit) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to get suggestions for. | 
 **q** | **String** | Partial search query (min 2 characters, max 50); suggestions are based on past queries and indexed content. | 
 **limit** | **Int** | Maximum number of suggestions to return (1–20). | [optional] [default to 10]

### Return type

[**SearchGetSuggestions200Response**](SearchGetSuggestions200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSearch**
```swift
    open class func searchSearch(projectId: String, q: String, collections: String? = nil, fields: String? = nil, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: SearchResponse?, _ error: Error?) -> Void)
```

Full-text search

Perform full-text search across collections in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to search within.
let q = "q_example" // String | Full-text search query string.
let collections = "collections_example" // String | Comma-separated collection slugs or IDs to limit search scope. (optional)
let fields = "fields_example" // String | Comma-separated field names to search or return in highlights. (optional)
let limit = 987 // Int | Maximum number of results to return per page. (optional) (default to 20)
let page = 987 // Int | Page number for pagination (1-based). (optional) (default to 1)

// Full-text search
SearchAPI.searchSearch(projectId: projectId, q: q, collections: collections, fields: fields, limit: limit, page: page) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to search within. | 
 **q** | **String** | Full-text search query string. | 
 **collections** | **String** | Comma-separated collection slugs or IDs to limit search scope. | [optional] 
 **fields** | **String** | Comma-separated field names to search or return in highlights. | [optional] 
 **limit** | **Int** | Maximum number of results to return per page. | [optional] [default to 20]
 **page** | **Int** | Page number for pagination (1-based). | [optional] [default to 1]

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

