# RoleElevationAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**roleElevationGetStatus**](RoleElevationAPI.md#roleelevationgetstatus) | **GET** /api/projects/{projectId}/role-elevation/status | Get role elevation status
[**roleElevationRequest**](RoleElevationAPI.md#roleelevationrequest) | **POST** /api/projects/{projectId}/role-elevation/request | Request role elevation
[**roleElevationUploadDocuments**](RoleElevationAPI.md#roleelevationuploaddocuments) | **POST** /api/projects/{projectId}/role-elevation/documents | Upload verification documents


# **roleElevationGetStatus**
```swift
    open class func roleElevationGetStatus(projectId: String, roleSlug: String? = nil, completion: @escaping (_ data: RoleElevationGetStatus200Response?, _ error: Error?) -> Void)
```

Get role elevation status

Get status of pending role elevation requests for current user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Optional filter by role slug. (optional)

// Get role elevation status
RoleElevationAPI.roleElevationGetStatus(projectId: projectId, roleSlug: roleSlug) { (response, error) in
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
 **roleSlug** | **String** | Optional filter by role slug. | [optional] 

### Return type

[**RoleElevationGetStatus200Response**](RoleElevationGetStatus200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **roleElevationRequest**
```swift
    open class func roleElevationRequest(projectId: String, roleElevationRequestRequest: RoleElevationRequestRequest, completion: @escaping (_ data: RoleElevationRequest200Response?, _ error: Error?) -> Void)
```

Request role elevation

User requests to upgrade to a specific role. May require payment, KYC, or admin approval based on role configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleElevationRequestRequest = roleElevation_request_request(roleSlug: "roleSlug_example") // RoleElevationRequestRequest | Role slug to request elevation to (e.g. vendor).

// Request role elevation
RoleElevationAPI.roleElevationRequest(projectId: projectId, roleElevationRequestRequest: roleElevationRequestRequest) { (response, error) in
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
 **roleElevationRequestRequest** | [**RoleElevationRequestRequest**](RoleElevationRequestRequest.md) | Role slug to request elevation to (e.g. vendor). | 

### Return type

[**RoleElevationRequest200Response**](RoleElevationRequest200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **roleElevationUploadDocuments**
```swift
    open class func roleElevationUploadDocuments(projectId: String, roleElevationUploadDocumentsRequest: RoleElevationUploadDocumentsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload verification documents

Upload KYC/verification documents for role elevation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleElevationUploadDocumentsRequest = roleElevation_uploadDocuments_request(roleSlug: "roleSlug_example", documents: [roleElevation_uploadDocuments_request_documents_inner(type: "type_example", url: "url_example")]) // RoleElevationUploadDocumentsRequest | Role slug and array of document objects (type, url).

// Upload verification documents
RoleElevationAPI.roleElevationUploadDocuments(projectId: projectId, roleElevationUploadDocumentsRequest: roleElevationUploadDocumentsRequest) { (response, error) in
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
 **roleElevationUploadDocumentsRequest** | [**RoleElevationUploadDocumentsRequest**](RoleElevationUploadDocumentsRequest.md) | Role slug and array of document objects (type, url). | 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

