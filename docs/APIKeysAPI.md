# APIKeysAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](APIKeysAPI.md#createapikey) | **POST** /api/api-keys | Create API key
[**deleteApiKey**](APIKeysAPI.md#deleteapikey) | **DELETE** /api/api-keys/{id} | Delete API key
[**getApiKeyUsage**](APIKeysAPI.md#getapikeyusage) | **GET** /api/api-keys/{id}/usage | Get API key usage
[**listApiKeys**](APIKeysAPI.md#listapikeys) | **GET** /api/api-keys | List API keys
[**regenerateApiKey**](APIKeysAPI.md#regenerateapikey) | **POST** /api/api-keys/{id}/regenerate | Regenerate API key secret
[**updateApiKey**](APIKeysAPI.md#updateapikey) | **PATCH** /api/api-keys/{id} | Update API key


# **createApiKey**
```swift
    open class func createApiKey(createApiKeyRequest: CreateApiKeyRequest, completion: @escaping (_ data: CreateApiKey201Response?, _ error: Error?) -> Void)
```

Create API key

Create a new API key for a project with specified permissions. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createApiKeyRequest = CreateApiKeyRequest(name: "name_example", projectId: "projectId_example", permissions: [ApiKeyPermission(resource: "resource_example", actions: ["actions_example"])], rateLimit: RateLimit(requests: 123, window: 123), expiresAt: Date()) // CreateApiKeyRequest | 

// Create API key
APIKeysAPI.createApiKey(createApiKeyRequest: createApiKeyRequest) { (response, error) in
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
 **createApiKeyRequest** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) |  | 

### Return type

[**CreateApiKey201Response**](CreateApiKey201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiKey**
```swift
    open class func deleteApiKey(id: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete API key

Delete an API key. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | 

// Delete API key
APIKeysAPI.deleteApiKey(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApiKeyUsage**
```swift
    open class func getApiKeyUsage(id: String, completion: @escaping (_ data: ApiKeyUsageResponse?, _ error: Error?) -> Void)
```

Get API key usage

Get usage statistics for a specific API key including request count, rate limit status, and last used timestamp. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | 

// Get API key usage
APIKeysAPI.getApiKeyUsage(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**ApiKeyUsageResponse**](ApiKeyUsageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApiKeys**
```swift
    open class func listApiKeys(completion: @escaping (_ data: ListApiKeys200Response?, _ error: Error?) -> Void)
```

List API keys

List all API keys for the authenticated organization. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List API keys
APIKeysAPI.listApiKeys() { (response, error) in
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

[**ListApiKeys200Response**](ListApiKeys200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerateApiKey**
```swift
    open class func regenerateApiKey(id: String, completion: @escaping (_ data: RegenerateApiKey200Response?, _ error: Error?) -> Void)
```

Regenerate API key secret

Regenerate the secret for an API key. The old secret will be invalidated immediately. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | 

// Regenerate API key secret
APIKeysAPI.regenerateApiKey(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**RegenerateApiKey200Response**](RegenerateApiKey200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiKey**
```swift
    open class func updateApiKey(id: String, updateApiKeyRequest: UpdateApiKeyRequest, completion: @escaping (_ data: UpdateApiKey200Response?, _ error: Error?) -> Void)
```

Update API key

Update an API key's configuration (name, permissions, status). Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | 
let updateApiKeyRequest = UpdateApiKeyRequest(name: "name_example", permissions: [ApiKeyPermission(resource: "resource_example", actions: ["actions_example"])], rateLimit: RateLimit(requests: 123, window: 123), isActive: false) // UpdateApiKeyRequest | 

// Update API key
APIKeysAPI.updateApiKey(id: id, updateApiKeyRequest: updateApiKeyRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateApiKeyRequest** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) |  | 

### Return type

[**UpdateApiKey200Response**](UpdateApiKey200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

