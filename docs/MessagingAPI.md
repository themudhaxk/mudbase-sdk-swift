# MessagingAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messagingGetHistory**](MessagingAPI.md#messaginggethistory) | **GET** /api/messaging/projects/{projectId}/messaging/history | Get message history
[**messagingGetStats**](MessagingAPI.md#messaginggetstats) | **GET** /api/messaging/projects/{projectId}/messaging/stats | Get message statistics
[**messagingSendEmail**](MessagingAPI.md#messagingsendemail) | **POST** /api/messaging/projects/{projectId}/messaging/email | Send transactional email
[**messagingSendPush**](MessagingAPI.md#messagingsendpush) | **POST** /api/messaging/projects/{projectId}/messaging/push | Send push notification
[**messagingSendSms**](MessagingAPI.md#messagingsendsms) | **POST** /api/messaging/projects/{projectId}/messaging/sms | Send SMS to one or more recipients (E.164 format)


# **messagingGetHistory**
```swift
    open class func messagingGetHistory(projectId: String, type: ModelType_messagingGetHistory? = nil, page: Int? = nil, limit: Int? = nil, status: Status_messagingGetHistory? = nil, completion: @escaping (_ data: MessageHistoryResponse?, _ error: Error?) -> Void)
```

Get message history

Get message history (push, email, SMS) with filtering and pagination. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the messaging project.
let type = "type_example" // String | Filter by message type (push, email, or sms). (optional)
let page = 987 // Int | Page number for pagination (1-based). (optional) (default to 1)
let limit = 987 // Int | Maximum number of messages per page. (optional) (default to 20)
let status = "status_example" // String | Filter by delivery status. (optional)

// Get message history
MessagingAPI.messagingGetHistory(projectId: projectId, type: type, page: page, limit: limit, status: status) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the messaging project. | 
 **type** | **String** | Filter by message type (push, email, or sms). | [optional] 
 **page** | **Int** | Page number for pagination (1-based). | [optional] [default to 1]
 **limit** | **Int** | Maximum number of messages per page. | [optional] [default to 20]
 **status** | **String** | Filter by delivery status. | [optional] 

### Return type

[**MessageHistoryResponse**](MessageHistoryResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingGetStats**
```swift
    open class func messagingGetStats(projectId: String, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: MessageStatsResponse?, _ error: Error?) -> Void)
```

Get message statistics

Get messaging statistics including total messages, success rates, and breakdown by type (push, email, SMS). Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the messaging project.
let startDate = Date() // Date | Start of the date range for statistics (ISO 8601). (optional)
let endDate = Date() // Date | End of the date range for statistics (ISO 8601). (optional)

// Get message statistics
MessagingAPI.messagingGetStats(projectId: projectId, startDate: startDate, endDate: endDate) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the messaging project. | 
 **startDate** | **Date** | Start of the date range for statistics (ISO 8601). | [optional] 
 **endDate** | **Date** | End of the date range for statistics (ISO 8601). | [optional] 

### Return type

[**MessageStatsResponse**](MessageStatsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingSendEmail**
```swift
    open class func messagingSendEmail(projectId: String, emailRequest: EmailRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send transactional email

Send a transactional email to one or more recipients. Supports HTML and plain text. Use for verification emails, password resets, notifications, and marketing. Attachments and templates can be configured per project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the messaging project.
let emailRequest = EmailRequest(to: EmailRequest_to(), subject: "subject_example", html: "html_example", text: "text_example", templateId: "templateId_example", templateData: 123) // EmailRequest | Recipient(s), subject, HTML and/or plain text body; optional reply-to and attachments.

// Send transactional email
MessagingAPI.messagingSendEmail(projectId: projectId, emailRequest: emailRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the messaging project. | 
 **emailRequest** | [**EmailRequest**](EmailRequest.md) | Recipient(s), subject, HTML and/or plain text body; optional reply-to and attachments. | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingSendPush**
```swift
    open class func messagingSendPush(projectId: String, pushNotificationRequest: PushNotificationRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send push notification

Send a push notification to one or more devices. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the messaging project.
let pushNotificationRequest = PushNotificationRequest(tokens: ["tokens_example"], title: "title_example", body: "body_example", data: 123, imageUrl: "imageUrl_example") // PushNotificationRequest | Device tokens, notification title/body, optional data payload and image URL.

// Send push notification
MessagingAPI.messagingSendPush(projectId: projectId, pushNotificationRequest: pushNotificationRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the messaging project. | 
 **pushNotificationRequest** | [**PushNotificationRequest**](PushNotificationRequest.md) | Device tokens, notification title/body, optional data payload and image URL. | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messagingSendSms**
```swift
    open class func messagingSendSms(projectId: String, sMSRequest: SMSRequest, completion: @escaping (_ data: MessageSentResponse?, _ error: Error?) -> Void)
```

Send SMS to one or more recipients (E.164 format)

Send an SMS message to one or more phone numbers in E.164 format. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the messaging project.
let sMSRequest = SMSRequest(to: "to_example", message: "message_example", from: "from_example") // SMSRequest | Recipient phone number(s), message body, and optional sender ID.

// Send SMS to one or more recipients (E.164 format)
MessagingAPI.messagingSendSms(projectId: projectId, sMSRequest: sMSRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the messaging project. | 
 **sMSRequest** | [**SMSRequest**](SMSRequest.md) | Recipient phone number(s), message body, and optional sender ID. | 

### Return type

[**MessageSentResponse**](MessageSentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

