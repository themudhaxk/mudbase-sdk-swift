# MessagingAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessageHistory**](MessagingAPI.md#getmessagehistory) | **GET** /api/messaging/projects/{projectId}/messaging/history | Get message history
[**getMessageStats**](MessagingAPI.md#getmessagestats) | **GET** /api/messaging/projects/{projectId}/messaging/stats | Get message statistics
[**getProjectFcmConfig**](MessagingAPI.md#getprojectfcmconfig) | **GET** /api/messaging/projects/{projectId}/messaging/push-config | Get bring-your-own push credentials status (masked)
[**getProjectSmsByo**](MessagingAPI.md#getprojectsmsbyo) | **GET** /api/messaging/projects/{projectId}/messaging/sms-provider | Get BYO SMS provider configuration (masked)
[**getProjectVapidPublicKey**](MessagingAPI.md#getprojectvapidpublickey) | **GET** /api/messaging/projects/{projectId}/messaging/web-push/public-key | Get the Web Push public key (public)
[**getProjectWebPushConfig**](MessagingAPI.md#getprojectwebpushconfig) | **GET** /api/messaging/projects/{projectId}/messaging/web-push-config | Get native Web Push (VAPID) configuration
[**listDeviceTokens**](MessagingAPI.md#listdevicetokens) | **GET** /api/messaging/projects/{projectId}/messaging/devices | List registered device tokens
[**listWebPushSubscriptions**](MessagingAPI.md#listwebpushsubscriptions) | **GET** /api/messaging/projects/{projectId}/messaging/web-push/subscriptions | List registered Web Push subscriptions
[**patchProjectFcmConfig**](MessagingAPI.md#patchprojectfcmconfig) | **PATCH** /api/messaging/projects/{projectId}/messaging/push-config | Set or clear your own push service account (optional)
[**patchProjectSmsByo**](MessagingAPI.md#patchprojectsmsbyo) | **PATCH** /api/messaging/projects/{projectId}/messaging/sms-provider | Update BYO SMS provider credentials
[**patchProjectWebPushConfig**](MessagingAPI.md#patchprojectwebpushconfig) | **PATCH** /api/messaging/projects/{projectId}/messaging/web-push-config | Update native Web Push (VAPID) configuration
[**registerDeviceToken**](MessagingAPI.md#registerdevicetoken) | **POST** /api/messaging/projects/{projectId}/messaging/devices | Register a device push token
[**registerWebPushSubscription**](MessagingAPI.md#registerwebpushsubscription) | **POST** /api/messaging/projects/{projectId}/messaging/web-push/subscriptions | Register a browser Web Push subscription
[**removeWebPushSubscription**](MessagingAPI.md#removewebpushsubscription) | **DELETE** /api/messaging/projects/{projectId}/messaging/web-push/subscriptions | Unregister a Web Push subscription
[**sendEmail**](MessagingAPI.md#sendemail) | **POST** /api/messaging/projects/{projectId}/messaging/email | Send email
[**sendPushNotification**](MessagingAPI.md#sendpushnotification) | **POST** /api/messaging/projects/{projectId}/messaging/push | Send push notification
[**sendSMS**](MessagingAPI.md#sendsms) | **POST** /api/messaging/projects/{projectId}/messaging/sms | Send SMS
[**unregisterDeviceToken**](MessagingAPI.md#unregisterdevicetoken) | **DELETE** /api/messaging/projects/{projectId}/messaging/devices | Unregister a device push token


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

Get bring-your-own push credentials status (masked)

Returns whether this project has its own push provider credentials stored (encrypted). This is an optional, advanced override - push works out of the box with platform-managed credentials, so when no per-project credentials are stored, push is sent with the platform-managed credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get bring-your-own push credentials status (masked)
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

# **getProjectVapidPublicKey**
```swift
    open class func getProjectVapidPublicKey(projectId: String, completion: @escaping (_ data: WebPushPublicKeyResponse?, _ error: Error?) -> Void)
```

Get the Web Push public key (public)

Public read of the VAPID application-server public key a browser needs to subscribe with `pushManager.subscribe({ applicationServerKey })`. This is the one Web Push route that needs no authentication - the public key is designed to be exposed to browser clients. It returns only this project's own key.  When the project has not enabled native Web Push, `enabled` is `false` and `publicKey` is `null`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get the Web Push public key (public)
MessagingAPI.getProjectVapidPublicKey(projectId: projectId) { (response, error) in
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

[**WebPushPublicKeyResponse**](WebPushPublicKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectWebPushConfig**
```swift
    open class func getProjectWebPushConfig(projectId: String, completion: @escaping (_ data: WebPushConfigResponse?, _ error: Error?) -> Void)
```

Get native Web Push (VAPID) configuration

Read this project's native Web Push configuration. Native Web Push delivers browser push directly from Mudbase using the VAPID application-server key - no per-project push provider account is required. This returns whether native Web Push is enabled, whether a VAPID keypair has been provisioned, the public application-server key (when enabled), the RFC 8292 contact subject, and when the current keypair was generated. The private key is never returned.  Native Web Push is off until you enable it (`PATCH` this endpoint). It sits alongside the device-token push path - a project can use either or both.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get native Web Push (VAPID) configuration
MessagingAPI.getProjectWebPushConfig(projectId: projectId) { (response, error) in
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

[**WebPushConfigResponse**](WebPushConfigResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceTokens**
```swift
    open class func listDeviceTokens(projectId: String, completion: @escaping (_ data: DeviceListResponse?, _ error: Error?) -> Void)
```

List registered device tokens

List the device push tokens registered to a project, most-recently-seen first.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List registered device tokens
MessagingAPI.listDeviceTokens(projectId: projectId) { (response, error) in
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

[**DeviceListResponse**](DeviceListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebPushSubscriptions**
```swift
    open class func listWebPushSubscriptions(projectId: String, completion: @escaping (_ data: WebPushSubscriptionListResponse?, _ error: Error?) -> Void)
```

List registered Web Push subscriptions

List the browser Web Push subscriptions registered to a project, most-recently-seen first. The encryption keys are never returned - only the endpoint and metadata.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List registered Web Push subscriptions
MessagingAPI.listWebPushSubscriptions(projectId: projectId) { (response, error) in
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

[**WebPushSubscriptionListResponse**](WebPushSubscriptionListResponse.md)

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

Set or clear your own push service account (optional)

Optional advanced step - push works out of the box with platform-managed credentials, so most projects never call this. Use it only to deliver push from your own push provider account. Body `serviceAccountJson` is the Firebase service account JSON you download from your own Firebase project (stored encrypted). Send `clear: true` to remove it and go back to the platform-managed credentials. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let patchProjectFcmConfigRequest = patchProjectFcmConfig_request(serviceAccountJson: 123, clear: false) // PatchProjectFcmConfigRequest | 

// Set or clear your own push service account (optional)
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

# **patchProjectWebPushConfig**
```swift
    open class func patchProjectWebPushConfig(projectId: String, webPushConfigPatchRequest: WebPushConfigPatchRequest, completion: @escaping (_ data: WebPushConfigResponse?, _ error: Error?) -> Void)
```

Update native Web Push (VAPID) configuration

Enable or disable native Web Push, rotate the VAPID keypair, or set the contact subject.  - `enabled: true` turns native Web Push on and provisions a VAPID keypair the first time, so the public-key read path has a key to hand clients immediately. `enabled: false` turns it off. - `rotateKeys: true` regenerates the keypair. This invalidates existing browser subscriptions - clients must re-fetch the new public key and re-subscribe. - `subject` sets the RFC 8292 contact URI - a `mailto:` address or an `https` URL.  Returns the same shape as `GET`. The private key is never returned.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let webPushConfigPatchRequest = WebPushConfigPatchRequest(enabled: false, rotateKeys: false, subject: "subject_example") // WebPushConfigPatchRequest | 

// Update native Web Push (VAPID) configuration
MessagingAPI.patchProjectWebPushConfig(projectId: projectId, webPushConfigPatchRequest: webPushConfigPatchRequest) { (response, error) in
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
 **webPushConfigPatchRequest** | [**WebPushConfigPatchRequest**](WebPushConfigPatchRequest.md) |  | 

### Return type

[**WebPushConfigResponse**](WebPushConfigResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerDeviceToken**
```swift
    open class func registerDeviceToken(projectId: String, deviceRegisterRequest: DeviceRegisterRequest, completion: @escaping (_ data: DeviceRegisteredResponse?, _ error: Error?) -> Void)
```

Register a device push token

Register a device's push token with a project so it can receive push notifications. A client registers its token here first; the send endpoint (`/messaging/push`) only delivers to tokens that are registered to the project, so a caller cannot push to arbitrary or other-tenant tokens.  Registration is idempotent - re-registering a token that already exists just refreshes it (updates `platform` and `lastSeenAt`) instead of creating a duplicate. Each project has a cap on the number of registered tokens; when the cap is reached, the least-recently-seen tokens are evicted to make room, so a register-on-launch call never fails.  Push works out of the box with platform-managed credentials - no provider setup is required to start registering tokens and sending push.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let deviceRegisterRequest = DeviceRegisterRequest(token: "token_example", platform: "platform_example") // DeviceRegisterRequest | 

// Register a device push token
MessagingAPI.registerDeviceToken(projectId: projectId, deviceRegisterRequest: deviceRegisterRequest) { (response, error) in
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
 **deviceRegisterRequest** | [**DeviceRegisterRequest**](DeviceRegisterRequest.md) |  | 

### Return type

[**DeviceRegisteredResponse**](DeviceRegisteredResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerWebPushSubscription**
```swift
    open class func registerWebPushSubscription(projectId: String, webPushSubscribeRequest: WebPushSubscribeRequest, completion: @escaping (_ data: WebPushSubscribeResponse?, _ error: Error?) -> Void)
```

Register a browser Web Push subscription

Register a browser `PushSubscription` (the `endpoint` plus the `p256dh` / `auth` keys returned by `pushManager.subscribe()`) so it becomes eligible to receive native Web Push. The send endpoint (`/messaging/push`) only delivers to subscriptions registered to the project, so a caller cannot push to arbitrary or other-tenant endpoints.  Registration is idempotent - re-registering the same endpoint updates the existing row (keys rotate, `lastSeenAt` bumps) instead of creating a duplicate. Each project has a cap on the number of registered subscriptions; when the cap is reached, the least-recently-seen subscriptions are evicted to make room. Optionally associate the subscription with a `userId` (your end-user id, for targeted sends) and a `deviceId`.  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let webPushSubscribeRequest = WebPushSubscribeRequest(subscription: WebPushSubscription(endpoint: "endpoint_example", keys: WebPushSubscription_keys(p256dh: "p256dh_example", auth: "auth_example")), userId: "userId_example", deviceId: "deviceId_example") // WebPushSubscribeRequest | 

// Register a browser Web Push subscription
MessagingAPI.registerWebPushSubscription(projectId: projectId, webPushSubscribeRequest: webPushSubscribeRequest) { (response, error) in
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
 **webPushSubscribeRequest** | [**WebPushSubscribeRequest**](WebPushSubscribeRequest.md) |  | 

### Return type

[**WebPushSubscribeResponse**](WebPushSubscribeResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWebPushSubscription**
```swift
    open class func removeWebPushSubscription(projectId: String, webPushUnsubscribeRequest: WebPushUnsubscribeRequest, completion: @escaping (_ data: WebPushUnsubscribeResponse?, _ error: Error?) -> Void)
```

Unregister a Web Push subscription

Remove a browser Web Push subscription - call this on unsubscribe or logout, so the send endpoint stops delivering to it. The subscription is identified by its `endpoint`, sent in the request body. Removing an endpoint that is not registered is a no-op and still returns 200 (with `removed: false`).  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let webPushUnsubscribeRequest = WebPushUnsubscribeRequest(endpoint: "endpoint_example") // WebPushUnsubscribeRequest | 

// Unregister a Web Push subscription
MessagingAPI.removeWebPushSubscription(projectId: projectId, webPushUnsubscribeRequest: webPushUnsubscribeRequest) { (response, error) in
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
 **webPushUnsubscribeRequest** | [**WebPushUnsubscribeRequest**](WebPushUnsubscribeRequest.md) |  | 

### Return type

[**WebPushUnsubscribeResponse**](WebPushUnsubscribeResponse.md)

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
    open class func sendPushNotification(projectId: String, pushNotificationRequest: PushNotificationRequest, completion: @escaping (_ data: PushSentResponse?, _ error: Error?) -> Void)
```

Send push notification

Send a push notification to one or more devices. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let pushNotificationRequest = PushNotificationRequest(tokens: ["tokens_example"], endpoints: ["endpoints_example"], userIds: ["userIds_example"], webPushBroadcast: false, title: "title_example", body: "body_example", data: 123, imageUrl: "imageUrl_example") // PushNotificationRequest | 

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

[**PushSentResponse**](PushSentResponse.md)

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

Send an SMS message to one or more phone numbers. Uses project BYO SMS when configured; otherwise the platform SMS provider if set. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

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

# **unregisterDeviceToken**
```swift
    open class func unregisterDeviceToken(projectId: String, deviceUnregisterRequest: DeviceUnregisterRequest, completion: @escaping (_ data: DeviceUnregisteredResponse?, _ error: Error?) -> Void)
```

Unregister a device push token

Remove a device push token from a project - call this on logout or when a token rotates, so the send endpoint stops delivering to it.  The token to remove is sent in the request body. Removing a token that is not registered is a no-op and still returns 200 (with `removed: false`).  Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let deviceUnregisterRequest = DeviceUnregisterRequest(token: "token_example") // DeviceUnregisterRequest | 

// Unregister a device push token
MessagingAPI.unregisterDeviceToken(projectId: projectId, deviceUnregisterRequest: deviceUnregisterRequest) { (response, error) in
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
 **deviceUnregisterRequest** | [**DeviceUnregisterRequest**](DeviceUnregisterRequest.md) |  | 

### Return type

[**DeviceUnregisteredResponse**](DeviceUnregisteredResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

