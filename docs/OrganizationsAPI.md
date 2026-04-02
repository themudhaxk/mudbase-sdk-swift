# OrganizationsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**organizationsAddDomain**](OrganizationsAPI.md#organizationsadddomain) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains | Add custom domain
[**organizationsListDomains**](OrganizationsAPI.md#organizationslistdomains) | **GET** /api/orgs/{orgId}/projects/{projectId}/domains | List custom domains and DNS TXT hints
[**organizationsPatchDomain**](OrganizationsAPI.md#organizationspatchdomain) | **PATCH** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname} | Patch domain status or regenerate token
[**organizationsRemoveDomain**](OrganizationsAPI.md#organizationsremovedomain) | **DELETE** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname} | Remove custom domain
[**organizationsReportDomainPlatformReady**](OrganizationsAPI.md#organizationsreportdomainplatformready) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/platform-ready | Notify platform ops hosting / edge ready
[**organizationsSetPrimaryDomain**](OrganizationsAPI.md#organizationssetprimarydomain) | **PATCH** /api/orgs/{orgId}/projects/{projectId}/domains/primary | Set primary custom domain
[**organizationsVerifyDomainDns**](OrganizationsAPI.md#organizationsverifydomaindns) | **POST** /api/orgs/{orgId}/projects/{projectId}/domains/{hostname}/verify-dns | Verify domain via DNS TXT


# **organizationsAddDomain**
```swift
    open class func organizationsAddDomain(orgId: String, projectId: String, organizationsAddDomainRequest: OrganizationsAddDomainRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add custom domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let organizationsAddDomainRequest = organizations_addDomain_request(hostname: "hostname_example", setPrimary: false) // OrganizationsAddDomainRequest | 

// Add custom domain
OrganizationsAPI.organizationsAddDomain(orgId: orgId, projectId: projectId, organizationsAddDomainRequest: organizationsAddDomainRequest) { (response, error) in
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
 **organizationsAddDomainRequest** | [**OrganizationsAddDomainRequest**](OrganizationsAddDomainRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsListDomains**
```swift
    open class func organizationsListDomains(orgId: String, projectId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List custom domains and DNS TXT hints

Owner/admin. Domains are per project. Returns dnsTxtHost, dnsTxtValue, platformActivationPending (dns_verified waiting for ops), and customDomainLiveForApiTraffic (active or legacy verified). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 

// List custom domains and DNS TXT hints
OrganizationsAPI.organizationsListDomains(orgId: orgId, projectId: projectId) { (response, error) in
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

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsPatchDomain**
```swift
    open class func organizationsPatchDomain(orgId: String, projectId: String, hostname: String, organizationsPatchDomainRequest: OrganizationsPatchDomainRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Patch domain status or regenerate token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 
let organizationsPatchDomainRequest = organizations_patchDomain_request(status: "status_example", regenerateToken: false) // OrganizationsPatchDomainRequest |  (optional)

// Patch domain status or regenerate token
OrganizationsAPI.organizationsPatchDomain(orgId: orgId, projectId: projectId, hostname: hostname, organizationsPatchDomainRequest: organizationsPatchDomainRequest) { (response, error) in
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
 **organizationsPatchDomainRequest** | [**OrganizationsPatchDomainRequest**](OrganizationsPatchDomainRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsRemoveDomain**
```swift
    open class func organizationsRemoveDomain(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove custom domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Remove custom domain
OrganizationsAPI.organizationsRemoveDomain(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsReportDomainPlatformReady**
```swift
    open class func organizationsReportDomainPlatformReady(orgId: String, projectId: String, hostname: String, organizationsReportDomainPlatformReadyRequest: OrganizationsReportDomainPlatformReadyRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Notify platform ops hosting / edge ready

Legacy optional ops email. First Mudbase TXT success already emails ops. Allowed during platform setup after Mudbase TXT. Recipients default to admin@mudhaxkservices.com and admin@mudbase.dev when CUSTOM_DOMAIN_OPS_NOTIFY_EMAILS is unset. Returns 503 email_provider_not_configured if no email provider is configured. Does not change domain status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 
let organizationsReportDomainPlatformReadyRequest = organizations_reportDomainPlatformReady_request(note: "note_example") // OrganizationsReportDomainPlatformReadyRequest |  (optional)

// Notify platform ops hosting / edge ready
OrganizationsAPI.organizationsReportDomainPlatformReady(orgId: orgId, projectId: projectId, hostname: hostname, organizationsReportDomainPlatformReadyRequest: organizationsReportDomainPlatformReadyRequest) { (response, error) in
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
 **organizationsReportDomainPlatformReadyRequest** | [**OrganizationsReportDomainPlatformReadyRequest**](OrganizationsReportDomainPlatformReadyRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsSetPrimaryDomain**
```swift
    open class func organizationsSetPrimaryDomain(orgId: String, projectId: String, organizationsSetPrimaryDomainRequest: OrganizationsSetPrimaryDomainRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set primary custom domain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let organizationsSetPrimaryDomainRequest = organizations_setPrimaryDomain_request(hostname: "hostname_example") // OrganizationsSetPrimaryDomainRequest | 

// Set primary custom domain
OrganizationsAPI.organizationsSetPrimaryDomain(orgId: orgId, projectId: projectId, organizationsSetPrimaryDomainRequest: organizationsSetPrimaryDomainRequest) { (response, error) in
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
 **organizationsSetPrimaryDomainRequest** | [**OrganizationsSetPrimaryDomainRequest**](OrganizationsSetPrimaryDomainRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **organizationsVerifyDomainDns**
```swift
    open class func organizationsVerifyDomainDns(orgId: String, projectId: String, hostname: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Verify domain via DNS TXT

On first success from pending/failed, status becomes cname_pending_staff; ops email once; audit org.domain.txt_verified and org.domain.cname_staff_queued.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let projectId = "projectId_example" // String | 
let hostname = "hostname_example" // String | 

// Verify domain via DNS TXT
OrganizationsAPI.organizationsVerifyDomainDns(orgId: orgId, projectId: projectId, hostname: hostname) { (response, error) in
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

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

