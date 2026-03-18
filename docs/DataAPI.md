# DataAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataCreate**](DataAPI.md#datacreate) | **POST** /api/data/projects/{projectId}/collections/{collectionId}/data | Create data in collection
[**dataDelete**](DataAPI.md#datadelete) | **DELETE** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Delete document
[**dataGet**](DataAPI.md#dataget) | **GET** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Get single document
[**dataList**](DataAPI.md#datalist) | **GET** /api/data/projects/{projectId}/collections/{collectionId}/data | List data in collection
[**dataUpdate**](DataAPI.md#dataupdate) | **PATCH** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Update document


# **dataCreate**
```swift
    open class func dataCreate(projectId: String, collectionId: String, body: AnyCodable, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Create data in collection

Create a new document in a collection. Request body must match the collection schema. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let body = "TODO" // AnyCodable | Document fields matching the collection schema.

// Create data in collection
DataAPI.dataCreate(projectId: projectId, collectionId: collectionId, body: body) { (response, error) in
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
 **collectionId** | **String** | Collection ID. | 
 **body** | **AnyCodable** | Document fields matching the collection schema. | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataDelete**
```swift
    open class func dataDelete(projectId: String, collectionId: String, documentId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete document

Delete a document from a collection. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let documentId = "documentId_example" // String | Document ID.

// Delete document
DataAPI.dataDelete(projectId: projectId, collectionId: collectionId, documentId: documentId) { (response, error) in
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
 **collectionId** | **String** | Collection ID. | 
 **documentId** | **String** | Document ID. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataGet**
```swift
    open class func dataGet(projectId: String, collectionId: String, documentId: String, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Get single document

Get a document by ID from a collection. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let documentId = "documentId_example" // String | Document ID.

// Get single document
DataAPI.dataGet(projectId: projectId, collectionId: collectionId, documentId: documentId) { (response, error) in
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
 **collectionId** | **String** | Collection ID. | 
 **documentId** | **String** | Document ID. | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataList**
```swift
    open class func dataList(projectId: String, collectionId: String, page: Int? = nil, limit: Int? = nil, sort: String? = nil, filter: String? = nil, completion: @escaping (_ data: DataListResponse?, _ error: Error?) -> Void)
```

List data in collection

List all documents in a collection with optional pagination, sort, and filter. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of documents per page. (optional) (default to 20)
let sort = "sort_example" // String | Sort field and order (e.g. -createdAt, name). (optional) (default to "-createdAt")
let filter = "filter_example" // String | JSON string for filtering documents (e.g. {\"status\":\"active\"}). (optional)

// List data in collection
DataAPI.dataList(projectId: projectId, collectionId: collectionId, page: page, limit: limit, sort: sort, filter: filter) { (response, error) in
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
 **collectionId** | **String** | Collection ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of documents per page. | [optional] [default to 20]
 **sort** | **String** | Sort field and order (e.g. -createdAt, name). | [optional] [default to &quot;-createdAt&quot;]
 **filter** | **String** | JSON string for filtering documents (e.g. {\&quot;status\&quot;:\&quot;active\&quot;}). | [optional] 

### Return type

[**DataListResponse**](DataListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dataUpdate**
```swift
    open class func dataUpdate(projectId: String, collectionId: String, documentId: String, body: AnyCodable, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Update document

Update a document in a collection. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let documentId = "documentId_example" // String | Document ID.
let body = "TODO" // AnyCodable | Partial document fields to update.

// Update document
DataAPI.dataUpdate(projectId: projectId, collectionId: collectionId, documentId: documentId, body: body) { (response, error) in
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
 **collectionId** | **String** | Collection ID. | 
 **documentId** | **String** | Document ID. | 
 **body** | **AnyCodable** | Partial document fields to update. | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

