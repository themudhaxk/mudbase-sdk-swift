# ComplianceAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiGdprErasePost**](ComplianceAPI.md#apigdprerasepost) | **POST** /api/gdpr/erase | Erase my personal data (GDPR Art. 17)
[**apiGdprExportGet**](ComplianceAPI.md#apigdprexportget) | **GET** /api/gdpr/export | Export my personal data (GDPR Art. 15)
[**generateAccessReview**](ComplianceAPI.md#generateaccessreview) | **POST** /api/compliance/access-review | Generate access review report (SOC 2)
[**generateDataProcessingRecord**](ComplianceAPI.md#generatedataprocessingrecord) | **POST** /api/compliance/data-processing-record | Generate data processing record (GDPR Article 30)
[**getComplianceSummary**](ComplianceAPI.md#getcompliancesummary) | **GET** /api/compliance/summary | Get compliance summary
[**logSecurityEvent**](ComplianceAPI.md#logsecurityevent) | **POST** /api/compliance/security-event | Log security event


# **apiGdprErasePost**
```swift
    open class func apiGdprErasePost(apiGdprErasePostRequest: ApiGdprErasePostRequest, completion: @escaping (_ data: ApplyRoleFeaturePreset200Response?, _ error: Error?) -> Void)
```

Erase my personal data (GDPR Art. 17)

Anonymizes the subject's PII, revokes sessions/tokens, and anonymizes (never hard-deletes) financial/legal-retention records. Idempotent and self-scoped.  Requires re-proving your current password (skipped only for OAuth-only accounts with no password set) and, if 2FA is enabled, a fresh TOTP code - the same step-up re-authentication already required by the less-destructive `PATCH /api/users/password` and `POST /api/users/2fa/disable`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let apiGdprErasePostRequest = _api_gdpr_erase_post_request(confirm: "confirm_example", currentPassword: "currentPassword_example", totpToken: "totpToken_example") // ApiGdprErasePostRequest | 

// Erase my personal data (GDPR Art. 17)
ComplianceAPI.apiGdprErasePost(apiGdprErasePostRequest: apiGdprErasePostRequest) { (response, error) in
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
 **apiGdprErasePostRequest** | [**ApiGdprErasePostRequest**](ApiGdprErasePostRequest.md) |  | 

### Return type

[**ApplyRoleFeaturePreset200Response**](ApplyRoleFeaturePreset200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiGdprExportGet**
```swift
    open class func apiGdprExportGet(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Export my personal data (GDPR Art. 15)

Returns the authenticated subject's personal data as a downloadable JSON attachment. Self-scoped — a caller can only export their own data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Export my personal data (GDPR Art. 15)
ComplianceAPI.apiGdprExportGet() { (response, error) in
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

**AnyCodable**

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateAccessReview**
```swift
    open class func generateAccessReview(generateAccessReviewRequest: GenerateAccessReviewRequest, completion: @escaping (_ data: GenerateAccessReview200Response?, _ error: Error?) -> Void)
```

Generate access review report (SOC 2)

Generate access review report for compliance audits (SOC 2, ISO 27001, etc.). Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let generateAccessReviewRequest = generateAccessReview_request(orgId: "orgId_example", reviewPeriod: generateAccessReview_request_reviewPeriod(start: Date(), end: Date())) // GenerateAccessReviewRequest | 

// Generate access review report (SOC 2)
ComplianceAPI.generateAccessReview(generateAccessReviewRequest: generateAccessReviewRequest) { (response, error) in
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
 **generateAccessReviewRequest** | [**GenerateAccessReviewRequest**](GenerateAccessReviewRequest.md) |  | 

### Return type

[**GenerateAccessReview200Response**](GenerateAccessReview200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateDataProcessingRecord**
```swift
    open class func generateDataProcessingRecord(generateDataProcessingRecordRequest: GenerateDataProcessingRecordRequest, completion: @escaping (_ data: GenerateDataProcessingRecord200Response?, _ error: Error?) -> Void)
```

Generate data processing record (GDPR Article 30)

Generate GDPR Article 30 compliant data processing record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let generateDataProcessingRecordRequest = generateDataProcessingRecord_request(orgId: "orgId_example", recordDate: Date()) // GenerateDataProcessingRecordRequest | 

// Generate data processing record (GDPR Article 30)
ComplianceAPI.generateDataProcessingRecord(generateDataProcessingRecordRequest: generateDataProcessingRecordRequest) { (response, error) in
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
 **generateDataProcessingRecordRequest** | [**GenerateDataProcessingRecordRequest**](GenerateDataProcessingRecordRequest.md) |  | 

### Return type

[**GenerateDataProcessingRecord200Response**](GenerateDataProcessingRecord200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComplianceSummary**
```swift
    open class func getComplianceSummary(completion: @escaping (_ data: GetComplianceSummary200Response?, _ error: Error?) -> Void)
```

Get compliance summary

Get compliance dashboard data (GDPR, SOC 2, security status). Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get compliance summary
ComplianceAPI.getComplianceSummary() { (response, error) in
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

[**GetComplianceSummary200Response**](GetComplianceSummary200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logSecurityEvent**
```swift
    open class func logSecurityEvent(logSecurityEventRequest: LogSecurityEventRequest, completion: @escaping (_ data: LogSecurityEvent200Response?, _ error: Error?) -> Void)
```

Log security event

Log a security event for compliance and audit purposes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let logSecurityEventRequest = logSecurityEvent_request(eventType: "eventType_example", severity: "severity_example", details: logSecurityEvent_request_details(userId: "userId_example", resource: "resource_example", ipAddress: "ipAddress_example", userAgent: "userAgent_example", action: "action_example", reason: "reason_example")) // LogSecurityEventRequest | 

// Log security event
ComplianceAPI.logSecurityEvent(logSecurityEventRequest: logSecurityEventRequest) { (response, error) in
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
 **logSecurityEventRequest** | [**LogSecurityEventRequest**](LogSecurityEventRequest.md) |  | 

### Return type

[**LogSecurityEvent200Response**](LogSecurityEvent200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

