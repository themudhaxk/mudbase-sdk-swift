# ComplianceAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**complianceLogSecurityEvent**](ComplianceAPI.md#compliancelogsecurityevent) | **POST** /api/compliance/security-event | Log security event


# **complianceLogSecurityEvent**
```swift
    open class func complianceLogSecurityEvent(complianceLogSecurityEventRequest: ComplianceLogSecurityEventRequest, completion: @escaping (_ data: ComplianceLogSecurityEvent200Response?, _ error: Error?) -> Void)
```

Log security event

Log a security event for compliance and audit (e.g. SOC 2, GDPR). Event type and severity are required; optional details (userId, resource, ipAddress, etc.) for forensics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let complianceLogSecurityEventRequest = compliance_logSecurityEvent_request(eventType: "eventType_example", severity: "severity_example", details: compliance_logSecurityEvent_request_details(userId: "userId_example", resource: "resource_example", ipAddress: "ipAddress_example", userAgent: "userAgent_example", action: "action_example", reason: "reason_example")) // ComplianceLogSecurityEventRequest | Event type (e.g. unauthorized_access_attempt, brute_force_attempt), severity (low–critical), and optional details object for context.

// Log security event
ComplianceAPI.complianceLogSecurityEvent(complianceLogSecurityEventRequest: complianceLogSecurityEventRequest) { (response, error) in
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
 **complianceLogSecurityEventRequest** | [**ComplianceLogSecurityEventRequest**](ComplianceLogSecurityEventRequest.md) | Event type (e.g. unauthorized_access_attempt, brute_force_attempt), severity (low–critical), and optional details object for context. | 

### Return type

[**ComplianceLogSecurityEvent200Response**](ComplianceLogSecurityEvent200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

