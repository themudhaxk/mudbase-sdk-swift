# DataAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createData**](DataAPI.md#createdata) | **POST** /api/data/projects/{projectId}/collections/{collectionId}/data | Create data in collection
[**deleteData**](DataAPI.md#deletedata) | **DELETE** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Delete document
[**getData**](DataAPI.md#getdata) | **GET** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Get single document
[**listData**](DataAPI.md#listdata) | **GET** /api/data/projects/{projectId}/collections/{collectionId}/data | List data in collection
[**updateData**](DataAPI.md#updatedata) | **PATCH** /api/data/projects/{projectId}/collections/{collectionId}/data/{documentId} | Update document


# **createData**
```swift
    open class func createData(projectId: String, collectionId: String, body: AnyCodable, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Create data in collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let body = "TODO" // AnyCodable | 

// Create data in collection
DataAPI.createData(projectId: projectId, collectionId: collectionId, body: body) { (response, error) in
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
 **collectionId** | **String** |  | 
 **body** | **AnyCodable** |  | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteData**
```swift
    open class func deleteData(projectId: String, collectionId: String, documentId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete document

Delete a document from a collection. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let documentId = "documentId_example" // String | 

// Delete document
DataAPI.deleteData(projectId: projectId, collectionId: collectionId, documentId: documentId) { (response, error) in
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
 **collectionId** | **String** |  | 
 **documentId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getData**
```swift
    open class func getData(projectId: String, collectionId: String, documentId: String, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Get single document

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let documentId = "documentId_example" // String | 

// Get single document
DataAPI.getData(projectId: projectId, collectionId: collectionId, documentId: documentId) { (response, error) in
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
 **collectionId** | **String** |  | 
 **documentId** | **String** |  | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listData**
```swift
    open class func listData(projectId: String, collectionId: String, page: Int? = nil, limit: Int? = nil, sort: String? = nil, filter: String? = nil, completion: @escaping (_ data: DataListResponse?, _ error: Error?) -> Void)
```

List data in collection

List all documents in a collection. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let sort = "sort_example" // String |  (optional) (default to "-createdAt")
let filter = "filter_example" // String |  (optional)

// List data in collection
DataAPI.listData(projectId: projectId, collectionId: collectionId, page: page, limit: limit, sort: sort, filter: filter) { (response, error) in
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
 **collectionId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **sort** | **String** |  | [optional] [default to &quot;-createdAt&quot;]
 **filter** | **String** |  | [optional] 

### Return type

[**DataListResponse**](DataListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateData**
```swift
    open class func updateData(projectId: String, collectionId: String, documentId: String, body: AnyCodable, completion: @escaping (_ data: DataResponse?, _ error: Error?) -> Void)
```

Update document

Update a document in a collection. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let documentId = "documentId_example" // String | 
let body = "TODO" // AnyCodable | 

// Update document
DataAPI.updateData(projectId: projectId, collectionId: collectionId, documentId: documentId, body: body) { (response, error) in
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
 **collectionId** | **String** |  | 
 **documentId** | **String** |  | 
 **body** | **AnyCodable** |  | 

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

