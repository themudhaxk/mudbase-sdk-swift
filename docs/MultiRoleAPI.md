# MultiRoleAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authOauthSignupWithRole**](MultiRoleAPI.md#authoauthsignupwithrole) | **GET** /api/auth/oauth/signup/{role}/{provider}/{projectId} | OAuth signup with specific role
[**authRegisterWithRole**](MultiRoleAPI.md#authregisterwithrole) | **POST** /api/auth/local/signup/{role} | Register user with specific role (Local Auth)
[**multiRoleAddRole**](MultiRoleAPI.md#multiroleaddrole) | **POST** /api/projects/{projectId}/multi-role/roles | Add custom role
[**multiRoleGetAvailableRoles**](MultiRoleAPI.md#multirolegetavailableroles) | **GET** /api/projects/{projectId}/multi-role/roles/available | Get available roles for signup
[**multiRoleGetConfig**](MultiRoleAPI.md#multirolegetconfig) | **GET** /api/projects/{projectId}/multi-role | Get multi-role feature configuration
[**multiRoleToggleRole**](MultiRoleAPI.md#multiroletogglerole) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug}/toggle | Toggle role on/off
[**multiRoleUpdateCollectionPermissions**](MultiRoleAPI.md#multiroleupdatecollectionpermissions) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug}/collections/{collectionId}/permissions | Update collection permissions for a role
[**multiRoleUpdateRole**](MultiRoleAPI.md#multiroleupdaterole) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug} | Update role configuration
[**multiRoleUpdateSettings**](MultiRoleAPI.md#multiroleupdatesettings) | **PATCH** /api/projects/{projectId}/multi-role/settings | Update multi-role feature settings


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

let role = "role_example" // String | Role slug for signup (e.g. customer, vendor, seller).
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
 **role** | **String** | Role slug for signup (e.g. customer, vendor, seller). | 
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

Public endpoint for user registration with a specific role. The role is specified in the URL path (e.g., /signup/customer, /signup/vendor). No authentication required - this is a public signup endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let role = "role_example" // String | Role slug for signup (e.g. customer, vendor).
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
 **role** | **String** | Role slug for signup (e.g. customer, vendor). | 
 **authRegisterWithRoleRequest** | [**AuthRegisterWithRoleRequest**](AuthRegisterWithRoleRequest.md) | Registration payload (email, password, firstName, lastName, projectId). | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleAddRole**
```swift
    open class func multiRoleAddRole(projectId: String, multiRoleAddRoleRequest: MultiRoleAddRoleRequest, completion: @escaping (_ data: MultiRoleUpdateSettings200Response?, _ error: Error?) -> Void)
```

Add custom role

Add a custom role to a project with specific permissions and signup endpoint. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let multiRoleAddRoleRequest = multiRole_addRole_request(slug: "slug_example", name: "name_example", description: "description_example", signupEndpoint: "signupEndpoint_example", hierarchy: 123, defaultPermissions: [multiRole_addRole_request_defaultPermissions_inner(resource: "resource_example", actions: ["actions_example"])]) // MultiRoleAddRoleRequest | Custom role definition (slug, name, description, signupEndpoint, hierarchy, defaultPermissions).

// Add custom role
MultiRoleAPI.multiRoleAddRole(projectId: projectId, multiRoleAddRoleRequest: multiRoleAddRoleRequest) { (response, error) in
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
 **multiRoleAddRoleRequest** | [**MultiRoleAddRoleRequest**](MultiRoleAddRoleRequest.md) | Custom role definition (slug, name, description, signupEndpoint, hierarchy, defaultPermissions). | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleGetAvailableRoles**
```swift
    open class func multiRoleGetAvailableRoles(projectId: String, completion: @escaping (_ data: MultiRoleGetAvailableRoles200Response?, _ error: Error?) -> Void)
```

Get available roles for signup

Get all available roles for user signup in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.

// Get available roles for signup
MultiRoleAPI.multiRoleGetAvailableRoles(projectId: projectId) { (response, error) in
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

[**MultiRoleGetAvailableRoles200Response**](MultiRoleGetAvailableRoles200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleGetConfig**
```swift
    open class func multiRoleGetConfig(projectId: String, completion: @escaping (_ data: MultiRoleGetConfig200Response?, _ error: Error?) -> Void)
```

Get multi-role feature configuration

Get the ready-to-use multi-role system configuration for a project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.

// Get multi-role feature configuration
MultiRoleAPI.multiRoleGetConfig(projectId: projectId) { (response, error) in
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

[**MultiRoleGetConfig200Response**](MultiRoleGetConfig200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleToggleRole**
```swift
    open class func multiRoleToggleRole(projectId: String, roleSlug: String, multiRoleToggleRoleRequest: MultiRoleToggleRoleRequest, completion: @escaping (_ data: MultiRoleUpdateSettings200Response?, _ error: Error?) -> Void)
```

Toggle role on/off

Enable or disable a role for the project. When disabled, the role is no longer available for signup or assignment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug to toggle (e.g. vendor, customer).
let multiRoleToggleRoleRequest = multiRole_toggleRole_request(isEnabled: true) // MultiRoleToggleRoleRequest | Whether the role is enabled (true) or disabled (false).

// Toggle role on/off
MultiRoleAPI.multiRoleToggleRole(projectId: projectId, roleSlug: roleSlug, multiRoleToggleRoleRequest: multiRoleToggleRoleRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug to toggle (e.g. vendor, customer). | 
 **multiRoleToggleRoleRequest** | [**MultiRoleToggleRoleRequest**](MultiRoleToggleRoleRequest.md) | Whether the role is enabled (true) or disabled (false). | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleUpdateCollectionPermissions**
```swift
    open class func multiRoleUpdateCollectionPermissions(projectId: String, roleSlug: String, collectionId: String, multiRoleUpdateCollectionPermissionsRequest: MultiRoleUpdateCollectionPermissionsRequest, completion: @escaping (_ data: MultiRoleUpdateSettings200Response?, _ error: Error?) -> Void)
```

Update collection permissions for a role

Update collection-specific permissions for a role in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug (e.g. vendor, customer).
let collectionId = "collectionId_example" // String | Collection ID to set permissions for.
let multiRoleUpdateCollectionPermissionsRequest = multiRole_updateCollectionPermissions_request(actions: ["actions_example"], conditions: 123) // MultiRoleUpdateCollectionPermissionsRequest | Allowed actions and optional conditions for the role on this collection.

// Update collection permissions for a role
MultiRoleAPI.multiRoleUpdateCollectionPermissions(projectId: projectId, roleSlug: roleSlug, collectionId: collectionId, multiRoleUpdateCollectionPermissionsRequest: multiRoleUpdateCollectionPermissionsRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug (e.g. vendor, customer). | 
 **collectionId** | **String** | Collection ID to set permissions for. | 
 **multiRoleUpdateCollectionPermissionsRequest** | [**MultiRoleUpdateCollectionPermissionsRequest**](MultiRoleUpdateCollectionPermissionsRequest.md) | Allowed actions and optional conditions for the role on this collection. | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleUpdateRole**
```swift
    open class func multiRoleUpdateRole(projectId: String, roleSlug: String, multiRoleUpdateRoleRequest: MultiRoleUpdateRoleRequest, completion: @escaping (_ data: MultiRoleUpdateSettings200Response?, _ error: Error?) -> Void)
```

Update role configuration

Update an existing role's metadata and requirements (name, description, hierarchy, approval/payment/KYC flags).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug to update (e.g. vendor, customer).
let multiRoleUpdateRoleRequest = multiRole_updateRole_request(name: "name_example", description: "description_example", hierarchy: 123, requiresApproval: true, requiresPayment: true, requiresKYC: false) // MultiRoleUpdateRoleRequest | Role fields to update (name, description, hierarchy, requiresApproval, requiresPayment, requiresKYC).

// Update role configuration
MultiRoleAPI.multiRoleUpdateRole(projectId: projectId, roleSlug: roleSlug, multiRoleUpdateRoleRequest: multiRoleUpdateRoleRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug to update (e.g. vendor, customer). | 
 **multiRoleUpdateRoleRequest** | [**MultiRoleUpdateRoleRequest**](MultiRoleUpdateRoleRequest.md) | Role fields to update (name, description, hierarchy, requiresApproval, requiresPayment, requiresKYC). | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleUpdateSettings**
```swift
    open class func multiRoleUpdateSettings(projectId: String, multiRoleUpdateSettingsRequest: MultiRoleUpdateSettingsRequest, completion: @escaping (_ data: MultiRoleUpdateSettings200Response?, _ error: Error?) -> Void)
```

Update multi-role feature settings

Update multi-role feature settings for a project, including enabling/disabling the feature and configuring default roles. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let multiRoleUpdateSettingsRequest = multiRole_updateSettings_request(isEnabled: true, defaultRole: "defaultRole_example", settings: multiRole_updateSettings_request_settings(allowMultipleRoles: false, requireApproval: false)) // MultiRoleUpdateSettingsRequest | Multi-role settings (e.g. isEnabled, defaultRole, allowMultipleRoles, requireApproval).

// Update multi-role feature settings
MultiRoleAPI.multiRoleUpdateSettings(projectId: projectId, multiRoleUpdateSettingsRequest: multiRoleUpdateSettingsRequest) { (response, error) in
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
 **multiRoleUpdateSettingsRequest** | [**MultiRoleUpdateSettingsRequest**](MultiRoleUpdateSettingsRequest.md) | Multi-role settings (e.g. isEnabled, defaultRole, allowMultipleRoles, requireApproval). | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

