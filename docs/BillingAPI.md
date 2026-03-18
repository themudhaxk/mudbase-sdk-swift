# BillingAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingCheckFeatureAccess**](BillingAPI.md#billingcheckfeatureaccess) | **GET** /api/billing/public/projects/{projectId}/feature-access | Check feature access (public)
[**billingCheckSubscription**](BillingAPI.md#billingchecksubscription) | **GET** /api/billing/public/projects/{projectId}/subscription | Check subscription status (public)
[**billingCreateCheckoutSession**](BillingAPI.md#billingcreatecheckoutsession) | **POST** /api/billing/public/projects/{projectId}/checkout | Create checkout session (Flutterwave or crypto)
[**billingGetCheckoutPayment**](BillingAPI.md#billinggetcheckoutpayment) | **GET** /api/billing/public/projects/{projectId}/checkout/{paymentId} | Get checkout payment details
[**billingGetPublicPlans**](BillingAPI.md#billinggetpublicplans) | **GET** /api/billing/public/projects/{projectId}/plans | Get public plans (no auth required)
[**billingHandleCryptoWebhook**](BillingAPI.md#billinghandlecryptowebhook) | **POST** /api/billing/webhooks/crypto | Crypto payment processor webhook
[**billingHandleFlutterwaveWebhook**](BillingAPI.md#billinghandleflutterwavewebhook) | **POST** /api/billing/webhooks/flutterwave | Flutterwave webhook
[**billingInitializePayment**](BillingAPI.md#billinginitializepayment) | **POST** /api/projects/{projectId}/payment-processing/initialize-payment | Initialize fiat payment (app-scoped)
[**billingRecordUsage**](BillingAPI.md#billingrecordusage) | **POST** /api/billing/public/projects/{projectId}/usage | Record usage (public)
[**billingVerifyPayment**](BillingAPI.md#billingverifypayment) | **POST** /api/billing/public/projects/{projectId}/verify-payment | Verify payment and create subscription


# **billingCheckFeatureAccess**
```swift
    open class func billingCheckFeatureAccess(projectId: String, email: String, feature: String, completion: @escaping (_ data: BillingCheckFeatureAccess200Response?, _ error: Error?) -> Void)
```

Check feature access (public)

Check whether a customer has access to a feature (by plan or entitlement). Public; no auth required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let email = "email_example" // String | Customer email
let feature = "feature_example" // String | Feature slug to check access for

// Check feature access (public)
BillingAPI.billingCheckFeatureAccess(projectId: projectId, email: email, feature: feature) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **email** | **String** | Customer email | 
 **feature** | **String** | Feature slug to check access for | 

### Return type

[**BillingCheckFeatureAccess200Response**](BillingCheckFeatureAccess200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingCheckSubscription**
```swift
    open class func billingCheckSubscription(projectId: String, email: String, completion: @escaping (_ data: BillingCheckSubscription200Response?, _ error: Error?) -> Void)
```

Check subscription status (public)

Check whether a customer (by email) has an active subscription for the project. Public; no auth required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let email = "email_example" // String | Customer email to check subscription for

// Check subscription status (public)
BillingAPI.billingCheckSubscription(projectId: projectId, email: email) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **email** | **String** | Customer email to check subscription for | 

### Return type

[**BillingCheckSubscription200Response**](BillingCheckSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingCreateCheckoutSession**
```swift
    open class func billingCreateCheckoutSession(projectId: String, billingCreateCheckoutSessionRequest: BillingCreateCheckoutSessionRequest, completion: @escaping (_ data: BillingCreateCheckoutSession200Response?, _ error: Error?) -> Void)
```

Create checkout session (Flutterwave or crypto)

Creates a checkout session for subscription billing. When Flutterwave is configured (platform), returns authorizationUrl and accessCode for redirect. When using crypto payment processor, returns checkoutUrl, paymentOptions (multi-chain USDC/USDT/BTC Lightning), and reference. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let billingCreateCheckoutSessionRequest = billing_createCheckoutSession_request(planId: "planId_example", billingCycle: "billingCycle_example", customerInfo: billing_createCheckoutSession_request_customerInfo(email: "email_example", name: "name_example"), successUrl: "successUrl_example", cancelUrl: "cancelUrl_example") // BillingCreateCheckoutSessionRequest | Plan to subscribe to, billing cycle, customer email/name, and optional success/cancel redirect URLs.

// Create checkout session (Flutterwave or crypto)
BillingAPI.billingCreateCheckoutSession(projectId: projectId, billingCreateCheckoutSessionRequest: billingCreateCheckoutSessionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **billingCreateCheckoutSessionRequest** | [**BillingCreateCheckoutSessionRequest**](BillingCreateCheckoutSessionRequest.md) | Plan to subscribe to, billing cycle, customer email/name, and optional success/cancel redirect URLs. | 

### Return type

[**BillingCreateCheckoutSession200Response**](BillingCreateCheckoutSession200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetCheckoutPayment**
```swift
    open class func billingGetCheckoutPayment(projectId: String, paymentId: String, completion: @escaping (_ data: BillingGetCheckoutPayment200Response?, _ error: Error?) -> Void)
```

Get checkout payment details

Returns payment intent/checkout status (for refresh or deep link). No auth required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let paymentId = "paymentId_example" // String | Payment ID or reference from checkout session

// Get checkout payment details
BillingAPI.billingGetCheckoutPayment(projectId: projectId, paymentId: paymentId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **paymentId** | **String** | Payment ID or reference from checkout session | 

### Return type

[**BillingGetCheckoutPayment200Response**](BillingGetCheckoutPayment200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetPublicPlans**
```swift
    open class func billingGetPublicPlans(projectId: String, completion: @escaping (_ data: BillingGetPublicPlans200Response?, _ error: Error?) -> Void)
```

Get public plans (no auth required)

Returns subscription plans available for the project. Public; no authentication required. Use for pricing pages and checkout flow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) to list plans for.

// Get public plans (no auth required)
BillingAPI.billingGetPublicPlans(projectId: projectId) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) to list plans for. | 

### Return type

[**BillingGetPublicPlans200Response**](BillingGetPublicPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingHandleCryptoWebhook**
```swift
    open class func billingHandleCryptoWebhook(billingHandleCryptoWebhookRequest: BillingHandleCryptoWebhookRequest, completion: @escaping (_ data: BillingHandleCryptoWebhook200Response?, _ error: Error?) -> Void)
```

Crypto payment processor webhook

Receives crypto payment events (payment.completed, etc.) for platform billing. No auth; verified by provider signature.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let billingHandleCryptoWebhookRequest = billing_handleCryptoWebhook_request(event: "event_example", data: billing_handleCryptoWebhook_request_data(paymentId: "paymentId_example", reference: "reference_example", amount: 123, currency: "currency_example", network: "network_example", status: "status_example", metadata: 123)) // BillingHandleCryptoWebhookRequest | Crypto payment webhook payload (event type and data with paymentId, reference, amount, currency, network, status, metadata).

// Crypto payment processor webhook
BillingAPI.billingHandleCryptoWebhook(billingHandleCryptoWebhookRequest: billingHandleCryptoWebhookRequest) { (response, error) in
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
 **billingHandleCryptoWebhookRequest** | [**BillingHandleCryptoWebhookRequest**](BillingHandleCryptoWebhookRequest.md) | Crypto payment webhook payload (event type and data with paymentId, reference, amount, currency, network, status, metadata). | 

### Return type

[**BillingHandleCryptoWebhook200Response**](BillingHandleCryptoWebhook200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingHandleFlutterwaveWebhook**
```swift
    open class func billingHandleFlutterwaveWebhook(billingHandleFlutterwaveWebhookRequest: BillingHandleFlutterwaveWebhookRequest, completion: @escaping (_ data: BillingHandleCryptoWebhook200Response?, _ error: Error?) -> Void)
```

Flutterwave webhook

Receives Flutterwave webhook events (charge.completed, payment.successful). No auth; verified by verif-hash header. - Subscription billing: meta without isPaymentProcessing triggers verifyPaymentAndCreateSubscription (mudbase_xxx refs). - Payment processing: meta.isPaymentProcessing === true triggers fiat payment record (mudbase_fiat_xxx refs); org share goes to org subaccount, platform fee to main or configured subaccounts. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let billingHandleFlutterwaveWebhookRequest = billing_handleFlutterwaveWebhook_request(event: "event_example", data: billing_handleFlutterwaveWebhook_request_data(id: 123, txRef: "txRef_example", flwRef: "flwRef_example", amount: 123, currency: "currency_example", status: "status_example", customer: billing_handleFlutterwaveWebhook_request_data_customer(email: "email_example", name: "name_example"), meta: 123)) // BillingHandleFlutterwaveWebhookRequest | Flutterwave webhook payload (event and data with id, tx_ref, amount, currency, status, customer, meta for subscription or payment-processing).

// Flutterwave webhook
BillingAPI.billingHandleFlutterwaveWebhook(billingHandleFlutterwaveWebhookRequest: billingHandleFlutterwaveWebhookRequest) { (response, error) in
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
 **billingHandleFlutterwaveWebhookRequest** | [**BillingHandleFlutterwaveWebhookRequest**](BillingHandleFlutterwaveWebhookRequest.md) | Flutterwave webhook payload (event and data with id, tx_ref, amount, currency, status, customer, meta for subscription or payment-processing). | 

### Return type

[**BillingHandleCryptoWebhook200Response**](BillingHandleCryptoWebhook200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingInitializePayment**
```swift
    open class func billingInitializePayment(projectId: String, billingInitializePaymentRequest: BillingInitializePaymentRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initialize fiat payment (app-scoped)

Same as org-level initialize-payment; projectId from path is used for scope and tx_ref. Resolves project to org and uses org's Flutterwave subaccount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID for payment scope and tx_ref.
let billingInitializePaymentRequest = billing_initializePayment_request(amount: 123, currency: "currency_example", customer: billing_initializePayment_request_customer(email: "email_example", name: "name_example"), metadata: 123) // BillingInitializePaymentRequest | Payment amount, currency, customer (email, name), and optional metadata.

// Initialize fiat payment (app-scoped)
BillingAPI.billingInitializePayment(projectId: projectId, billingInitializePaymentRequest: billingInitializePaymentRequest) { (response, error) in
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
 **projectId** | **String** | Project ID for payment scope and tx_ref. | 
 **billingInitializePaymentRequest** | [**BillingInitializePaymentRequest**](BillingInitializePaymentRequest.md) | Payment amount, currency, customer (email, name), and optional metadata. | 

### Return type

Void (empty response body)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingRecordUsage**
```swift
    open class func billingRecordUsage(projectId: String, billingRecordUsageRequest: BillingRecordUsageRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Record usage (public)

Record metered usage for a customer (e.g. api_calls, storage_mb). Used for usage-based billing. Public endpoint; optionally secured by webhook or API key in production.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let billingRecordUsageRequest = billing_recordUsage_request(email: "email_example", metric: "metric_example", quantity: 123) // BillingRecordUsageRequest | Customer email, metric name (e.g. api_calls, storage_mb), and quantity to record.

// Record usage (public)
BillingAPI.billingRecordUsage(projectId: projectId, billingRecordUsageRequest: billingRecordUsageRequest) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **billingRecordUsageRequest** | [**BillingRecordUsageRequest**](BillingRecordUsageRequest.md) | Customer email, metric name (e.g. api_calls, storage_mb), and quantity to record. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingVerifyPayment**
```swift
    open class func billingVerifyPayment(projectId: String, reference: String, completion: @escaping (_ data: BillingVerifyPayment200Response?, _ error: Error?) -> Void)
```

Verify payment and create subscription

Verifies payment by reference (Flutterwave mudbase_xxx or crypto pmt_xxx) and creates or updates the subscription. Call after redirect from payment provider; pass reference as query (e.g. ?reference=mudbase_abc123). Idempotent for same reference. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID (MongoDB ObjectId) for the billing project.
let reference = "reference_example" // String | Payment reference (e.g. mudbase_abc123 or pmt_abc123)

// Verify payment and create subscription
BillingAPI.billingVerifyPayment(projectId: projectId, reference: reference) { (response, error) in
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
 **projectId** | **String** | Project ID (MongoDB ObjectId) for the billing project. | 
 **reference** | **String** | Payment reference (e.g. mudbase_abc123 or pmt_abc123) | 

### Return type

[**BillingVerifyPayment200Response**](BillingVerifyPayment200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

