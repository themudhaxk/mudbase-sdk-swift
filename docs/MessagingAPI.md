# MessagingAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessageHistory**](MessagingAPI.md#getmessagehistory) | **GET** /api/messaging/projects/{projectId}/messaging/history | Get message history
[**getMessageStats**](MessagingAPI.md#getmessagestats) | **GET** /api/messaging/projects/{projectId}/messaging/stats | Get message statistics
[**getProjectFcmConfig**](MessagingAPI.md#getprojectfcmconfig) | **GET** /api/messaging/projects/{projectId}/messaging/push-config | Get BYO FCM configuration (masked)
[**getProjectSmsByo**](MessagingAPI.md#getprojectsmsbyo) | **GET** /api/messaging/projects/{projectId}/messaging/sms-provider | Get BYO SMS provider configuration (masked)
[**patchProjectFcmConfig**](MessagingAPI.md#patchprojectfcmconfig) | **PATCH** /api/messaging/projects/{projectId}/messaging/push-config | Set or clear per-project FCM service account
[**patchProjectSmsByo**](MessagingAPI.md#patchprojectsmsbyo) | **PATCH** /api/messaging/projects/{projectId}/messaging/sms-provider | Update BYO SMS provider credentials
[**sendEmail**](MessagingAPI.md#sendemail) | **POST** /api/messaging/projects/{projectId}/messaging/email | Send email
[**sendPushNotification**](MessagingAPI.md#sendpushnotification) | **POST** /api/messaging/projects/{projectId}/messaging/push | Send push notification
[**sendSMS**](MessagingAPI.md#sendsms) | **POST** /api/messaging/projects/{projectId}/messaging/sms | Send SMS


# **getMessageHistory**
```swift
    open class func getMessageHistory(projectId: String, type: ModelType_getMessageHistory? = nil, page: Int? = nil, limit: Int? = nil, status: Status_getMessageHistory? = nil, completion: @escaping (_ data: MessageHistoryResponse?, _ error: Error?) -> Void)
```

Get message history

Get message history (push, email, SMS) with filtering and pagination. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let type = "type_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let status = "status_example" // String |  (optional)

// Get message history
MessagingAPI.getMessageHistory(projectId: projectId, type: type, page: page, limit: limit, status: status) { (response, error) in
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
 **type** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **status** | **String** |  | [optional] 

### Return type

[**MessageHistoryResponse**](MessageHistoryResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageStats**
```swift
    open class func getMessageStats(projectId: String, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: MessageStatsResponse?, _ error: Error?) -> Void)
```

Get message statistics

Get messaging statistics including total messages, success rates, and breakdown by type (push, email, SMS). Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)

// Get message statistics
MessagingAPI.getMessageStats(projectId: projectId, startDate: startDate, endDate: endDate) { (response, error) in
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
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 

### Return type

[**MessageStatsResponse**](MessageStatsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectFcmConfig**
```swift
    open class func getProjectFcmConfig(projectId: String, completion: @escaping (_ data: GetProjectFcmConfig200Response?, _ error: Error?) -> Void)
```

Get BYO FCM configuration (masked)

Returns whether a per-project Firebase service account JSON is stored (encrypted). Falls back to platform `FCM_SERVICE_ACCOUNT_JSON` when unset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get BYO FCM configuration (masked)
MessagingAPI.getProjectFcmConfig(projectId: projectId) { (response, error) in
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

[**GetProjectFcmConfig200Response**](GetProjectFcmConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectSmsByo**
```swift
    open class func getProjectSmsByo(projectId: String, completion: @escaping (_ data: GetProjectSmsByo200Response?, _ error: Error?) -> Void)
```

Get BYO SMS provider configuration (masked)

Returns enabled flag, provider kind, default sender, and whether credentials are stored. Secrets are never returned. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get BYO SMS provider configuration (masked)
MessagingAPI.getProjectSmsByo(projectId: projectId) { (response, error) in
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

[**GetProjectSmsByo200Response**](GetProjectSmsByo200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchProjectFcmConfig**
```swift
    open class func patchProjectFcmConfig(projectId: String, patchProjectFcmConfigRequest: PatchProjectFcmConfigRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set or clear per-project FCM service account

Body `serviceAccountJson` is the Firebase service account object (stored encrypted). Send `clear: true` to remove and use platform FCM only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let patchProjectFcmConfigRequest = patchProjectFcmConfig_request(serviceAccountJson: 123, clear: false) // PatchProjectFcmConfigRequest | 

// Set or clear per-project FCM service account
MessagingAPI.patchProjectFcmConfig(projectId: projectId, patchProjectFcmConfigRequest: patchProjectFcmConfigRequest) { (response, error) in
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
 **patchProjectFcmConfigRequest** | [**PatchProjectFcmConfigRequest**](PatchProjectFcmConfigRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchProjectSmsByo**
```swift
    open class func patchProjectSmsByo(projectId: String, projectSmsByoPatchRequest: ProjectSmsByoPatchRequest, completion: @escaping (_ data: GetProjectSmsByo200Response?, _ error: Error?) -> Void)
```

Update BYO SMS provider credentials

Body `config` is provider-specific JSON stored encrypted per organization: - **twilio** — `accountSid`, `authToken` (required). Optional `from` sender override used if the send request does not specify `from` and `defaultFrom` is empty. - **termii** — `apiKey` (required). Optional `from` sender name (e.g. brand label). - **africastalking** — `username`, `apiKey` (both required). Optional `from` shortcode or sender ID. On enable, the API validates credentials with a lightweight ping (no SMS sent). See request body **Examples** for sample payloads. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let projectSmsByoPatchRequest = ProjectSmsByoPatchRequest(enabled: false, provider: "provider_example", defaultFrom: "defaultFrom_example", config: "TODO") // ProjectSmsByoPatchRequest | 

// Update BYO SMS provider credentials
MessagingAPI.patchProjectSmsByo(projectId: projectId, projectSmsByoPatchRequest: projectSmsByoPatchRequest) { (response, error) in
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
 **projectSmsByoPatchRequest** | [**ProjectSmsByoPatchRequest**](ProjectSmsByoPatchRequest.md) |  | 

### Return type

[**GetProjectSmsByo200Response**](GetProjectSmsByo200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
```swift
    open class func sendEmail(projectId: String, emailRequest: EmailRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send email

Send an email message to one or more recipients. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let emailRequest = EmailRequest(to: EmailRequest_to(), subject: "subject_example", html: "html_example", text: "text_example", templateId: "templateId_example", templateData: 123) // EmailRequest | 

// Send email
MessagingAPI.sendEmail(projectId: projectId, emailRequest: emailRequest) { (response, error) in
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
 **emailRequest** | [**EmailRequest**](EmailRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPushNotification**
```swift
    open class func sendPushNotification(projectId: String, pushNotificationRequest: PushNotificationRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send push notification

Send a push notification to one or more devices. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let pushNotificationRequest = PushNotificationRequest(tokens: ["tokens_example"], title: "title_example", body: "body_example", data: 123, imageUrl: "imageUrl_example") // PushNotificationRequest | 

// Send push notification
MessagingAPI.sendPushNotification(projectId: projectId, pushNotificationRequest: pushNotificationRequest) { (response, error) in
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
 **pushNotificationRequest** | [**PushNotificationRequest**](PushNotificationRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendSMS**
```swift
    open class func sendSMS(projectId: String, sMSRequest: SMSRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send SMS

Send an SMS message to one or more phone numbers. Uses project BYO SMS when configured; otherwise platform Twilio env if set. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let sMSRequest = SMSRequest(to: "to_example", message: "message_example", from: "from_example") // SMSRequest | 

// Send SMS
MessagingAPI.sendSMS(projectId: projectId, sMSRequest: sMSRequest) { (response, error) in
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
 **sMSRequest** | [**SMSRequest**](SMSRequest.md) |  | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

