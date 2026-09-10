# ProjectsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configureOAuthProvider**](ProjectsAPI.md#configureoauthprovider) | **POST** /api/auth/oauth/projects/{projectId}/providers/{provider} | Configure OAuth provider for a project
[**createProject**](ProjectsAPI.md#createproject) | **POST** /api/projects/{orgId}/projects | Create new project
[**deleteProject**](ProjectsAPI.md#deleteproject) | **DELETE** /api/projects/{orgId}/projects/{id} | Delete project
[**getOAuthProviderConfig**](ProjectsAPI.md#getoauthproviderconfig) | **GET** /api/auth/oauth/projects/{projectId}/providers/{provider} | Get OAuth provider configuration
[**getProject**](ProjectsAPI.md#getproject) | **GET** /api/projects/{orgId}/projects/{id} | Get single project
[**getProjectCaptchaConfig**](ProjectsAPI.md#getprojectcaptchaconfig) | **GET** /api/projects/{orgId}/projects/{id}/auth/captcha | Get project CAPTCHA configuration
[**getProjectDashboardOverview**](ProjectsAPI.md#getprojectdashboardoverview) | **GET** /api/projects/{projectId}/dashboard/overview | Project dashboard overview
[**getProjectOAuthProviders**](ProjectsAPI.md#getprojectoauthproviders) | **GET** /api/auth/oauth/projects/{projectId}/providers | Get configured OAuth providers for a project
[**getProjectUsage**](ProjectsAPI.md#getprojectusage) | **GET** /api/projects/{orgId}/projects/{id}/usage | Get project usage statistics
[**listProjects**](ProjectsAPI.md#listprojects) | **GET** /api/projects/{orgId}/projects | List all projects
[**updateOAuthProviderConfig**](ProjectsAPI.md#updateoauthproviderconfig) | **PATCH** /api/auth/oauth/projects/{projectId}/providers/{provider} | Update OAuth provider configuration
[**updateProject**](ProjectsAPI.md#updateproject) | **PATCH** /api/projects/{orgId}/projects/{id} | Update project
[**uploadProjectLogo**](ProjectsAPI.md#uploadprojectlogo) | **POST** /api/projects/{id}/logo | Upload project logo (by project ID)
[**uploadProjectLogoByOrg**](ProjectsAPI.md#uploadprojectlogobyorg) | **POST** /api/projects/{orgId}/projects/{id}/logo | Upload project logo (by org and project ID)


# **configureOAuthProvider**
```swift
    open class func configureOAuthProvider(projectId: String, provider: Provider_configureOAuthProvider, configureOAuthProviderRequest: ConfigureOAuthProviderRequest, completion: @escaping (_ data: ConfigureOAuthProvider200Response?, _ error: Error?) -> Void)
```

Configure OAuth provider for a project

Creates or updates the configuration for an OAuth provider for the specified project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let provider = "provider_example" // String | 
let configureOAuthProviderRequest = configureOAuthProvider_request(enabled: true, clientId: "clientId_example", clientSecret: "clientSecret_example", scope: ["scope_example"], displayName: "displayName_example") // ConfigureOAuthProviderRequest | 

// Configure OAuth provider for a project
ProjectsAPI.configureOAuthProvider(projectId: projectId, provider: provider, configureOAuthProviderRequest: configureOAuthProviderRequest) { (response, error) in
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
 **provider** | **String** |  | 
 **configureOAuthProviderRequest** | [**ConfigureOAuthProviderRequest**](ConfigureOAuthProviderRequest.md) |  | 

### Return type

[**ConfigureOAuthProvider200Response**](ConfigureOAuthProvider200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**
```swift
    open class func createProject(orgId: String, createProjectRequest: CreateProjectRequest, completion: @escaping (_ data: CreateProject201Response?, _ error: Error?) -> Void)
```

Create new project

Create a new project in an organization. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let createProjectRequest = CreateProjectRequest(name: "name_example", description: "description_example", slug: "slug_example") // CreateProjectRequest | 

// Create new project
ProjectsAPI.createProject(orgId: orgId, createProjectRequest: createProjectRequest) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **createProjectRequest** | [**CreateProjectRequest**](CreateProjectRequest.md) |  | 

### Return type

[**CreateProject201Response**](CreateProject201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProject**
```swift
    open class func deleteProject(orgId: String, id: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete project

Delete a project permanently. This is a destructive operation. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID

// Delete project
ProjectsAPI.deleteProject(orgId: orgId, id: id) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthProviderConfig**
```swift
    open class func getOAuthProviderConfig(projectId: String, provider: Provider_getOAuthProviderConfig, completion: @escaping (_ data: GetOAuthProviderConfig200Response?, _ error: Error?) -> Void)
```

Get OAuth provider configuration

Returns the configuration for a specific OAuth provider for the project (without sensitive data)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let provider = "provider_example" // String | 

// Get OAuth provider configuration
ProjectsAPI.getOAuthProviderConfig(projectId: projectId, provider: provider) { (response, error) in
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
 **provider** | **String** |  | 

### Return type

[**GetOAuthProviderConfig200Response**](GetOAuthProviderConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProject**
```swift
    open class func getProject(orgId: String, id: String, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Get single project

Get project details by ID. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID

// Get single project
ProjectsAPI.getProject(orgId: orgId, id: id) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 

### Return type

[**Project**](Project.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectCaptchaConfig**
```swift
    open class func getProjectCaptchaConfig(orgId: String, id: String, completion: @escaping (_ data: GetProjectCaptchaConfig200Response?, _ error: Error?) -> Void)
```

Get project CAPTCHA configuration

Get CAPTCHA configuration for a project. This is a public endpoint that returns the site key  and settings needed for frontend integration. Secret key is never returned. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID

// Get project CAPTCHA configuration
ProjectsAPI.getProjectCaptchaConfig(orgId: orgId, id: id) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 

### Return type

[**GetProjectCaptchaConfig200Response**](GetProjectCaptchaConfig200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectDashboardOverview**
```swift
    open class func getProjectDashboardOverview(projectId: String, completion: @escaping (_ data: ProjectDashboardOverviewResponse?, _ error: Error?) -> Void)
```

Project dashboard overview

Single response for the project overview UI: project info, request counts and day-over-day % change, active users (distinct JWT users with project activity; realtime socket count when available), **Uptime** (30d headline) is organization-wide when enough HTTP samples exist, else DB heartbeat probes. **Average latency** (today / 7d) is **per project** and counts only routes documented in `openapi-docs.yaml` for customer/project API (excludes auth, `/api/users`, `/api/orgs`, role-elevation, and multi-role admin routes). Request volume and active users remain per-project. 14-day API call volume and recent audit activity are per-project. See docs/dashboard-overview-api.md. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Project dashboard overview
ProjectsAPI.getProjectDashboardOverview(projectId: projectId) { (response, error) in
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

[**ProjectDashboardOverviewResponse**](ProjectDashboardOverviewResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectOAuthProviders**
```swift
    open class func getProjectOAuthProviders(projectId: String, completion: @escaping (_ data: GetProjectOAuthProviders200Response?, _ error: Error?) -> Void)
```

Get configured OAuth providers for a project

Returns a list of OAuth providers that are configured and enabled for the specified project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get configured OAuth providers for a project
ProjectsAPI.getProjectOAuthProviders(projectId: projectId) { (response, error) in
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

[**GetProjectOAuthProviders200Response**](GetProjectOAuthProviders200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectUsage**
```swift
    open class func getProjectUsage(orgId: String, id: String, completion: @escaping (_ data: ProjectUsageResponse?, _ error: Error?) -> Void)
```

Get project usage statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID

// Get project usage statistics
ProjectsAPI.getProjectUsage(orgId: orgId, id: id) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 

### Return type

[**ProjectUsageResponse**](ProjectUsageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjects**
```swift
    open class func listProjects(orgId: String, completion: @escaping (_ data: ListProjects200Response?, _ error: Error?) -> Void)
```

List all projects

List all projects in an organization. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID

// List all projects
ProjectsAPI.listProjects(orgId: orgId) { (response, error) in
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
 **orgId** | **String** | Organization ID | 

### Return type

[**ListProjects200Response**](ListProjects200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOAuthProviderConfig**
```swift
    open class func updateOAuthProviderConfig(projectId: String, provider: Provider_updateOAuthProviderConfig, updateOAuthProviderConfigRequest: UpdateOAuthProviderConfigRequest, completion: @escaping (_ data: ConfigureOAuthProvider200Response?, _ error: Error?) -> Void)
```

Update OAuth provider configuration

Updates the configuration for an OAuth provider for the specified project

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let provider = "provider_example" // String | 
let updateOAuthProviderConfigRequest = updateOAuthProviderConfig_request(enabled: true, clientId: "clientId_example", clientSecret: "clientSecret_example", scope: ["scope_example"], displayName: "displayName_example") // UpdateOAuthProviderConfigRequest | 

// Update OAuth provider configuration
ProjectsAPI.updateOAuthProviderConfig(projectId: projectId, provider: provider, updateOAuthProviderConfigRequest: updateOAuthProviderConfigRequest) { (response, error) in
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
 **provider** | **String** |  | 
 **updateOAuthProviderConfigRequest** | [**UpdateOAuthProviderConfigRequest**](UpdateOAuthProviderConfigRequest.md) |  | 

### Return type

[**ConfigureOAuthProvider200Response**](ConfigureOAuthProvider200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
```swift
    open class func updateProject(orgId: String, id: String, updateProjectRequest: UpdateProjectRequest, completion: @escaping (_ data: CreateProject201Response?, _ error: Error?) -> Void)
```

Update project

Update project configuration (name, description, settings). **Settings toggles:** **requireEmailVerification** (default true) — when on, new email signups do not get a token until they verify; login is blocked until verified. **requirePhoneVerification** (default false) — when on, phone/OTP users must verify before token. **defaultUserAccountStatus** — **active** (default) or **pending**; when pending, new users must be approved by org owner/admin before they can perform data/storage operations. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID
let updateProjectRequest = UpdateProjectRequest(name: "name_example", description: "description_example", logoUrl: "logoUrl_example", settings: ProjectSettings(allowAnonymousAuth: false, requireEmailVerification: false, requirePhoneVerification: false, defaultUserAccountStatus: "defaultUserAccountStatus_example", enableRealtime: false, enableStorage: false, enableFunctions: false), auth: AuthConfig(providers: [AuthProvider(name: "name_example", enabled: false, config: 123)], notifyOnNewSignIn: false)) // UpdateProjectRequest | 

// Update project
ProjectsAPI.updateProject(orgId: orgId, id: id, updateProjectRequest: updateProjectRequest) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 
 **updateProjectRequest** | [**UpdateProjectRequest**](UpdateProjectRequest.md) |  | 

### Return type

[**CreateProject201Response**](CreateProject201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadProjectLogo**
```swift
    open class func uploadProjectLogo(id: String, logo: URL, completion: @escaping (_ data: UploadProjectLogo200Response?, _ error: Error?) -> Void)
```

Upload project logo (by project ID)

Upload a logo image for a project. File is stored in the platform storage under **logo/project/{projectId}/_**. The public URL is saved to the project's **logoUrl** field and used in project-related emails and UI. Project is resolved from the authenticated user's org. Use multipart/form-data with field name **logo**. Allowed types: PNG, JPEG, GIF, WebP. Max size 2MB. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let id = "id_example" // String | Project ID
let logo = URL(string: "https://example.com")! // URL | Logo image (PNG, JPEG, GIF, or WebP; max 2MB)

// Upload project logo (by project ID)
ProjectsAPI.uploadProjectLogo(id: id, logo: logo) { (response, error) in
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
 **id** | **String** | Project ID | 
 **logo** | **URL** | Logo image (PNG, JPEG, GIF, or WebP; max 2MB) | 

### Return type

[**UploadProjectLogo200Response**](UploadProjectLogo200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadProjectLogoByOrg**
```swift
    open class func uploadProjectLogoByOrg(orgId: String, id: String, logo: URL, completion: @escaping (_ data: UploadProjectLogo200Response?, _ error: Error?) -> Void)
```

Upload project logo (by org and project ID)

Upload a logo image for a project. File is stored in the platform storage under **logo/project/{projectId}/_**. The public URL is saved to the project's **logoUrl** field. Use multipart/form-data with field name **logo**. Allowed types: PNG, JPEG, GIF, WebP. Max size 2MB. Requires project update permission and membership in the organization. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | Organization ID
let id = "id_example" // String | Project ID
let logo = URL(string: "https://example.com")! // URL | Logo image (PNG, JPEG, GIF, or WebP; max 2MB)

// Upload project logo (by org and project ID)
ProjectsAPI.uploadProjectLogoByOrg(orgId: orgId, id: id, logo: logo) { (response, error) in
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
 **orgId** | **String** | Organization ID | 
 **id** | **String** | Project ID | 
 **logo** | **URL** | Logo image (PNG, JPEG, GIF, or WebP; max 2MB) | 

### Return type

[**UploadProjectLogo200Response**](UploadProjectLogo200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

