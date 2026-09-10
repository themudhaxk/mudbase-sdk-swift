# MultiRoleFeatureAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomRole**](MultiRoleFeatureAPI.md#addcustomrole) | **POST** /api/projects/{projectId}/multi-role/roles | Add custom role
[**applyRoleFeaturePreset**](MultiRoleFeatureAPI.md#applyrolefeaturepreset) | **POST** /api/projects/{projectId}/multi-role/roles/{roleSlug}/apply-preset | Apply Admin / User / Viewer feature permission preset
[**getAvailableRoles**](MultiRoleFeatureAPI.md#getavailableroles) | **GET** /api/projects/{projectId}/multi-role/roles/available | Get available roles for signup
[**getMultiRoleConfig**](MultiRoleFeatureAPI.md#getmultiroleconfig) | **GET** /api/projects/{projectId}/multi-role | Get multi-role feature configuration
[**getPermissionsMatrix**](MultiRoleFeatureAPI.md#getpermissionsmatrix) | **GET** /api/projects/{projectId}/permissions-matrix | Get permissions matrix (collections + featurePermissions)
[**oauthSignupWithRole**](MultiRoleFeatureAPI.md#oauthsignupwithrole) | **GET** /api/auth/oauth/signup/{role}/{provider}/{projectId} | OAuth signup with specific role
[**registerWithRole**](MultiRoleFeatureAPI.md#registerwithrole) | **POST** /api/auth/local/signup/{role} | Register user with specific role (Local Auth)
[**simulateAppPermissions**](MultiRoleFeatureAPI.md#simulateapppermissions) | **POST** /api/projects/{projectId}/multi-role/simulate-permissions | Simulate app-role feature permission for a path
[**toggleRole**](MultiRoleFeatureAPI.md#togglerole) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug}/toggle | Toggle role on/off
[**updateCollectionPermissions**](MultiRoleFeatureAPI.md#updatecollectionpermissions) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug}/collections/{collectionId}/permissions | Update collection permissions for a role
[**updateMultiRoleSettings**](MultiRoleFeatureAPI.md#updatemultirolesettings) | **PATCH** /api/projects/{projectId}/multi-role/settings | Update multi-role feature settings
[**updateProjectRole**](MultiRoleFeatureAPI.md#updateprojectrole) | **PATCH** /api/projects/{projectId}/multi-role/roles/{roleSlug} | Update role configuration


# **addCustomRole**
```swift
    open class func addCustomRole(projectId: String, addCustomRoleRequest: AddCustomRoleRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Add custom role

Add a custom role to a project with specific permissions and signup endpoint. Optional **`featurePermissions`** must align with app JWT gates — see `components/schemas/AppRoleFeaturePermissions` and `services/appRoleFeatureMap.js`. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let addCustomRoleRequest = addCustomRole_request(slug: "slug_example", name: "name_example", description: "description_example", signupEndpoint: "signupEndpoint_example", requiresApproval: false, requiresPayment: false, requiresKYC: false, defaultPermissions: [addCustomRole_request_defaultPermissions_inner(resource: "resource_example", actions: ["actions_example"])], collectionPermissions: "TODO", metadata: 123, featurePermissions: "TODO") // AddCustomRoleRequest | 

// Add custom role
MultiRoleFeatureAPI.addCustomRole(projectId: projectId, addCustomRoleRequest: addCustomRoleRequest) { (response, error) in
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
 **addCustomRoleRequest** | [**AddCustomRoleRequest**](AddCustomRoleRequest.md) |  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applyRoleFeaturePreset**
```swift
    open class func applyRoleFeaturePreset(projectId: String, roleSlug: String, applyRoleFeaturePresetRequest: ApplyRoleFeaturePresetRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Apply Admin / User / Viewer feature permission preset

Sets `featurePermissions` on the role from a bundled preset (`admin`, `user`, `viewer`). Does not change collection CRUD or `dataScope`; use collection permission APIs for those. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String | 
let applyRoleFeaturePresetRequest = applyRoleFeaturePreset_request(preset: "preset_example") // ApplyRoleFeaturePresetRequest | 

// Apply Admin / User / Viewer feature permission preset
MultiRoleFeatureAPI.applyRoleFeaturePreset(projectId: projectId, roleSlug: roleSlug, applyRoleFeaturePresetRequest: applyRoleFeaturePresetRequest) { (response, error) in
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
 **applyRoleFeaturePresetRequest** | [**ApplyRoleFeaturePresetRequest**](ApplyRoleFeaturePresetRequest.md) |  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableRoles**
```swift
    open class func getAvailableRoles(projectId: String, completion: @escaping (_ data: GetAvailableRoles200Response?, _ error: Error?) -> Void)
```

Get available roles for signup

Get all available roles for user signup in a project. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get available roles for signup
MultiRoleFeatureAPI.getAvailableRoles(projectId: projectId) { (response, error) in
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

[**GetAvailableRoles200Response**](GetAvailableRoles200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultiRoleConfig**
```swift
    open class func getMultiRoleConfig(projectId: String, completion: @escaping (_ data: GetMultiRoleConfig200Response?, _ error: Error?) -> Void)
```

Get multi-role feature configuration

Returns project app roles (default one editable `customer` starter until you add more) and settings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get multi-role feature configuration
MultiRoleFeatureAPI.getMultiRoleConfig(projectId: projectId) { (response, error) in
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

[**GetMultiRoleConfig200Response**](GetMultiRoleConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissionsMatrix**
```swift
    open class func getPermissionsMatrix(projectId: String, completion: @escaping (_ data: GetPermissionsMatrix200Response?, _ error: Error?) -> Void)
```

Get permissions matrix (collections + featurePermissions)

Dashboard helper: per-collection permission rows (role actions, `dataScope`, conditions) and a per-role `featurePermissions` snapshot used by app-role feature gates (messaging, integrations, storage, etc.). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get permissions matrix (collections + featurePermissions)
MultiRoleFeatureAPI.getPermissionsMatrix(projectId: projectId) { (response, error) in
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

[**GetPermissionsMatrix200Response**](GetPermissionsMatrix200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthSignupWithRole**
```swift
    open class func oauthSignupWithRole(role: String, provider: Provider_oauthSignupWithRole, projectId: String, redirectUrl: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth signup with specific role

Public endpoint that initiates OAuth signup flow with a specific role assigned during registration. The OAuth provider must be configured and enabled for the project first. The role must be available for signup in the project's multi-role configuration. After successful OAuth authentication, the user will be created with the specified role. No authentication required - this is a public signup endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let role = "role_example" // String | Path segment must match the role's `signupEndpoint` (default `customer`; use each role's configured endpoint).
let provider = "provider_example" // String | 
let projectId = "projectId_example" // String | 
let redirectUrl = "redirectUrl_example" // String | The URL to redirect to after authentication (optional)

// OAuth signup with specific role
MultiRoleFeatureAPI.oauthSignupWithRole(role: role, provider: provider, projectId: projectId, redirectUrl: redirectUrl) { (response, error) in
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
 **provider** | **String** |  | 
 **projectId** | **String** |  | 
 **redirectUrl** | **String** | The URL to redirect to after authentication | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerWithRole**
```swift
    open class func registerWithRole(role: String, registerWithRoleRequest: RegisterWithRoleRequest, completion: @escaping (_ data: RegisterWithRole201Response?, _ error: Error?) -> Void)
```

Register user with specific role (Local Auth)

Public endpoint for user registration with a specific role. The path segment must match a role's `signupEndpoint` (default starter is `customer`; add more roles via multi-role API). No authentication required - this is a public signup endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let role = "role_example" // String | Must match the role's `signupEndpoint` (default `customer`; other values for roles you add).
let registerWithRoleRequest = registerWithRole_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", projectId: "projectId_example", agreedToTerms: false) // RegisterWithRoleRequest | 

// Register user with specific role (Local Auth)
MultiRoleFeatureAPI.registerWithRole(role: role, registerWithRoleRequest: registerWithRoleRequest) { (response, error) in
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
 **registerWithRoleRequest** | [**RegisterWithRoleRequest**](RegisterWithRoleRequest.md) |  | 

### Return type

[**RegisterWithRole201Response**](RegisterWithRole201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **simulateAppPermissions**
```swift
    open class func simulateAppPermissions(projectId: String, simulateAppPermissionsRequest: SimulateAppPermissionsRequest, completion: @escaping (_ data: SimulateAppPermissions200Response?, _ error: Error?) -> Void)
```

Simulate app-role feature permission for a path

Dashboard-only. Given an app role slug and either an OpenAPI `operationId` **or** HTTP method + pathname, returns whether the role's `featurePermissions` would allow the operation for paths that have a feature gate. Unmapped paths or unknown operation IDs return `allowed: true` with reason `no_feature_gate_for_path` or `no_feature_gate_for_operation_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let simulateAppPermissionsRequest = simulateAppPermissions_request(role: "role_example", roleSlug: "roleSlug_example", operationId: "operationId_example", method: "method_example", pathname: "pathname_example", path: "path_example") // SimulateAppPermissionsRequest | 

// Simulate app-role feature permission for a path
MultiRoleFeatureAPI.simulateAppPermissions(projectId: projectId, simulateAppPermissionsRequest: simulateAppPermissionsRequest) { (response, error) in
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
 **simulateAppPermissionsRequest** | [**SimulateAppPermissionsRequest**](SimulateAppPermissionsRequest.md) |  | 

### Return type

[**SimulateAppPermissions200Response**](SimulateAppPermissions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **toggleRole**
```swift
    open class func toggleRole(projectId: String, roleSlug: String, toggleRoleRequest: ToggleRoleRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Toggle role on/off

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String | Role slug to toggle (e.g. starter `customer` or a role you added).
let toggleRoleRequest = toggleRole_request(isEnabled: true) // ToggleRoleRequest | 

// Toggle role on/off
MultiRoleFeatureAPI.toggleRole(projectId: projectId, roleSlug: roleSlug, toggleRoleRequest: toggleRoleRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug to toggle (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **toggleRoleRequest** | [**ToggleRoleRequest**](ToggleRoleRequest.md) |  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollectionPermissions**
```swift
    open class func updateCollectionPermissions(projectId: String, roleSlug: String, collectionId: String, updateCollectionPermissionsRequest: UpdateCollectionPermissionsRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Update collection permissions for a role

Update collection-specific permissions for a role in a project. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String | Role slug (e.g. starter `customer` or a role you added).
let collectionId = "collectionId_example" // String | 
let updateCollectionPermissionsRequest = updateCollectionPermissions_request(actions: ["actions_example"], conditions: 123, dataScope: "dataScope_example", ownerField: "ownerField_example") // UpdateCollectionPermissionsRequest | 

// Update collection permissions for a role
MultiRoleFeatureAPI.updateCollectionPermissions(projectId: projectId, roleSlug: roleSlug, collectionId: collectionId, updateCollectionPermissionsRequest: updateCollectionPermissionsRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **collectionId** | **String** |  | 
 **updateCollectionPermissionsRequest** | [**UpdateCollectionPermissionsRequest**](UpdateCollectionPermissionsRequest.md) |  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMultiRoleSettings**
```swift
    open class func updateMultiRoleSettings(projectId: String, updateMultiRoleSettingsRequest: UpdateMultiRoleSettingsRequest, completion: @escaping (_ data: UpdateMultiRoleSettings200Response?, _ error: Error?) -> Void)
```

Update multi-role feature settings

Update multi-role feature settings for a project: enable/disable the feature, set which app role is the default at signup, and tune `settings` (`allowMultipleRoles`, `requireRoleSelection`, `autoAssignDefault`). This endpoint does **not** edit role definitions or permissions — use `POST/PATCH .../multi-role/roles` for that (same shape as **Add custom role**). Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let updateMultiRoleSettingsRequest = updateMultiRoleSettings_request(isEnabled: true, defaultRole: "defaultRole_example", settings: updateMultiRoleSettings_request_settings(allowMultipleRoles: false, requireRoleSelection: false, autoAssignDefault: false, dataOwnerField: "dataOwnerField_example")) // UpdateMultiRoleSettingsRequest | 

// Update multi-role feature settings
MultiRoleFeatureAPI.updateMultiRoleSettings(projectId: projectId, updateMultiRoleSettingsRequest: updateMultiRoleSettingsRequest) { (response, error) in
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
 **updateMultiRoleSettingsRequest** | [**UpdateMultiRoleSettingsRequest**](UpdateMultiRoleSettingsRequest.md) |  | 

### Return type

[**UpdateMultiRoleSettings200Response**](UpdateMultiRoleSettings200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProjectRole**
```swift
    open class func updateProjectRole(projectId: String, roleSlug: String, updateProjectRoleRequest: UpdateProjectRoleRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Update role configuration

Partial update of an app role. **`featurePermissions`** keys must match the app-role gate map (`services/appRoleFeatureMap.js`); schema: `components/schemas/AppRoleFeaturePermissions`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let roleSlug = "roleSlug_example" // String | Role slug to update (e.g. starter `customer` or a role you added).
let updateProjectRoleRequest = updateProjectRole_request(name: "name_example", description: "description_example", signupEndpoint: "signupEndpoint_example", requiresApproval: false, requiresPayment: false, requiresKYC: false, defaultPermissions: [123], collectionPermissions: "TODO", metadata: 123, featurePermissions: "TODO") // UpdateProjectRoleRequest | Same fields as **Add custom role** — send only fields you want to change. `defaultPermissions` / `collectionPermissions` are normalized the same way as on create. **`featurePermissions`:** `components/schemas/AppRoleFeaturePermissions` (aligned with `services/appRoleFeatureMap.js`). 

// Update role configuration
MultiRoleFeatureAPI.updateProjectRole(projectId: projectId, roleSlug: roleSlug, updateProjectRoleRequest: updateProjectRoleRequest) { (response, error) in
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
 **roleSlug** | **String** | Role slug to update (e.g. starter &#x60;customer&#x60; or a role you added). | 
 **updateProjectRoleRequest** | [**UpdateProjectRoleRequest**](UpdateProjectRoleRequest.md) | Same fields as **Add custom role** — send only fields you want to change. &#x60;defaultPermissions&#x60; / &#x60;collectionPermissions&#x60; are normalized the same way as on create. **&#x60;featurePermissions&#x60;:** &#x60;components/schemas/AppRoleFeaturePermissions&#x60; (aligned with &#x60;services/appRoleFeatureMap.js&#x60;).  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

