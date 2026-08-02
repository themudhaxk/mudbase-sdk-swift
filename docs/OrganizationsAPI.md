# OrganizationsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrgCustomDomain**](OrganizationsAPI.md#addorgcustomdomain) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains | Add a custom domain
[**createOrganization**](OrganizationsAPI.md#createorganization) | **POST** /api/orgs | ~~Create new organization~~ (disabled)
[**deleteOrgCustomDomain**](OrganizationsAPI.md#deleteorgcustomdomain) | **DELETE** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname} | Remove a custom domain
[**deleteOrganization**](OrganizationsAPI.md#deleteorganization) | **DELETE** /api/orgs/{orgId} | Delete organization
[**deleteSubOrganization**](OrganizationsAPI.md#deletesuborganization) | **DELETE** /api/orgs/{orgId}/suborgs/{suborgId} | ~~Delete sub-organization~~ (deprecated)
[**getOrgCustomDomainDnsInstructions**](OrganizationsAPI.md#getorgcustomdomaindnsinstructions) | **GET** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/dns-instructions | Get DNS TXT record instructions for one hostname
[**getOrganization**](OrganizationsAPI.md#getorganization) | **GET** /api/orgs/{orgId} | Get organization details by ID
[**getOrganizationMembers**](OrganizationsAPI.md#getorganizationmembers) | **GET** /api/orgs/{orgId}/members | Get organization members
[**getOrganizationUsage**](OrganizationsAPI.md#getorganizationusage) | **GET** /api/orgs/{orgId}/usage | Get organization usage and billing
[**getOrganizationUsers**](OrganizationsAPI.md#getorganizationusers) | **GET** /api/orgs/{orgId}/users | List organization users with metadata
[**getProjectUsers**](OrganizationsAPI.md#getprojectusers) | **GET** /api/orgs/{orgId}/projects/{projectId}/users | List project users with metadata
[**getSubOrganizations**](OrganizationsAPI.md#getsuborganizations) | **GET** /api/orgs/{orgId}/suborgs | ~~Get sub-organizations~~ (deprecated)
[**getUserOverview**](OrganizationsAPI.md#getuseroverview) | **GET** /api/orgs/{orgId}/users/{userId}/overview | Get user overview and data footprint
[**internalCustomDomainAddon**](OrganizationsAPI.md#internalcustomdomainaddon) | **POST** /internal/org/custom-domain-addon | Enable/disable Growth/Scale custom domain add-on (internal)
[**internalCustomDomainSweepStatus**](OrganizationsAPI.md#internalcustomdomainsweepstatus) | **GET** /internal/custom-domain/sweep-status | Custom domain background sweep status (internal)
[**internalDomainDnsRecheckBatch**](OrganizationsAPI.md#internaldomaindnsrecheckbatch) | **POST** /internal/domain-dns/recheck-batch | Batch DNS re-verification for drift (internal)
[**internalProvisionEnterprise**](OrganizationsAPI.md#internalprovisionenterprise) | **POST** /internal/provision-enterprise | Provision enterprise dedicated API/DB (internal)
[**inviteSubOrganizationMember**](OrganizationsAPI.md#invitesuborganizationmember) | **POST** /api/orgs/{orgId}/suborgs/{suborgId}/invite | ~~Invite member to sub-organization~~ (deprecated)
[**inviteTeamMember**](OrganizationsAPI.md#inviteteammember) | **POST** /api/orgs/{orgId}/invite | Invite team member to organization
[**listOrgCustomDomains**](OrganizationsAPI.md#listorgcustomdomains) | **GET** /api/orgs/{orgId}/projects/{projectId}/domains | List custom domains and DNS verification hints
[**listOrganizations**](OrganizationsAPI.md#listorganizations) | **GET** /api/orgs | Get all organizations for user
[**orgCustomDomainPlatformReady**](OrganizationsAPI.md#orgcustomdomainplatformready) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/platform-ready | Notify platform ops that hosting or edge work is ready (email)
[**orgCustomDomainSubmitCname**](OrganizationsAPI.md#orgcustomdomainsubmitcname) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/submit-cname | Custom domain step 2 (optional): org confirms routing CNAME was added
[**orgCustomDomainSubmitPlatformDnsVerificationDeprecated**](OrganizationsAPI.md#orgcustomdomainsubmitplatformdnsverificationdeprecated) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/submit-platform-dns-verification | Deprecated — use POST .../verify-platform-dns
[**orgCustomDomainVerifyPlatformDns**](OrganizationsAPI.md#orgcustomdomainverifyplatformdns) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/verify-platform-dns | Custom domain step 3: verify platform DNS (manual TXT or Fly certificate readiness)
[**patchOrgCustomDomain**](OrganizationsAPI.md#patchorgcustomdomain) | **PATCH** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname} | Update domain status or regenerate verification token
[**removeSubOrganizationMember**](OrganizationsAPI.md#removesuborganizationmember) | **DELETE** /api/orgs/{orgId}/suborgs/{suborgId}/members/{userId} | ~~Remove member from sub-organization~~ (deprecated)
[**removeTeamMember**](OrganizationsAPI.md#removeteammember) | **DELETE** /api/orgs/{orgId}/members/{userId} | Remove team member from organization
[**setOrgPrimaryDomain**](OrganizationsAPI.md#setorgprimarydomain) | **PATCH** /api/orgs/{orgId}/projects/{projectId}/domains/primary | Set primary custom domain
[**updateMemberRole**](OrganizationsAPI.md#updatememberrole) | **PATCH** /api/orgs/{orgId}/members/{userId}/role | Update member role
[**updateOrganization**](OrganizationsAPI.md#updateorganization) | **PATCH** /api/orgs/{orgId} | Update organization
[**updateOrganizationPlan**](OrganizationsAPI.md#updateorganizationplan) | **PATCH** /api/orgs/plan/{orgId} | Update organization plan
[**updateSubOrganization**](OrganizationsAPI.md#updatesuborganization) | **PATCH** /api/orgs/{orgId}/suborgs/{suborgId} | ~~Update sub-organization~~ (deprecated)
[**updateSubOrganizationMemberRole**](OrganizationsAPI.md#updatesuborganizationmemberrole) | **PATCH** /api/orgs/{orgId}/suborgs/{suborgId}/members/{userId}/role | ~~Update sub-organization member role~~ (deprecated)
[**updateUserAccountStatus**](OrganizationsAPI.md#updateuseraccountstatus) | **PATCH** /api/orgs/{orgId}/users/{userId}/status | Update user account status (activate or suspend)
[**verifyOrgCustomDomainDns**](OrganizationsAPI.md#verifyorgcustomdomaindns) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/verify-dns | Verify domain ownership via DNS TXT


# **addOrgCustomDomain**
```swift
    open class func addOrgCustomDomain(orgId: String, projectId: String, addOrgDomainRequest: AddOrgDomainRequest, completion: @escaping (_ data: OrgAddDomainResponse?, _ error: Error?) -> Void)
```

Add a custom domain

Creates a pending domain row; the response **`domain`** uses the compact **`OrgDomainEntryOrgConsole`** shape (**`dnsRecords`** includes the Mudbase ownership TXT). **`dnsRecords`** may include Mudbase TXT and routing CNAME only until Mudbase TXT succeeds and Fly ACME (if enabled) provisions a certificate. **`flyCertificateStatus`** is typically omitted until Fly ACME runs after first successful **`verify-dns`**. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let addOrgDomainRequest = AddOrgDomainRequest(hostname: "hostname_example", setPrimary: false) // AddOrgDomainRequest | 

// Add a custom domain
OrganizationsAPI.addOrgCustomDomain(orgId: orgId, projectId: projectId, addOrgDomainRequest: addOrgDomainRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **addOrgDomainRequest** | [**AddOrgDomainRequest**](AddOrgDomainRequest.md) |  | 

### Return type

[**OrgAddDomainResponse**](OrgAddDomainResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganization**
```swift
    open class func createOrganization(createOrganizationRequest: CreateOrganizationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

~~Create new organization~~ (disabled)

~~Create a new organization.~~ This endpoint is disabled and kept only for backward compatibility in documentation. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createOrganizationRequest = createOrganization_request(name: "name_example", description: "description_example", logo: "logo_example", website: "website_example", parentOrgId: "parentOrgId_example") // CreateOrganizationRequest | 

// ~~Create new organization~~ (disabled)
OrganizationsAPI.createOrganization(createOrganizationRequest: createOrganizationRequest) { (response, error) in
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
 **createOrganizationRequest** | [**CreateOrganizationRequest**](CreateOrganizationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrgCustomDomain**
```swift
    open class func deleteOrgCustomDomain(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a custom domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Remove a custom domain
OrganizationsAPI.deleteOrgCustomDomain(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganization**
```swift
    open class func deleteOrganization(orgId: String, completion: @escaping (_ data: DeleteOrganization200Response?, _ error: Error?) -> Void)
```

Delete organization

Delete an organization permanently. This is a destructive operation. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// Delete organization
OrganizationsAPI.deleteOrganization(orgId: orgId) { (response, error) in
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

### Return type

[**DeleteOrganization200Response**](DeleteOrganization200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubOrganization**
```swift
    open class func deleteSubOrganization(orgId: String, suborgId: String, completion: @escaping (_ data: DeleteSubOrganization200Response?, _ error: Error?) -> Void)
```

~~Delete sub-organization~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let suborgId = "suborgId_example" // String | 

// ~~Delete sub-organization~~ (deprecated)
OrganizationsAPI.deleteSubOrganization(orgId: orgId, suborgId: suborgId) { (response, error) in
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
 **suborgId** | **String** |  | 

### Return type

[**DeleteSubOrganization200Response**](DeleteSubOrganization200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgCustomDomainDnsInstructions**
```swift
    open class func getOrgCustomDomainDnsInstructions(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: OrgDnsInstructionsResponse?, _ error: Error?) -> Void)
```

Get DNS TXT record instructions for one hostname

Returns the same shape as list/add for one hostname (URL-encode `hostname` in the path), including **`dnsRecords`** and **`flyCertificateStatus`** when applicable. See **`listOrgCustomDomains`** for how Fly ACME and Cloudflare SaaS affect those fields. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Get DNS TXT record instructions for one hostname
OrganizationsAPI.getOrgCustomDomainDnsInstructions(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

[**OrgDnsInstructionsResponse**](OrgDnsInstructionsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
```swift
    open class func getOrganization(orgId: String, completion: @escaping (_ data: Organization?, _ error: Error?) -> Void)
```

Get organization details by ID

Get organization details by ID. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// Get organization details by ID
OrganizationsAPI.getOrganization(orgId: orgId) { (response, error) in
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

### Return type

[**Organization**](Organization.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationMembers**
```swift
    open class func getOrganizationMembers(orgId: String, completion: @escaping (_ data: GetOrganizationMembers200Response?, _ error: Error?) -> Void)
```

Get organization members

Get all members of an organization. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// Get organization members
OrganizationsAPI.getOrganizationMembers(orgId: orgId) { (response, error) in
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

### Return type

[**GetOrganizationMembers200Response**](GetOrganizationMembers200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationUsage**
```swift
    open class func getOrganizationUsage(orgId: String, completion: @escaping (_ data: GetOrganizationUsage200Response?, _ error: Error?) -> Void)
```

Get organization usage and billing

Get usage statistics and billing information for an organization. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// Get organization usage and billing
OrganizationsAPI.getOrganizationUsage(orgId: orgId) { (response, error) in
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

### Return type

[**GetOrganizationUsage200Response**](GetOrganizationUsage200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationUsers**
```swift
    open class func getOrganizationUsers(orgId: String, status: Status_getOrganizationUsers? = nil, completion: @escaping (_ data: GetOrganizationUsers200Response?, _ error: Error?) -> Void)
```

List organization users with metadata

Get all users in the organization with metadata (email, full name, role, accountStatus, phone, lastLogin, etc.). Optional query `status` filters by accountStatus (pending, active, suspended). Requires organization access and owner or admin role. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let status = "status_example" // String | Filter by account status (pending, active, suspended) (optional)

// List organization users with metadata
OrganizationsAPI.getOrganizationUsers(orgId: orgId, status: status) { (response, error) in
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
 **status** | **String** | Filter by account status (pending, active, suspended) | [optional] 

### Return type

[**GetOrganizationUsers200Response**](GetOrganizationUsers200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectUsers**
```swift
    open class func getProjectUsers(orgId: String, projectId: String, status: Status_getProjectUsers? = nil, completion: @escaping (_ data: GetProjectUsers200Response?, _ error: Error?) -> Void)
```

List project users with metadata

Get all users in a project with metadata (email, full name, role, accountStatus, etc.). Optional query `status` filters by accountStatus. Project must belong to the organization. Requires owner or admin role. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let status = "status_example" // String | Filter by account status (pending, active, suspended) (optional)

// List project users with metadata
OrganizationsAPI.getProjectUsers(orgId: orgId, projectId: projectId, status: status) { (response, error) in
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
 **projectId** | **String** |  | 
 **status** | **String** | Filter by account status (pending, active, suspended) | [optional] 

### Return type

[**GetProjectUsers200Response**](GetProjectUsers200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubOrganizations**
```swift
    open class func getSubOrganizations(orgId: String, completion: @escaping (_ data: GetSubOrganizations200Response?, _ error: Error?) -> Void)
```

~~Get sub-organizations~~ (deprecated)

Get all sub-organizations under a parent organization. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// ~~Get sub-organizations~~ (deprecated)
OrganizationsAPI.getSubOrganizations(orgId: orgId) { (response, error) in
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

### Return type

[**GetSubOrganizations200Response**](GetSubOrganizations200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserOverview**
```swift
    open class func getUserOverview(orgId: String, userId: String, completion: @escaping (_ data: GetUserOverview200Response?, _ error: Error?) -> Void)
```

Get user overview and data footprint

Get a user's profile plus footprint (files count/size, sessions, API keys, collections in project). Use for dashboard to see everything tied to the user. Requires owner or admin role. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Get user overview and data footprint
OrganizationsAPI.getUserOverview(orgId: orgId, userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

[**GetUserOverview200Response**](GetUserOverview200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCustomDomainAddon**
```swift
    open class func internalCustomDomainAddon(internalCustomDomainAddonRequest: InternalCustomDomainAddonRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable/disable Growth/Scale custom domain add-on (internal)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let internalCustomDomainAddonRequest = internalCustomDomainAddon_request(orgId: "orgId_example", enabled: false) // InternalCustomDomainAddonRequest | 

// Enable/disable Growth/Scale custom domain add-on (internal)
OrganizationsAPI.internalCustomDomainAddon(internalCustomDomainAddonRequest: internalCustomDomainAddonRequest) { (response, error) in
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
 **internalCustomDomainAddonRequest** | [**InternalCustomDomainAddonRequest**](InternalCustomDomainAddonRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[InternalApiKey](../README.md#InternalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalCustomDomainSweepStatus**
```swift
    open class func internalCustomDomainSweepStatus(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Custom domain background sweep status (internal)

Returns the last automated custom-domain sweep (TXT recheck + Fly ACME retry), job env flags, and Fly deploy troubleshooting hints when the proxy reports the app is not listening on 0.0.0.0:PORT. Requires header `X-Internal-Api-Key` (same as other /internal routes).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Custom domain background sweep status (internal)
OrganizationsAPI.internalCustomDomainSweepStatus() { (response, error) in
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

Void (empty response body)

### Authorization

[InternalApiKey](../README.md#InternalApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalDomainDnsRecheckBatch**
```swift
    open class func internalDomainDnsRecheckBatch(internalDomainDnsRecheckBatchRequest: InternalDomainDnsRecheckBatchRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Batch DNS re-verification for drift (internal)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let internalDomainDnsRecheckBatchRequest = internalDomainDnsRecheckBatch_request(maxOrgs: 123, recheckOlderThanHours: 123) // InternalDomainDnsRecheckBatchRequest |  (optional)

// Batch DNS re-verification for drift (internal)
OrganizationsAPI.internalDomainDnsRecheckBatch(internalDomainDnsRecheckBatchRequest: internalDomainDnsRecheckBatchRequest) { (response, error) in
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
 **internalDomainDnsRecheckBatchRequest** | [**InternalDomainDnsRecheckBatchRequest**](InternalDomainDnsRecheckBatchRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[InternalApiKey](../README.md#InternalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **internalProvisionEnterprise**
```swift
    open class func internalProvisionEnterprise(provisionEnterpriseRequest: ProvisionEnterpriseRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Provision enterprise dedicated API/DB (internal)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provisionEnterpriseRequest = ProvisionEnterpriseRequest(orgId: "orgId_example", provisionRequestId: "provisionRequestId_example", apiBaseUrl: "apiBaseUrl_example", dbRef: "dbRef_example", serverId: "serverId_example", region: "region_example", version: "version_example", forceOverride: false) // ProvisionEnterpriseRequest | 

// Provision enterprise dedicated API/DB (internal)
OrganizationsAPI.internalProvisionEnterprise(provisionEnterpriseRequest: provisionEnterpriseRequest) { (response, error) in
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
 **provisionEnterpriseRequest** | [**ProvisionEnterpriseRequest**](ProvisionEnterpriseRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[InternalApiKey](../README.md#InternalApiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteSubOrganizationMember**
```swift
    open class func inviteSubOrganizationMember(orgId: String, suborgId: String, inviteMemberRequest: InviteMemberRequest, completion: @escaping (_ data: InviteSubOrganizationMember200Response?, _ error: Error?) -> Void)
```

~~Invite member to sub-organization~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let suborgId = "suborgId_example" // String | 
let inviteMemberRequest = InviteMemberRequest(email: "email_example", role: "role_example") // InviteMemberRequest | 

// ~~Invite member to sub-organization~~ (deprecated)
OrganizationsAPI.inviteSubOrganizationMember(orgId: orgId, suborgId: suborgId, inviteMemberRequest: inviteMemberRequest) { (response, error) in
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
 **suborgId** | **String** |  | 
 **inviteMemberRequest** | [**InviteMemberRequest**](InviteMemberRequest.md) |  | 

### Return type

[**InviteSubOrganizationMember200Response**](InviteSubOrganizationMember200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inviteTeamMember**
```swift
    open class func inviteTeamMember(orgId: String, inviteMemberRequest: InviteMemberRequest, completion: @escaping (_ data: InviteTeamMember200Response?, _ error: Error?) -> Void)
```

Invite team member to organization

Send an invitation to a user to join the organization. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let inviteMemberRequest = InviteMemberRequest(email: "email_example", role: "role_example") // InviteMemberRequest | 

// Invite team member to organization
OrganizationsAPI.inviteTeamMember(orgId: orgId, inviteMemberRequest: inviteMemberRequest) { (response, error) in
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
 **inviteMemberRequest** | [**InviteMemberRequest**](InviteMemberRequest.md) |  | 

### Return type

[**InviteTeamMember200Response**](InviteTeamMember200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrgCustomDomains**
```swift
    open class func listOrgCustomDomains(orgId: String, projectId: String, completion: @escaping (_ data: OrgDomainsListResponse?, _ error: Error?) -> Void)
```

List custom domains and DNS verification hints

Returns allowed hostnames for **this project**, primary hostname (per project), API base URL, and per-domain DNS guidance.  Each row uses **`dnsRecords`** for the Mudbase ownership TXT (purpose **`mudbase_ownership`**) and routing **CNAME** from Fly **`dns_requirements.cname`** when Fly ACME has provisioned (else fallback **`CUSTOM_DOMAIN_API_CNAME_TARGET`**), and—when Fly ACME is enabled (**`FLY_API_TOKEN`** + **`CUSTOM_DOMAIN_FLY_ACME_ENABLED`**)—Fly rows (`fly_ownership`, `acme_challenge`, etc.) after the org has passed Mudbase TXT at least once. **`flyCertificateStatus`** mirrors Fly’s certificate state when ACME automation is on (e.g. `pending_validation`, `active`).  **`cloudflareEdge`** appears only when Cloudflare SSL-for-SaaS env is configured. Fly ACME and Cloudflare SaaS are mutually exclusive on the server.  Requires Growth, Scale, or Enterprise plan (custom domains included in plan features). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 

// List custom domains and DNS verification hints
OrganizationsAPI.listOrgCustomDomains(orgId: orgId, projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | 

### Return type

[**OrgDomainsListResponse**](OrgDomainsListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizations**
```swift
    open class func listOrganizations(completion: @escaping (_ data: ListOrganizations200Response?, _ error: Error?) -> Void)
```

Get all organizations for user

Get all organizations the authenticated user belongs to. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get all organizations for user
OrganizationsAPI.listOrganizations() { (response, error) in
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

[**ListOrganizations200Response**](ListOrganizations200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgCustomDomainPlatformReady**
```swift
    open class func orgCustomDomainPlatformReady(orgId: String, projectId: String, hostname: String, orgCustomDomainPlatformReadyRequest: OrgCustomDomainPlatformReadyRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Notify platform ops that hosting or edge work is ready (email)

Legacy optional ping: ops are emailed automatically on first successful Mudbase TXT verify. Use this only for an extra nudge. Sends an email to ops while the domain is in platform setup (after Mudbase TXT verification through later pipeline states). Recipients default to `admin@mudhaxkservices.com` and `admin@mudbase.dev` when `CUSTOM_DOMAIN_OPS_NOTIFY_EMAILS` is unset; override with that env (comma/space-separated). Returns **503** `email_provider_not_configured` if no email provider is configured (e.g. missing `ZEPTOMAIL_SEND_TOKEN`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 
let orgCustomDomainPlatformReadyRequest = orgCustomDomainPlatformReady_request(note: "note_example") // OrgCustomDomainPlatformReadyRequest |  (optional)

// Notify platform ops that hosting or edge work is ready (email)
OrganizationsAPI.orgCustomDomainPlatformReady(orgId: orgId, projectId: projectId, hostname: hostname, orgCustomDomainPlatformReadyRequest: orgCustomDomainPlatformReadyRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 
 **orgCustomDomainPlatformReadyRequest** | [**OrgCustomDomainPlatformReadyRequest**](OrgCustomDomainPlatformReadyRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgCustomDomainSubmitCname**
```swift
    open class func orgCustomDomainSubmitCname(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: OrgPatchDomainResponse?, _ error: Error?) -> Void)
```

Custom domain step 2 (optional): org confirms routing CNAME was added

Usually unnecessary. With Fly ACME default automation, Mudbase TXT verify may already set `cname_approved`. Legacy pipelines may queue `cname_pending_staff` until staff **`approve-cname`**. Use **`routingCnameTarget`** from **`GET .../projects/{projectId}/domains`** (Fly **`dns_requirements.cname`** when provisioned, else **`CUSTOM_DOMAIN_API_CNAME_TARGET`**). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Custom domain step 2 (optional): org confirms routing CNAME was added
OrganizationsAPI.orgCustomDomainSubmitCname(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

[**OrgPatchDomainResponse**](OrgPatchDomainResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgCustomDomainSubmitPlatformDnsVerificationDeprecated**
```swift
    open class func orgCustomDomainSubmitPlatformDnsVerificationDeprecated(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: OrgPatchDomainResponse?, _ error: Error?) -> Void)
```

Deprecated — use POST .../verify-platform-dns

Deprecated alias of **`orgCustomDomainVerifyPlatformDns`** (same behavior — manual TXT and/or Fly ACME path per server config).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Deprecated — use POST .../verify-platform-dns
OrganizationsAPI.orgCustomDomainSubmitPlatformDnsVerificationDeprecated(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

[**OrgPatchDomainResponse**](OrgPatchDomainResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgCustomDomainVerifyPlatformDns**
```swift
    open class func orgCustomDomainVerifyPlatformDns(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: OrgPatchDomainResponse?, _ error: Error?) -> Void)
```

Custom domain step 3: verify platform DNS (manual TXT or Fly certificate readiness)

**Manual path (no Fly ACME):** After staff **`PATCH .../platform-dns-verification`**, the org adds the published TXT and calls this endpoint. The API resolves public TXT at **`platformDnsVerification.recordName`** and matches **`recordValue`**. On success, `status` → **`platform_dns_pending_review`** until staff **`POST .../activate`**.  **Fly ACME path (default):** When Fly ACME is enabled and **`CUSTOM_DOMAIN_FLY_LEGACY_STAFF_PIPELINE`** is **not** set, the org calls this after Mudbase TXT and Fly DNS rows are in place (status typically **`cname_approved`** from automated verify-dns). The API triggers Fly **`POST .../check`** and **`GET`** certificate with bounded retries. On success, `status` → **`active`** and the org may receive the activation email—**no** staff **`approve-cname`** or **`activate`** required.  **Fly legacy:** If **`CUSTOM_DOMAIN_FLY_LEGACY_STAFF_PIPELINE=true`**, behavior matches the older flow: staff **`approve-cname`** may be required first; after a ready Fly cert, **`status`** becomes **`active`** only when **`CUSTOM_DOMAIN_FLY_AUTO_ACTIVATE=true`**, else **`platform_dns_pending_review`** until staff **`activate`**.  **`platform_dns_verification_failed`** may include **`details.flyStatus`** / **`details.flyError`** on the Fly path. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Custom domain step 3: verify platform DNS (manual TXT or Fly certificate readiness)
OrganizationsAPI.orgCustomDomainVerifyPlatformDns(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

[**OrgPatchDomainResponse**](OrgPatchDomainResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchOrgCustomDomain**
```swift
    open class func patchOrgCustomDomain(orgId: String, projectId: String, hostname: String, patchOrgDomainRequest: PatchOrgDomainRequest? = nil, completion: @escaping (_ data: OrgPatchDomainResponse?, _ error: Error?) -> Void)
```

Update domain status or regenerate verification token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 
let patchOrgDomainRequest = PatchOrgDomainRequest(status: "status_example", regenerateToken: false) // PatchOrgDomainRequest |  (optional)

// Update domain status or regenerate verification token
OrganizationsAPI.patchOrgCustomDomain(orgId: orgId, projectId: projectId, hostname: hostname, patchOrgDomainRequest: patchOrgDomainRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 
 **patchOrgDomainRequest** | [**PatchOrgDomainRequest**](PatchOrgDomainRequest.md) |  | [optional] 

### Return type

[**OrgPatchDomainResponse**](OrgPatchDomainResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSubOrganizationMember**
```swift
    open class func removeSubOrganizationMember(orgId: String, suborgId: String, userId: String, completion: @escaping (_ data: RemoveTeamMember200Response?, _ error: Error?) -> Void)
```

~~Remove member from sub-organization~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let suborgId = "suborgId_example" // String | 
let userId = "userId_example" // String | 

// ~~Remove member from sub-organization~~ (deprecated)
OrganizationsAPI.removeSubOrganizationMember(orgId: orgId, suborgId: suborgId, userId: userId) { (response, error) in
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
 **suborgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**RemoveTeamMember200Response**](RemoveTeamMember200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamMember**
```swift
    open class func removeTeamMember(orgId: String, userId: String, completion: @escaping (_ data: RemoveTeamMember200Response?, _ error: Error?) -> Void)
```

Remove team member from organization

Remove a user from the organization. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Remove team member from organization
OrganizationsAPI.removeTeamMember(orgId: orgId, userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

[**RemoveTeamMember200Response**](RemoveTeamMember200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setOrgPrimaryDomain**
```swift
    open class func setOrgPrimaryDomain(orgId: String, projectId: String, setOrgPrimaryDomainRequest: SetOrgPrimaryDomainRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set primary custom domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let setOrgPrimaryDomainRequest = setOrgPrimaryDomain_request(hostname: "hostname_example") // SetOrgPrimaryDomainRequest | 

// Set primary custom domain
OrganizationsAPI.setOrgPrimaryDomain(orgId: orgId, projectId: projectId, setOrgPrimaryDomainRequest: setOrgPrimaryDomainRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **setOrgPrimaryDomainRequest** | [**SetOrgPrimaryDomainRequest**](SetOrgPrimaryDomainRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMemberRole**
```swift
    open class func updateMemberRole(orgId: String, userId: String, updateMemberRoleRequest: UpdateMemberRoleRequest, completion: @escaping (_ data: UpdateMemberRole200Response?, _ error: Error?) -> Void)
```

Update member role

Update a member's role in the organization. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let updateMemberRoleRequest = updateMemberRole_request(role: "role_example") // UpdateMemberRoleRequest | 

// Update member role
OrganizationsAPI.updateMemberRole(orgId: orgId, userId: userId, updateMemberRoleRequest: updateMemberRoleRequest) { (response, error) in
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
 **userId** | **String** |  | 
 **updateMemberRoleRequest** | [**UpdateMemberRoleRequest**](UpdateMemberRoleRequest.md) |  | 

### Return type

[**UpdateMemberRole200Response**](UpdateMemberRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
```swift
    open class func updateOrganization(orgId: String, updateOrganizationRequest: UpdateOrganizationRequest, completion: @escaping (_ data: UpdateOrganization200Response?, _ error: Error?) -> Void)
```

Update organization

Update organization details. Requires organization-level authentication (JWT Bearer token). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let updateOrganizationRequest = UpdateOrganizationRequest(name: "name_example", description: "description_example", logo: "logo_example", website: "website_example", settings: 123) // UpdateOrganizationRequest | 

// Update organization
OrganizationsAPI.updateOrganization(orgId: orgId, updateOrganizationRequest: updateOrganizationRequest) { (response, error) in
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
 **updateOrganizationRequest** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  | 

### Return type

[**UpdateOrganization200Response**](UpdateOrganization200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationPlan**
```swift
    open class func updateOrganizationPlan(orgId: String, updateOrganizationPlanRequest: UpdateOrganizationPlanRequest, completion: @escaping (_ data: UpdateOrganizationPlan200Response?, _ error: Error?) -> Void)
```

Update organization plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let updateOrganizationPlanRequest = updateOrganizationPlan_request(plan: "plan_example") // UpdateOrganizationPlanRequest | 

// Update organization plan
OrganizationsAPI.updateOrganizationPlan(orgId: orgId, updateOrganizationPlanRequest: updateOrganizationPlanRequest) { (response, error) in
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
 **updateOrganizationPlanRequest** | [**UpdateOrganizationPlanRequest**](UpdateOrganizationPlanRequest.md) |  | 

### Return type

[**UpdateOrganizationPlan200Response**](UpdateOrganizationPlan200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubOrganization**
```swift
    open class func updateSubOrganization(orgId: String, suborgId: String, updateOrganizationRequest: UpdateOrganizationRequest, completion: @escaping (_ data: UpdateSubOrganization200Response?, _ error: Error?) -> Void)
```

~~Update sub-organization~~ (deprecated)

Update a sub-organization's configuration. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let suborgId = "suborgId_example" // String | 
let updateOrganizationRequest = UpdateOrganizationRequest(name: "name_example", description: "description_example", logo: "logo_example", website: "website_example", settings: 123) // UpdateOrganizationRequest | 

// ~~Update sub-organization~~ (deprecated)
OrganizationsAPI.updateSubOrganization(orgId: orgId, suborgId: suborgId, updateOrganizationRequest: updateOrganizationRequest) { (response, error) in
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
 **suborgId** | **String** |  | 
 **updateOrganizationRequest** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  | 

### Return type

[**UpdateSubOrganization200Response**](UpdateSubOrganization200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubOrganizationMemberRole**
```swift
    open class func updateSubOrganizationMemberRole(orgId: String, suborgId: String, userId: String, updateMemberRoleRequest: UpdateMemberRoleRequest, completion: @escaping (_ data: UpdateMemberRole200Response?, _ error: Error?) -> Void)
```

~~Update sub-organization member role~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let suborgId = "suborgId_example" // String | 
let userId = "userId_example" // String | 
let updateMemberRoleRequest = updateMemberRole_request(role: "role_example") // UpdateMemberRoleRequest | 

// ~~Update sub-organization member role~~ (deprecated)
OrganizationsAPI.updateSubOrganizationMemberRole(orgId: orgId, suborgId: suborgId, userId: userId, updateMemberRoleRequest: updateMemberRoleRequest) { (response, error) in
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
 **suborgId** | **String** |  | 
 **userId** | **String** |  | 
 **updateMemberRoleRequest** | [**UpdateMemberRoleRequest**](UpdateMemberRoleRequest.md) |  | 

### Return type

[**UpdateMemberRole200Response**](UpdateMemberRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserAccountStatus**
```swift
    open class func updateUserAccountStatus(orgId: String, userId: String, updateUserAccountStatusRequest: UpdateUserAccountStatusRequest, completion: @escaping (_ data: UpdateUserAccountStatus200Response?, _ error: Error?) -> Void)
```

Update user account status (activate or suspend)

Set a user's account status to active or suspended. Used to approve pending users or suspend/activate accounts. Cannot change status of an organization owner. Requires owner or admin role. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let updateUserAccountStatusRequest = updateUserAccountStatus_request(accountStatus: "accountStatus_example") // UpdateUserAccountStatusRequest | 

// Update user account status (activate or suspend)
OrganizationsAPI.updateUserAccountStatus(orgId: orgId, userId: userId, updateUserAccountStatusRequest: updateUserAccountStatusRequest) { (response, error) in
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
 **userId** | **String** |  | 
 **updateUserAccountStatusRequest** | [**UpdateUserAccountStatusRequest**](UpdateUserAccountStatusRequest.md) |  | 

### Return type

[**UpdateUserAccountStatus200Response**](UpdateUserAccountStatus200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOrgCustomDomainDns**
```swift
    open class func verifyOrgCustomDomainDns(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: OrgVerifyCustomDomainDnsSuccessResponse?, _ error: Error?) -> Void)
```

Verify domain ownership via DNS TXT

Looks up TXT at `_mudbase-verify.<hostname>` for value `mudbase-domain-verification=<token>`.  When the server has **`CLOUDFLARE_API_TOKEN`** and **`CLOUDFLARE_ZONE_ID`** configured (and Fly ACME is **not** enabled), a successful verify also creates or refreshes a Cloudflare Custom Hostname (SSL for SaaS) and returns **`cloudflare`** with DCV hints.  When **Fly ACME** is enabled (**`FLY_API_TOKEN`** + **`CUSTOM_DOMAIN_FLY_ACME_ENABLED=true`** + app slug), a successful verify calls Fly’s Certificates API (`POST .../certificates/acme`) and persists DNS requirements. If Fly returns DNS rows and **`CUSTOM_DOMAIN_FLY_LEGACY_STAFF_PIPELINE`** is **not** set, status advances to **`cname_approved`** in the same response (no staff **`approve-cname`**); **`org.domain.cname_staff_queued`** is not logged for that path. Otherwise (legacy Fly or non-Fly), first success from `pending`/`failed` may move to **`cname_pending_staff`** and queue staff as before.  The **200** response may include **`dnsRecords`**, **`flyCertificateStatus`**, and **`routingCnameTarget`** from Fly’s **`dns_requirements.cname`** when provisioned.  Cloudflare SaaS and Fly ACME cannot both be enabled; the API process refuses to start if both are configured. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Verify domain ownership via DNS TXT
OrganizationsAPI.verifyOrgCustomDomainDns(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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
 **projectId** | **String** |  | 
 **hostname** | **String** |  | 

### Return type

[**OrgVerifyCustomDomainDnsSuccessResponse**](OrgVerifyCustomDomainDnsSuccessResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

