# IntegrationsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**integrationsExecute**](IntegrationsAPI.md#integrationsexecute) | **POST** /api/integrations/projects/{projectId}/integrations/{integrationId}/execute | Execute integration
[**integrationsList**](IntegrationsAPI.md#integrationslist) | **GET** /api/integrations/projects/{projectId}/integrations | Get project integrations


# **integrationsExecute**
```swift
    open class func integrationsExecute(projectId: String, integrationId: String, integrationsExecuteRequest: IntegrationsExecuteRequest, completion: @escaping (_ data: MultiRoleGetPermissionsMatrix200Response?, _ error: Error?) -> Void)
```

Execute integration

Execute an integration action (API call) with specified endpoint and parameters. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let integrationId = "integrationId_example" // String | Integration ID to execute.
let integrationsExecuteRequest = integrations_execute_request(endpoint: "endpoint_example", method: "method_example", params: 123, body: 123) // IntegrationsExecuteRequest | Endpoint path, HTTP method, optional params and body for the integration call.

// Execute integration
IntegrationsAPI.integrationsExecute(projectId: projectId, integrationId: integrationId, integrationsExecuteRequest: integrationsExecuteRequest) { (response, error) in
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
 **integrationId** | **String** | Integration ID to execute. | 
 **integrationsExecuteRequest** | [**IntegrationsExecuteRequest**](IntegrationsExecuteRequest.md) | Endpoint path, HTTP method, optional params and body for the integration call. | 

### Return type

[**MultiRoleGetPermissionsMatrix200Response**](MultiRoleGetPermissionsMatrix200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **integrationsList**
```swift
    open class func integrationsList(projectId: String, completion: @escaping (_ data: IntegrationsList200Response?, _ error: Error?) -> Void)
```

Get project integrations

List all integrations configured for a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.

// Get project integrations
IntegrationsAPI.integrationsList(projectId: projectId) { (response, error) in
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

[**IntegrationsList200Response**](IntegrationsList200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

