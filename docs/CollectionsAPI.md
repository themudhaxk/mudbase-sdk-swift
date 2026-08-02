# CollectionsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCollection**](CollectionsAPI.md#createcollection) | **POST** /api/schemas/projects/{projectId}/collections | Create new collection
[**deleteCollection**](CollectionsAPI.md#deletecollection) | **DELETE** /api/schemas/projects/{projectId}/collections/{collectionId} | Delete collection
[**getCollection**](CollectionsAPI.md#getcollection) | **GET** /api/schemas/projects/{projectId}/collections/{collectionId} | Get single collection
[**listCollections**](CollectionsAPI.md#listcollections) | **GET** /api/schemas/projects/{projectId}/collections | List collections in project
[**updateCollection**](CollectionsAPI.md#updatecollection) | **PATCH** /api/schemas/projects/{projectId}/collections/{collectionId} | Update collection


# **createCollection**
```swift
    open class func createCollection(projectId: String, createCollectionRequest: CreateCollectionRequest, completion: @escaping (_ data: CreateCollection201Response?, _ error: Error?) -> Void)
```

Create new collection

Create a new collection in a project. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let createCollectionRequest = CreateCollectionRequest(name: "name_example", slug: "slug_example", fields: [Field(name: "name_example", type: "type_example", _required: false, unique: false, _default: Field_default(), validation: 123, ui: 123)], permissions: [Permission(role: "role_example", actions: ["actions_example"], fields: ["fields_example"], condition: 123)], settings: 123) // CreateCollectionRequest | 

// Create new collection
CollectionsAPI.createCollection(projectId: projectId, createCollectionRequest: createCollectionRequest) { (response, error) in
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
 **createCollectionRequest** | [**CreateCollectionRequest**](CreateCollectionRequest.md) |  | 

### Return type

[**CreateCollection201Response**](CreateCollection201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
```swift
    open class func deleteCollection(projectId: String, collectionId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete collection

Delete a collection permanently. This is a destructive operation. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 

// Delete collection
CollectionsAPI.deleteCollection(projectId: projectId, collectionId: collectionId) { (response, error) in
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

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollection**
```swift
    open class func getCollection(projectId: String, collectionId: String, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Get single collection

Get collection details by ID. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 

// Get single collection
CollectionsAPI.getCollection(projectId: projectId, collectionId: collectionId) { (response, error) in
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

### Return type

[**Collection**](Collection.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCollections**
```swift
    open class func listCollections(projectId: String, completion: @escaping (_ data: ListCollections200Response?, _ error: Error?) -> Void)
```

List collections in project

List all collections in a project. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List collections in project
CollectionsAPI.listCollections(projectId: projectId) { (response, error) in
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

[**ListCollections200Response**](ListCollections200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollection**
```swift
    open class func updateCollection(projectId: String, collectionId: String, updateCollectionRequest: UpdateCollectionRequest, completion: @escaping (_ data: CreateCollection201Response?, _ error: Error?) -> Void)
```

Update collection

Update collection configuration (name, fields, permissions). Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let collectionId = "collectionId_example" // String | 
let updateCollectionRequest = UpdateCollectionRequest(name: "name_example", fields: [Field(name: "name_example", type: "type_example", _required: false, unique: false, _default: Field_default(), validation: 123, ui: 123)], permissions: [Permission(role: "role_example", actions: ["actions_example"], fields: ["fields_example"], condition: 123)], settings: 123) // UpdateCollectionRequest | 

// Update collection
CollectionsAPI.updateCollection(projectId: projectId, collectionId: collectionId, updateCollectionRequest: updateCollectionRequest) { (response, error) in
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
 **updateCollectionRequest** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md) |  | 

### Return type

[**CreateCollection201Response**](CreateCollection201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

