# MultiRoleAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authOauthSignupWithRole**](MultiRoleAPI.md#authoauthsignupwithrole) | **GET** /api/auth/oauth/signup/{role}/{provider}/{projectId} | OAuth signup with specific role
[**authRegisterWithRole**](MultiRoleAPI.md#authregisterwithrole) | **POST** /api/auth/local/signup/{role} | Register user with specific role (Local Auth)
[**multiRoleAddRole**](MultiRoleAPI.md#multiroleaddrole) | **POST** /api/projects/{projectId}/multi-role/roles | Add custom role
[**multiRoleApplyRoleFeaturePreset**](MultiRoleAPI.md#multiroleapplyrolefeaturepreset) | **POST** /api/projects/{projectId}/multi-role/roles/{roleSlug}/apply-preset | Apply Admin / User / Viewer feature permission preset
[**multiRoleGetAvailableRoles**](MultiRoleAPI.md#multirolegetavailableroles) | **GET** /api/projects/{projectId}/multi-role/roles/available | Get available roles for signup
[**multiRoleGetConfig**](MultiRoleAPI.md#multirolegetconfig) | **GET** /api/projects/{projectId}/multi-role | Get multi-role feature configuration
[**multiRoleGetPermissionsMatrix**](MultiRoleAPI.md#multirolegetpermissionsmatrix) | **GET** /api/projects/{projectId}/permissions-matrix | Get permissions matrix (collections + featurePermissions)
[**multiRoleSimulateAppPermissions**](MultiRoleAPI.md#multirolesimulateapppermissions) | **POST** /api/projects/{projectId}/multi-role/simulate-permissions | Simulate app-role feature permission for a path
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

# **multiRoleAddRole**
```swift
    open class func multiRoleAddRole(projectId: String, multiRoleAddRoleRequest: MultiRoleAddRoleRequest, completion: @escaping (_ data: MultiRoleToggleRole200Response?, _ error: Error?) -> Void)
```

Add custom role

Add a custom role to a project with specific permissions and signup endpoint. Optional **featurePermissions** must align with app JWT gates — see `components/schemas/AppRoleFeaturePermissions` and `services/appRoleFeatureMap.js`. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let multiRoleAddRoleRequest = multiRole_addRole_request(slug: "slug_example", name: "name_example", description: "description_example", signupEndpoint: "signupEndpoint_example", requiresApproval: false, requiresPayment: false, requiresKYC: false, defaultPermissions: [multiRole_addRole_request_defaultPermissions_inner(resource: "resource_example", actions: ["actions_example"])], collectionPermissions: "TODO", metadata: 123, featurePermissions: "TODO") // MultiRoleAddRoleRequest | Custom role definition. Use `collectionPermissions` to apply CRUD per collection slug (e.g. users/products/orders). `defaultPermissions` is optional for global/base permissions.

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
 **multiRoleAddRoleRequest** | [**MultiRoleAddRoleRequest**](MultiRoleAddRoleRequest.md) | Custom role definition. Use &#x60;collectionPermissions&#x60; to apply CRUD per collection slug (e.g. users/products/orders). &#x60;defaultPermissions&#x60; is optional for global/base permissions. | 

### Return type

[**MultiRoleToggleRole200Response**](MultiRoleToggleRole200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleApplyRoleFeaturePreset**
```swift
    open class func multiRoleApplyRoleFeaturePreset(projectId: String, roleSlug: String, multiRoleApplyRoleFeaturePresetRequest: MultiRoleApplyRoleFeaturePresetRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Apply Admin / User / Viewer feature permission preset

Sets `featurePermissions` from preset `admin`, `user`, or `viewer`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String | 
let multiRoleApplyRoleFeaturePresetRequest = multiRole_applyRoleFeaturePreset_request(preset: "preset_example") // MultiRoleApplyRoleFeaturePresetRequest | 

// Apply Admin / User / Viewer feature permission preset
MultiRoleAPI.multiRoleApplyRoleFeaturePreset(projectId: projectId, roleSlug: roleSlug, multiRoleApplyRoleFeaturePresetRequest: multiRoleApplyRoleFeaturePresetRequest) { (response, error) in
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
 **roleSlug** | **String** |  | 
 **multiRoleApplyRoleFeaturePresetRequest** | [**MultiRoleApplyRoleFeaturePresetRequest**](MultiRoleApplyRoleFeaturePresetRequest.md) |  | 

### Return type

Void (empty response body)

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

Returns project app roles (default one editable `customer` starter until you add more) and settings.

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

# **multiRoleGetPermissionsMatrix**
```swift
    open class func multiRoleGetPermissionsMatrix(projectId: String, completion: @escaping (_ data: MultiRoleGetPermissionsMatrix200Response?, _ error: Error?) -> Void)
```

Get permissions matrix (collections + featurePermissions)

Per-collection role actions and per-role `featurePermissions` for app-role gates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get permissions matrix (collections + featurePermissions)
MultiRoleAPI.multiRoleGetPermissionsMatrix(projectId: projectId) { (response, error) in
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

[**MultiRoleGetPermissionsMatrix200Response**](MultiRoleGetPermissionsMatrix200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleSimulateAppPermissions**
```swift
    open class func multiRoleSimulateAppPermissions(projectId: String, multiRoleSimulateAppPermissionsRequest: MultiRoleSimulateAppPermissionsRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Simulate app-role feature permission for a path

Given role slug and either `operationId` or HTTP method + pathname, returns whether `featurePermissions` would allow gated routes. Unmapped paths or unknown operation IDs return allowed with `no_feature_gate_for_path` or `no_feature_gate_for_operation_id`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let multiRoleSimulateAppPermissionsRequest = multiRole_simulateAppPermissions_request(role: "role_example", operationId: "operationId_example", method: "method_example", pathname: "pathname_example", path: "path_example") // MultiRoleSimulateAppPermissionsRequest | 

// Simulate app-role feature permission for a path
MultiRoleAPI.multiRoleSimulateAppPermissions(projectId: projectId, multiRoleSimulateAppPermissionsRequest: multiRoleSimulateAppPermissionsRequest) { (response, error) in
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
 **multiRoleSimulateAppPermissionsRequest** | [**MultiRoleSimulateAppPermissionsRequest**](MultiRoleSimulateAppPermissionsRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleToggleRole**
```swift
    open class func multiRoleToggleRole(projectId: String, roleSlug: String, multiRoleToggleRoleRequest: MultiRoleToggleRoleRequest, completion: @escaping (_ data: MultiRoleToggleRole200Response?, _ error: Error?) -> Void)
```

Toggle role on/off

Enable or disable a role for the project. When disabled, the role is no longer available for signup or assignment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug to toggle (e.g. starter `customer` or a role you added).
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
 **roleSlug** | **String** | Role slug to toggle (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **multiRoleToggleRoleRequest** | [**MultiRoleToggleRoleRequest**](MultiRoleToggleRoleRequest.md) | Whether the role is enabled (true) or disabled (false). | 

### Return type

[**MultiRoleToggleRole200Response**](MultiRoleToggleRole200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleUpdateCollectionPermissions**
```swift
    open class func multiRoleUpdateCollectionPermissions(projectId: String, roleSlug: String, collectionId: String, multiRoleUpdateCollectionPermissionsRequest: MultiRoleUpdateCollectionPermissionsRequest, completion: @escaping (_ data: MultiRoleToggleRole200Response?, _ error: Error?) -> Void)
```

Update collection permissions for a role

Update collection-specific permissions for a role in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug (e.g. starter `customer` or a role you added).
let collectionId = "collectionId_example" // String | Collection ID to set permissions for.
let multiRoleUpdateCollectionPermissionsRequest = multiRole_updateCollectionPermissions_request(actions: ["actions_example"], conditions: 123, dataScope: "dataScope_example", ownerField: "ownerField_example") // MultiRoleUpdateCollectionPermissionsRequest | Allowed actions and optional conditions for the role on this collection.

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
 **roleSlug** | **String** | Role slug (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **collectionId** | **String** | Collection ID to set permissions for. | 
 **multiRoleUpdateCollectionPermissionsRequest** | [**MultiRoleUpdateCollectionPermissionsRequest**](MultiRoleUpdateCollectionPermissionsRequest.md) | Allowed actions and optional conditions for the role on this collection. | 

### Return type

[**MultiRoleToggleRole200Response**](MultiRoleToggleRole200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **multiRoleUpdateRole**
```swift
    open class func multiRoleUpdateRole(projectId: String, roleSlug: String, multiRoleUpdateRoleRequest: MultiRoleUpdateRoleRequest, completion: @escaping (_ data: MultiRoleToggleRole200Response?, _ error: Error?) -> Void)
```

Update role configuration

Update an app role — same fields as **Add custom role** (partial). `defaultPermissions` / `collectionPermissions` use the same normalization as on create. **featurePermissions:** `components/schemas/AppRoleFeaturePermissions` (see `services/appRoleFeatureMap.js`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let roleSlug = "roleSlug_example" // String | Role slug to update (e.g. starter `customer` or a role you added).
let multiRoleUpdateRoleRequest = multiRole_updateRole_request(name: "name_example", description: "description_example", signupEndpoint: "signupEndpoint_example", requiresApproval: false, requiresPayment: false, requiresKYC: false, defaultPermissions: [123], collectionPermissions: "TODO", metadata: 123, featurePermissions: "TODO") // MultiRoleUpdateRoleRequest | Same fields as **Add custom role** — send only fields you want to change. `defaultPermissions` / `collectionPermissions` are normalized the same way as on create.

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
 **roleSlug** | **String** | Role slug to update (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **multiRoleUpdateRoleRequest** | [**MultiRoleUpdateRoleRequest**](MultiRoleUpdateRoleRequest.md) | Same fields as **Add custom role** — send only fields you want to change. &#x60;defaultPermissions&#x60; / &#x60;collectionPermissions&#x60; are normalized the same way as on create. | 

### Return type

[**MultiRoleToggleRole200Response**](MultiRoleToggleRole200Response.md)

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

Update multi-role feature settings: enable/disable the feature, `defaultRole`, and `settings` (`allowMultipleRoles`, `requireRoleSelection`, `autoAssignDefault`, `dataOwnerField`). Does not edit role definitions — use `POST/PATCH .../multi-role/roles` (same body shape as add role). Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let multiRoleUpdateSettingsRequest = multiRole_updateSettings_request(isEnabled: true, defaultRole: "defaultRole_example", settings: multiRole_updateSettings_request_settings(allowMultipleRoles: false, requireRoleSelection: false, autoAssignDefault: false, dataOwnerField: "dataOwnerField_example")) // MultiRoleUpdateSettingsRequest | Feature flags only — not per-role approval. Use `settings.allowMultipleRoles`, `requireRoleSelection`, `autoAssignDefault`, `dataOwnerField`.

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
 **multiRoleUpdateSettingsRequest** | [**MultiRoleUpdateSettingsRequest**](MultiRoleUpdateSettingsRequest.md) | Feature flags only — not per-role approval. Use &#x60;settings.allowMultipleRoles&#x60;, &#x60;requireRoleSelection&#x60;, &#x60;autoAssignDefault&#x60;, &#x60;dataOwnerField&#x60;. | 

### Return type

[**MultiRoleUpdateSettings200Response**](MultiRoleUpdateSettings200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

