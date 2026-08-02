# AddOnsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAddonsGet**](AddOnsAPI.md#apiaddonsget) | **GET** /api/addons | List the add-on catalog
[**apiProjectsProjectIdAddonsAddonInvokePost**](AddOnsAPI.md#apiprojectsprojectidaddonsaddoninvokepost) | **POST** /api/projects/{projectId}/addons/{addon}/invoke | Invoke an add-on for a project
[**apiProjectsProjectIdAddonsJobsIdGet**](AddOnsAPI.md#apiprojectsprojectidaddonsjobsidget) | **GET** /api/projects/{projectId}/addons/jobs/{id} | Get an add-on job status


# **apiAddonsGet**
```swift
    open class func apiAddonsGet(completion: @escaping (_ data: ApiAddonsGet200Response?, _ error: Error?) -> Void)
```

List the add-on catalog

Returns the available add-ons (key, metadata, pricing) the caller can invoke.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List the add-on catalog
AddOnsAPI.apiAddonsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ApiAddonsGet200Response**](ApiAddonsGet200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsProjectIdAddonsAddonInvokePost**
```swift
    open class func apiProjectsProjectIdAddonsAddonInvokePost(projectId: String, addon: String, body: AnyCodable? = nil, completion: @escaping (_ data: ApiProjectsProjectIdAddonsAddonInvokePost200Response?, _ error: Error?) -> Void)
```

Invoke an add-on for a project

Runs the named add-on against the project. Returns the job synchronously (200) when it completes immediately, or 202 with a pending job when processing continues in the background.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let addon = "addon_example" // String | Add-on key from the catalog.
let body = "TODO" // AnyCodable |  (optional)

// Invoke an add-on for a project
AddOnsAPI.apiProjectsProjectIdAddonsAddonInvokePost(projectId: projectId, addon: addon, body: body) { (response, error) in
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
 **addon** | **String** | Add-on key from the catalog. | 
 **body** | **AnyCodable** |  | [optional] 

### Return type

[**ApiProjectsProjectIdAddonsAddonInvokePost200Response**](ApiProjectsProjectIdAddonsAddonInvokePost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiProjectsProjectIdAddonsJobsIdGet**
```swift
    open class func apiProjectsProjectIdAddonsJobsIdGet(projectId: String, id: String, completion: @escaping (_ data: ApiProjectsProjectIdAddonsAddonInvokePost200Response?, _ error: Error?) -> Void)
```

Get an add-on job status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let id = "id_example" // String | Add-on job id.

// Get an add-on job status
AddOnsAPI.apiProjectsProjectIdAddonsJobsIdGet(projectId: projectId, id: id) { (response, error) in
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
 **id** | **String** | Add-on job id. | 

### Return type

[**ApiProjectsProjectIdAddonsAddonInvokePost200Response**](ApiProjectsProjectIdAddonsAddonInvokePost200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

