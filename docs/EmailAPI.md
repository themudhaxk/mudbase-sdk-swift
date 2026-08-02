# EmailAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enqueueProjectEmail**](EmailAPI.md#enqueueprojectemail) | **POST** /api/projects/{projectId}/email/send | Enqueue project email (worker delivery)
[**getProjectEmailAnalytics**](EmailAPI.md#getprojectemailanalytics) | **GET** /api/projects/{projectId}/analytics/email | Email analytics for a project
[**getProjectEmailSmtp**](EmailAPI.md#getprojectemailsmtp) | **GET** /api/projects/{projectId}/email/smtp | Get project SMTP settings (masked)
[**getProjectEmailTemplate**](EmailAPI.md#getprojectemailtemplate) | **GET** /api/projects/{projectId}/email/templates/{name} | Get one email template (effective content)
[**listProjectEmailTemplates**](EmailAPI.md#listprojectemailtemplates) | **GET** /api/projects/{projectId}/email/templates | List email templates (full catalog for the project)
[**patchProjectEmailSmtp**](EmailAPI.md#patchprojectemailsmtp) | **PATCH** /api/projects/{projectId}/email/smtp | Update project SMTP relay (BYO)
[**previewProjectEmailTemplate**](EmailAPI.md#previewprojectemailtemplate) | **POST** /api/projects/{projectId}/email/templates/{name}/preview | Render template preview (sanitized HTML, no send)
[**restoreDefaultProjectEmailTemplate**](EmailAPI.md#restoredefaultprojectemailtemplate) | **POST** /api/projects/{projectId}/email/templates/{name}/restore-default | Restore from platform global default or remove project override
[**testProjectEmailSmtp**](EmailAPI.md#testprojectemailsmtp) | **POST** /api/projects/{projectId}/email/smtp/test | Verify SMTP and send a test message
[**upsertProjectEmailTemplate**](EmailAPI.md#upsertprojectemailtemplate) | **PUT** /api/projects/{projectId}/email/templates/{name} | Upsert project email template (HTML sanitized; variables must cover {{placeholders}})
[**verifyProjectEmailSmtpDomain**](EmailAPI.md#verifyprojectemailsmtpdomain) | **POST** /api/projects/{projectId}/email/smtp/verify-domain | Check DNS (MX + SPF) for sending domain


# **enqueueProjectEmail**
```swift
    open class func enqueueProjectEmail(projectId: String, projectEmailSendRequest: ProjectEmailSendRequest, completion: @escaping (_ data: EnqueueProjectEmail202Response?, _ error: Error?) -> Void)
```

Enqueue project email (worker delivery)

Queues a transactional email for sending through the email worker and configured provider (platform or per-project SMTP). Provide either `template` (with `data`) or both `subject` and `html`. Returns **202** with `jobId` when accepted. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let projectEmailSendRequest = ProjectEmailSendRequest(template: "template_example", to: EmailRequest_to(), data: "TODO", subject: "subject_example", html: "html_example", idempotencyKey: "idempotencyKey_example", brandingScope: "brandingScope_example") // ProjectEmailSendRequest | 

// Enqueue project email (worker delivery)
EmailAPI.enqueueProjectEmail(projectId: projectId, projectEmailSendRequest: projectEmailSendRequest) { (response, error) in
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
 **projectEmailSendRequest** | [**ProjectEmailSendRequest**](ProjectEmailSendRequest.md) |  | 

### Return type

[**EnqueueProjectEmail202Response**](EnqueueProjectEmail202Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectEmailAnalytics**
```swift
    open class func getProjectEmailAnalytics(projectId: String, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: GetProjectEmailAnalytics200Response?, _ error: Error?) -> Void)
```

Email analytics for a project

Aggregated email log stats for the project. Optional `from` and `to` query params filter by date range (ISO 8601). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)

// Email analytics for a project
EmailAPI.getProjectEmailAnalytics(projectId: projectId, from: from, to: to) { (response, error) in
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
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 

### Return type

[**GetProjectEmailAnalytics200Response**](GetProjectEmailAnalytics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectEmailSmtp**
```swift
    open class func getProjectEmailSmtp(projectId: String, completion: @escaping (_ data: GetProjectEmailSmtp200Response?, _ error: Error?) -> Void)
```

Get project SMTP settings (masked)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get project SMTP settings (masked)
EmailAPI.getProjectEmailSmtp(projectId: projectId) { (response, error) in
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

[**GetProjectEmailSmtp200Response**](GetProjectEmailSmtp200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectEmailTemplate**
```swift
    open class func getProjectEmailTemplate(projectId: String, name: String, completion: @escaping (_ data: GetProjectEmailTemplate200Response?, _ error: Error?) -> Void)
```

Get one email template (effective content)

Returns the template body that would be used when sending: project override if present, else global default, else built-in fallback. **`isProjectOverride`** is true only when this project has a stored row; **`effectiveSource`** is `project`, `global`, or `builtin`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let name = "name_example" // String | 

// Get one email template (effective content)
EmailAPI.getProjectEmailTemplate(projectId: projectId, name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

[**GetProjectEmailTemplate200Response**](GetProjectEmailTemplate200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjectEmailTemplates**
```swift
    open class func listProjectEmailTemplates(projectId: String, completion: @escaping (_ data: ListProjectEmailTemplates200Response?, _ error: Error?) -> Void)
```

List email templates (full catalog for the project)

Returns every template name the worker can resolve for this project: **built-in** defaults, **global** platform rows (`project: null` in DB), and **project** overrides. Use **`isCustomized`** to see if this project has its own stored copy; **`effectiveSource`** shows which layer would be used at send time (`project` wins over `global` over `builtin`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List email templates (full catalog for the project)
EmailAPI.listProjectEmailTemplates(projectId: projectId) { (response, error) in
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

[**ListProjectEmailTemplates200Response**](ListProjectEmailTemplates200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchProjectEmailSmtp**
```swift
    open class func patchProjectEmailSmtp(projectId: String, projectSmtpPatchRequest: ProjectSmtpPatchRequest, completion: @escaping (_ data: GetProjectEmailSmtp200Response?, _ error: Error?) -> Void)
```

Update project SMTP relay (BYO)

Set `authPass` in the body to store an encrypted password (never returned on GET). Validates host/user when enabling. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let projectSmtpPatchRequest = ProjectSmtpPatchRequest(enabled: false, host: "host_example", port: 123, secure: false, authUser: "authUser_example", authPass: "authPass_example", fromName: "fromName_example", fromEmail: "fromEmail_example", domainVerifiedAt: Date()) // ProjectSmtpPatchRequest | 

// Update project SMTP relay (BYO)
EmailAPI.patchProjectEmailSmtp(projectId: projectId, projectSmtpPatchRequest: projectSmtpPatchRequest) { (response, error) in
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
 **projectSmtpPatchRequest** | [**ProjectSmtpPatchRequest**](ProjectSmtpPatchRequest.md) |  | 

### Return type

[**GetProjectEmailSmtp200Response**](GetProjectEmailSmtp200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **previewProjectEmailTemplate**
```swift
    open class func previewProjectEmailTemplate(projectId: String, name: String, previewProjectEmailTemplateRequest: PreviewProjectEmailTemplateRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Render template preview (sanitized HTML, no send)

Body **`sampleData`** is merged with layout defaults; keys should match `{{placeholders}}` in the template (see **Email** tag for the catalog). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let name = "name_example" // String | 
let previewProjectEmailTemplateRequest = previewProjectEmailTemplate_request(sampleData: "TODO") // PreviewProjectEmailTemplateRequest |  (optional)

// Render template preview (sanitized HTML, no send)
EmailAPI.previewProjectEmailTemplate(projectId: projectId, name: name, previewProjectEmailTemplateRequest: previewProjectEmailTemplateRequest) { (response, error) in
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
 **name** | **String** |  | 
 **previewProjectEmailTemplateRequest** | [**PreviewProjectEmailTemplateRequest**](PreviewProjectEmailTemplateRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreDefaultProjectEmailTemplate**
```swift
    open class func restoreDefaultProjectEmailTemplate(projectId: String, name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restore from platform global default or remove project override

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let name = "name_example" // String | 

// Restore from platform global default or remove project override
EmailAPI.restoreDefaultProjectEmailTemplate(projectId: projectId, name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testProjectEmailSmtp**
```swift
    open class func testProjectEmailSmtp(projectId: String, projectSmtpTestRequest: ProjectSmtpTestRequest, completion: @escaping (_ data: DeleteFunction200Response?, _ error: Error?) -> Void)
```

Verify SMTP and send a test message

Rate-limited. With `useSaved: true` (default), uses stored credentials; otherwise pass `host`, `authUser`, `authPass`, etc. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let projectSmtpTestRequest = ProjectSmtpTestRequest(to: "to_example", useSaved: false, host: "host_example", port: 123, secure: false, authUser: "authUser_example", authPass: "authPass_example", fromEmail: "fromEmail_example", fromName: "fromName_example") // ProjectSmtpTestRequest | 

// Verify SMTP and send a test message
EmailAPI.testProjectEmailSmtp(projectId: projectId, projectSmtpTestRequest: projectSmtpTestRequest) { (response, error) in
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
 **projectSmtpTestRequest** | [**ProjectSmtpTestRequest**](ProjectSmtpTestRequest.md) |  | 

### Return type

[**DeleteFunction200Response**](DeleteFunction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upsertProjectEmailTemplate**
```swift
    open class func upsertProjectEmailTemplate(projectId: String, name: String, upsertProjectEmailTemplateRequest: UpsertProjectEmailTemplateRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upsert project email template (HTML sanitized; variables must cover {{placeholders}})

Saves a **project override** for `name`. HTML is sanitized. **`variables`** must list every `{{token}}` used in `subject`, `htmlBody`, and `textBody` (see **Email** tag description for the full placeholder catalog). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let name = "name_example" // String | 
let upsertProjectEmailTemplateRequest = upsertProjectEmailTemplate_request(subject: "subject_example", htmlBody: "htmlBody_example", textBody: "textBody_example", variables: ["variables_example"]) // UpsertProjectEmailTemplateRequest | 

// Upsert project email template (HTML sanitized; variables must cover {{placeholders}})
EmailAPI.upsertProjectEmailTemplate(projectId: projectId, name: name, upsertProjectEmailTemplateRequest: upsertProjectEmailTemplateRequest) { (response, error) in
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
 **name** | **String** |  | 
 **upsertProjectEmailTemplateRequest** | [**UpsertProjectEmailTemplateRequest**](UpsertProjectEmailTemplateRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyProjectEmailSmtpDomain**
```swift
    open class func verifyProjectEmailSmtpDomain(projectId: String, verifyProjectEmailSmtpDomainRequest: VerifyProjectEmailSmtpDomainRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Check DNS (MX + SPF) for sending domain

Resolves the domain from `domain`, `fromEmail`, or saved `emailSmtp.fromEmail`. Returns whether MX and SPF TXT exist. With `persist: true` and checks passed, sets `emailSmtp.domainVerifiedAt`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let verifyProjectEmailSmtpDomainRequest = verifyProjectEmailSmtpDomain_request(domain: "domain_example", fromEmail: "fromEmail_example", persist: false) // VerifyProjectEmailSmtpDomainRequest |  (optional)

// Check DNS (MX + SPF) for sending domain
EmailAPI.verifyProjectEmailSmtpDomain(projectId: projectId, verifyProjectEmailSmtpDomainRequest: verifyProjectEmailSmtpDomainRequest) { (response, error) in
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
 **verifyProjectEmailSmtpDomainRequest** | [**VerifyProjectEmailSmtpDomainRequest**](VerifyProjectEmailSmtpDomainRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

