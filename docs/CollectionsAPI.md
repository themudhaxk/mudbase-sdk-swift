# CollectionsAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**collectionsCreate**](CollectionsAPI.md#collectionscreate) | **POST** /api/schemas/projects/{projectId}/collections | Create new collection
[**collectionsDelete**](CollectionsAPI.md#collectionsdelete) | **DELETE** /api/schemas/projects/{projectId}/collections/{collectionId} | Delete collection
[**collectionsGet**](CollectionsAPI.md#collectionsget) | **GET** /api/schemas/projects/{projectId}/collections/{collectionId} | Get single collection
[**collectionsList**](CollectionsAPI.md#collectionslist) | **GET** /api/schemas/projects/{projectId}/collections | List collections in project
[**collectionsUpdate**](CollectionsAPI.md#collectionsupdate) | **PATCH** /api/schemas/projects/{projectId}/collections/{collectionId} | Update collection


# **collectionsCreate**
```swift
    open class func collectionsCreate(projectId: String, createCollectionRequest: CreateCollectionRequest, completion: @escaping (_ data: CollectionsCreate201Response?, _ error: Error?) -> Void)
```

Create new collection

Create a new collection in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let createCollectionRequest = CreateCollectionRequest(name: "name_example", slug: "slug_example", fields: [Field(name: "name_example", type: "type_example", _required: false, unique: false, _default: Field_default(), validation: 123, ui: 123)], permissions: [Permission(role: "role_example", actions: ["actions_example"], fields: ["fields_example"], condition: 123)], settings: 123) // CreateCollectionRequest | Collection name, optional slug, fields, permissions, and settings.

// Create new collection
CollectionsAPI.collectionsCreate(projectId: projectId, createCollectionRequest: createCollectionRequest) { (response, error) in
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
 **createCollectionRequest** | [**CreateCollectionRequest**](CreateCollectionRequest.md) | Collection name, optional slug, fields, permissions, and settings. | 

### Return type

[**CollectionsCreate201Response**](CollectionsCreate201Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **collectionsDelete**
```swift
    open class func collectionsDelete(projectId: String, collectionId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete collection

Delete a collection permanently. This is a destructive operation. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.

// Delete collection
CollectionsAPI.collectionsDelete(projectId: projectId, collectionId: collectionId) { (response, error) in
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

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **collectionsGet**
```swift
    open class func collectionsGet(projectId: String, collectionId: String, completion: @escaping (_ data: Collection?, _ error: Error?) -> Void)
```

Get single collection

Get collection details by ID. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.

// Get single collection
CollectionsAPI.collectionsGet(projectId: projectId, collectionId: collectionId) { (response, error) in
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

### Return type

[**Collection**](Collection.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **collectionsList**
```swift
    open class func collectionsList(projectId: String, completion: @escaping (_ data: CollectionsList200Response?, _ error: Error?) -> Void)
```

List collections in project

List all collections in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.

// List collections in project
CollectionsAPI.collectionsList(projectId: projectId) { (response, error) in
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

[**CollectionsList200Response**](CollectionsList200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **collectionsUpdate**
```swift
    open class func collectionsUpdate(projectId: String, collectionId: String, updateCollectionRequest: UpdateCollectionRequest, completion: @escaping (_ data: CollectionsCreate201Response?, _ error: Error?) -> Void)
```

Update collection

Update collection configuration (name, fields, permissions). Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let collectionId = "collectionId_example" // String | Collection ID.
let updateCollectionRequest = UpdateCollectionRequest(name: "name_example", fields: [Field(name: "name_example", type: "type_example", _required: false, unique: false, _default: Field_default(), validation: 123, ui: 123)], permissions: [Permission(role: "role_example", actions: ["actions_example"], fields: ["fields_example"], condition: 123)], settings: 123) // UpdateCollectionRequest | Fields to update (name, fields, permissions, settings).

// Update collection
CollectionsAPI.collectionsUpdate(projectId: projectId, collectionId: collectionId, updateCollectionRequest: updateCollectionRequest) { (response, error) in
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
 **updateCollectionRequest** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md) | Fields to update (name, fields, permissions, settings). | 

### Return type

[**CollectionsCreate201Response**](CollectionsCreate201Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

