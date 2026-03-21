# MultiRoleAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authOauthSignupWithRole**](MultiRoleAPI.md#authoauthsignupwithrole) | **GET** /api/auth/oauth/signup/{role}/{provider}/{projectId} | OAuth signup with specific role
[**authRegisterWithRole**](MultiRoleAPI.md#authregisterwithrole) | **POST** /api/auth/local/signup/{role} | Register user with specific role (Local Auth)


# **authOauthSignupWithRole**
```swift
    open class func authOauthSignupWithRole(role: String, provider: Provider_authOauthSignupWithRole, projectId: String, redirectUrl: String? = nil, completion: @escaping (_ data: UsersLinkOAuthProvider200Response?, _ error: Error?) -> Void)
```

OAuth signup with specific role

Public endpoint that initiates OAuth signup flow with a specific role assigned during registration. The OAuth provider must be configured and enabled for the project first. The role must be available for signup in the project's multi-role configuration. After successful OAuth authentication, the user will be created with the specified role. No authentication required - this is a public signup endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let role = "role_example" // String | Path segment must match the role's `signupEndpoint` (default `customer`; use each role's configured endpoint).
let provider = "provider_example" // String | OAuth provider (e.g. google, github).
let projectId = "projectId_example" // String | Project ID.
let redirectUrl = "redirectUrl_example" // String | The URL to redirect to after authentication (optional)

// OAuth signup with specific role
MultiRoleAPI.authOauthSignupWithRole(role: role, provider: provider, projectId: projectId, redirectUrl: redirectUrl) { (response, error) in
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
 **role** | **String** | Path segment must match the role&#39;s &#x60;signupEndpoint&#x60; (default &#x60;customer&#x60;; use each role&#39;s configured endpoint). | 
 **provider** | **String** | OAuth provider (e.g. google, github). | 
 **projectId** | **String** | Project ID. | 
 **redirectUrl** | **String** | The URL to redirect to after authentication | [optional] 

### Return type

[**UsersLinkOAuthProvider200Response**](UsersLinkOAuthProvider200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegisterWithRole**
```swift
    open class func authRegisterWithRole(role: String, authRegisterWithRoleRequest: AuthRegisterWithRoleRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Register user with specific role (Local Auth)

Public endpoint for user registration with a specific role. The path segment must match a role's `signupEndpoint` (default starter is `customer`; add more roles via multi-role API). No authentication required - this is a public signup endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let role = "role_example" // String | Must match the role's `signupEndpoint` (default `customer`; other values for roles you add).
let authRegisterWithRoleRequest = auth_registerWithRole_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", projectId: "projectId_example") // AuthRegisterWithRoleRequest | Registration payload (email, password, firstName, lastName, projectId).

// Register user with specific role (Local Auth)
MultiRoleAPI.authRegisterWithRole(role: role, authRegisterWithRoleRequest: authRegisterWithRoleRequest) { (response, error) in
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
 **role** | **String** | Must match the role&#39;s &#x60;signupEndpoint&#x60; (default &#x60;customer&#x60;; other values for roles you add). | 
 **authRegisterWithRoleRequest** | [**AuthRegisterWithRoleRequest**](AuthRegisterWithRoleRequest.md) | Registration payload (email, password, firstName, lastName, projectId). | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

