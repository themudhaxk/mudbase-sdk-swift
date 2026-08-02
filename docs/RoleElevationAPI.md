# RoleElevationAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approveRoleElevation**](RoleElevationAPI.md#approveroleelevation) | **POST** /api/orgs/{orgId}/role-elevation/{requestId}/approve | Approve/reject role elevation request (admin only)
[**getPendingRoleElevationRequests**](RoleElevationAPI.md#getpendingroleelevationrequests) | **GET** /api/orgs/{orgId}/role-elevation/pending | Get pending role elevation requests (admin only)
[**getRoleElevationStatus**](RoleElevationAPI.md#getroleelevationstatus) | **GET** /api/projects/{projectId}/role-elevation/status | Get role elevation status
[**requestRoleElevation**](RoleElevationAPI.md#requestroleelevation) | **POST** /api/projects/{projectId}/role-elevation/request | Request role elevation
[**uploadVerificationDocuments**](RoleElevationAPI.md#uploadverificationdocuments) | **POST** /api/projects/{projectId}/role-elevation/documents | Upload verification documents


# **approveRoleElevation**
```swift
    open class func approveRoleElevation(orgId: String, requestId: String, approveRoleElevationRequest: ApproveRoleElevationRequest, completion: @escaping (_ data: ApproveRoleElevation200Response?, _ error: Error?) -> Void)
```

Approve/reject role elevation request (admin only)

Admin approves or rejects a role elevation request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let requestId = "requestId_example" // String | 
let approveRoleElevationRequest = approveRoleElevation_request(approved: false, reason: "reason_example") // ApproveRoleElevationRequest | 

// Approve/reject role elevation request (admin only)
RoleElevationAPI.approveRoleElevation(orgId: orgId, requestId: requestId, approveRoleElevationRequest: approveRoleElevationRequest) { (response, error) in
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
 **orgId** | **String** |  | 
 **requestId** | **String** |  | 
 **approveRoleElevationRequest** | [**ApproveRoleElevationRequest**](ApproveRoleElevationRequest.md) |  | 

### Return type

[**ApproveRoleElevation200Response**](ApproveRoleElevation200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPendingRoleElevationRequests**
```swift
    open class func getPendingRoleElevationRequests(orgId: String, status: Status_getPendingRoleElevationRequests? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: GetPendingRoleElevationRequests200Response?, _ error: Error?) -> Void)
```

Get pending role elevation requests (admin only)

Get all pending role elevation requests requiring admin approval

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let status = "status_example" // String |  (optional) (default to .pending)
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 50)

// Get pending role elevation requests (admin only)
RoleElevationAPI.getPendingRoleElevationRequests(orgId: orgId, status: status, page: page, limit: limit) { (response, error) in
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
 **orgId** | **String** |  | 
 **status** | **String** |  | [optional] [default to .pending]
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**GetPendingRoleElevationRequests200Response**](GetPendingRoleElevationRequests200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleElevationStatus**
```swift
    open class func getRoleElevationStatus(projectId: String, roleSlug: String? = nil, completion: @escaping (_ data: GetRoleElevationStatus200Response?, _ error: Error?) -> Void)
```

Get role elevation status

Get status of pending role elevation requests for current user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String |  (optional)

// Get role elevation status
RoleElevationAPI.getRoleElevationStatus(projectId: projectId, roleSlug: roleSlug) { (response, error) in
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
 **roleSlug** | **String** |  | [optional] 

### Return type

[**GetRoleElevationStatus200Response**](GetRoleElevationStatus200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestRoleElevation**
```swift
    open class func requestRoleElevation(projectId: String, requestRoleElevationRequest: RequestRoleElevationRequest, completion: @escaping (_ data: RequestRoleElevation200Response?, _ error: Error?) -> Void)
```

Request role elevation

User requests to upgrade to a specific role. May require payment, KYC, or admin approval based on role configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let requestRoleElevationRequest = requestRoleElevation_request(roleSlug: "roleSlug_example") // RequestRoleElevationRequest | 

// Request role elevation
RoleElevationAPI.requestRoleElevation(projectId: projectId, requestRoleElevationRequest: requestRoleElevationRequest) { (response, error) in
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
 **requestRoleElevationRequest** | [**RequestRoleElevationRequest**](RequestRoleElevationRequest.md) |  | 

### Return type

[**RequestRoleElevation200Response**](RequestRoleElevation200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadVerificationDocuments**
```swift
    open class func uploadVerificationDocuments(projectId: String, uploadVerificationDocumentsRequest: UploadVerificationDocumentsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upload verification documents

Upload KYC/verification documents for role elevation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let uploadVerificationDocumentsRequest = uploadVerificationDocuments_request(roleSlug: "roleSlug_example", documents: [uploadVerificationDocuments_request_documents_inner(type: "type_example", url: "url_example")]) // UploadVerificationDocumentsRequest | 

// Upload verification documents
RoleElevationAPI.uploadVerificationDocuments(projectId: projectId, uploadVerificationDocumentsRequest: uploadVerificationDocumentsRequest) { (response, error) in
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
 **uploadVerificationDocumentsRequest** | [**UploadVerificationDocumentsRequest**](UploadVerificationDocumentsRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

