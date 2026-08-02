# BillingAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelSubscription**](BillingAPI.md#cancelsubscription) | **POST** /api/billing/subscriptions/{subscriptionId}/cancel | Cancel subscription
[**checkFeatureAccess**](BillingAPI.md#checkfeatureaccess) | **GET** /api/billing/public/projects/{projectId}/feature-access | Check feature access (public)
[**checkSubscription**](BillingAPI.md#checksubscription) | **GET** /api/billing/public/projects/{projectId}/subscription | Check subscription status (public)
[**createCheckoutSession**](BillingAPI.md#createcheckoutsession) | **POST** /api/billing/public/projects/{projectId}/checkout | Create checkout session (fiat)
[**createPlan**](BillingAPI.md#createplan) | **POST** /api/billing/projects/{projectId}/plans | Create billing plan
[**deletePlan**](BillingAPI.md#deleteplan) | **DELETE** /api/billing/projects/{projectId}/plans/{planId} | Delete billing plan
[**downloadInvoice**](BillingAPI.md#downloadinvoice) | **GET** /api/billing/projects/{projectId}/invoices/{invoiceId}/download | Download invoice PDF
[**enablePaymentProcessing**](BillingAPI.md#enablepaymentprocessing) | **POST** /api/orgs/{orgId}/payment-processing/enable | Enable payment processing for organization
[**exportInvoice**](BillingAPI.md#exportinvoice) | **GET** /api/billing/projects/{projectId}/invoices/{invoiceId}/export | Export invoice (e.g. PDF URL or file)
[**getBillingEstimate**](BillingAPI.md#getbillingestimate) | **GET** /api/billing/estimate | Get billing estimate and forecast
[**getCheckoutPayment**](BillingAPI.md#getcheckoutpayment) | **GET** /api/billing/public/projects/{projectId}/checkout/{paymentId} | Get checkout payment details (not used for fiat billing)
[**getDashboard**](BillingAPI.md#getdashboard) | **GET** /api/billing/projects/{projectId}/dashboard | Get billing dashboard data
[**getFeeBreakdown**](BillingAPI.md#getfeebreakdown) | **GET** /api/orgs/{orgId}/payment-processing/fee-breakdown | Get fee breakdown for a given amount
[**getInvoice**](BillingAPI.md#getinvoice) | **GET** /api/billing/projects/{projectId}/invoices/{invoiceId} | Get single invoice
[**getInvoices**](BillingAPI.md#getinvoices) | **GET** /api/billing/projects/{projectId}/invoices | List project invoices
[**getPaymentRecords**](BillingAPI.md#getpaymentrecords) | **GET** /api/orgs/{orgId}/payment-processing/records | List fiat payment records for organization
[**getPlans**](BillingAPI.md#getplans) | **GET** /api/billing/projects/{projectId}/plans | Get billing plans
[**getPublicPlans**](BillingAPI.md#getpublicplans) | **GET** /api/billing/public/projects/{projectId}/plans | Get public plans (no auth required)
[**getSubscriptionTierById**](BillingAPI.md#getsubscriptiontierbyid) | **GET** /api/billing/plans/{planId} | Get one subscription tier by id
[**getSubscriptionTiers**](BillingAPI.md#getsubscriptiontiers) | **GET** /api/billing/plans | Get subscription tiers (org-level BaaS plans)
[**getSubscriptions**](BillingAPI.md#getsubscriptions) | **GET** /api/billing/projects/{projectId}/subscriptions | Get subscriptions
[**handleFlutterwaveWebhook**](BillingAPI.md#handleflutterwavewebhook) | **POST** /api/billing/webhooks/flutterwave | Payment gateway webhook
[**initializeOrgPlanCheckout**](BillingAPI.md#initializeorgplancheckout) | **POST** /api/billing/org/checkout | Initialize org-level BaaS plan payment (Starter, Growth, Scale)
[**initializePayment**](BillingAPI.md#initializepayment) | **POST** /api/orgs/{orgId}/payment-processing/initialize-payment | Initialize fiat payment with split (org subaccount + platform fee)
[**initializePaymentForProject**](BillingAPI.md#initializepaymentforproject) | **POST** /api/projects/{projectId}/payment-processing/initialize-payment | Initialize fiat payment (project-scoped)
[**recordUsage**](BillingAPI.md#recordusage) | **POST** /api/billing/public/projects/{projectId}/usage | Record usage (public)
[**updatePlan**](BillingAPI.md#updateplan) | **PATCH** /api/billing/projects/{projectId}/plans/{planId} | Update billing plan
[**verifyOrgPlanPayment**](BillingAPI.md#verifyorgplanpayment) | **POST** /api/billing/org/verify-payment | Verify org-level plan payment
[**verifyPayment**](BillingAPI.md#verifypayment) | **POST** /api/billing/public/projects/{projectId}/verify-payment | Verify payment and create subscription


# **cancelSubscription**
```swift
    open class func cancelSubscription(subscriptionId: String, cancelSubscriptionRequest: CancelSubscriptionRequest? = nil, completion: @escaping (_ data: DeleteRole200Response?, _ error: Error?) -> Void)
```

Cancel subscription

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let subscriptionId = "subscriptionId_example" // String | 
let cancelSubscriptionRequest = cancelSubscription_request(cancelImmediately: false) // CancelSubscriptionRequest |  (optional)

// Cancel subscription
BillingAPI.cancelSubscription(subscriptionId: subscriptionId, cancelSubscriptionRequest: cancelSubscriptionRequest) { (response, error) in
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
 **subscriptionId** | **String** |  | 
 **cancelSubscriptionRequest** | [**CancelSubscriptionRequest**](CancelSubscriptionRequest.md) |  | [optional] 

### Return type

[**DeleteRole200Response**](DeleteRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkFeatureAccess**
```swift
    open class func checkFeatureAccess(projectId: String, email: String, feature: String, completion: @escaping (_ data: CheckFeatureAccess200Response?, _ error: Error?) -> Void)
```

Check feature access (public)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let email = "email_example" // String | Customer email
let feature = "feature_example" // String | Feature slug to check access for

// Check feature access (public)
BillingAPI.checkFeatureAccess(projectId: projectId, email: email, feature: feature) { (response, error) in
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
 **email** | **String** | Customer email | 
 **feature** | **String** | Feature slug to check access for | 

### Return type

[**CheckFeatureAccess200Response**](CheckFeatureAccess200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkSubscription**
```swift
    open class func checkSubscription(projectId: String, email: String, completion: @escaping (_ data: CheckSubscription200Response?, _ error: Error?) -> Void)
```

Check subscription status (public)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let email = "email_example" // String | Customer email to check subscription for

// Check subscription status (public)
BillingAPI.checkSubscription(projectId: projectId, email: email) { (response, error) in
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
 **email** | **String** | Customer email to check subscription for | 

### Return type

[**CheckSubscription200Response**](CheckSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCheckoutSession**
```swift
    open class func createCheckoutSession(projectId: String, createCheckoutSessionRequest: CreateCheckoutSessionRequest, completion: @escaping (_ data: CreateCheckoutSession200Response?, _ error: Error?) -> Void)
```

Create checkout session (fiat)

**Customer subscription flow — Step 2.** Creates a fiat checkout session. Request body must include planId (from GET public plans), billingCycle (monthly|yearly), and customerInfo.email. Redirect the user to **checkoutUrl** (same URL as authorizationUrl). After payment, call verify-payment with **reference** (mudbase_...). Response includes only fiat fields (no paymentAddress, paymentOptions, network, asset, or pmt_ references). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID
let createCheckoutSessionRequest = createCheckoutSession_request(planId: "planId_example", billingCycle: "billingCycle_example", customerInfo: createCheckoutSession_request_customerInfo(email: "email_example", name: "name_example"), successUrl: "successUrl_example", cancelUrl: "cancelUrl_example") // CreateCheckoutSessionRequest | 

// Create checkout session (fiat)
BillingAPI.createCheckoutSession(projectId: projectId, createCheckoutSessionRequest: createCheckoutSessionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID | 
 **createCheckoutSessionRequest** | [**CreateCheckoutSessionRequest**](CreateCheckoutSessionRequest.md) |  | 

### Return type

[**CreateCheckoutSession200Response**](CreateCheckoutSession200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPlan**
```swift
    open class func createPlan(projectId: String, createPlanRequest: CreatePlanRequest, completion: @escaping (_ data: CreatePlan201Response?, _ error: Error?) -> Void)
```

Create billing plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let createPlanRequest = createPlan_request(name: "name_example", description: "description_example", price: 123, currency: "currency_example", interval: "interval_example", features: [createPlan_request_features_inner(name: "name_example", description: "description_example", included: false, limit: 123)], limits: createPlan_request_limits(apiCalls: 123, storage: 123, bandwidth: 123, users: 123, customLimits: [createPlan_request_limits_customLimits_inner(name: "name_example", value: 123)]), trial: createPlan_request_trial(enabled: false, days: 123), isActive: false, isDefault: false, sortOrder: 123, metadata: "TODO") // CreatePlanRequest | 

// Create billing plan
BillingAPI.createPlan(projectId: projectId, createPlanRequest: createPlanRequest) { (response, error) in
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
 **createPlanRequest** | [**CreatePlanRequest**](CreatePlanRequest.md) |  | 

### Return type

[**CreatePlan201Response**](CreatePlan201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlan**
```swift
    open class func deletePlan(projectId: String, planId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete billing plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let planId = "planId_example" // String | 

// Delete billing plan
BillingAPI.deletePlan(projectId: projectId, planId: planId) { (response, error) in
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
 **planId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadInvoice**
```swift
    open class func downloadInvoice(projectId: String, invoiceId: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download invoice PDF

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let invoiceId = "invoiceId_example" // String | 

// Download invoice PDF
BillingAPI.downloadInvoice(projectId: projectId, invoiceId: invoiceId) { (response, error) in
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
 **invoiceId** | **String** |  | 

### Return type

**URL**

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enablePaymentProcessing**
```swift
    open class func enablePaymentProcessing(orgId: String, enablePaymentProcessingRequest: EnablePaymentProcessingRequest, completion: @escaping (_ data: EnablePaymentProcessing200Response?, _ error: Error?) -> Void)
```

Enable payment processing for organization

Creates a payment-collection subaccount for the org with the provided bank details. Use USD-capable bank (e.g. country US) for USD settlement. BVN only required when country is NG. Requires owner or admin role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let enablePaymentProcessingRequest = enablePaymentProcessing_request(accountBank: "accountBank_example", accountNumber: "accountNumber_example", country: "country_example", businessName: "businessName_example", businessMobile: "businessMobile_example", bvn: "bvn_example") // EnablePaymentProcessingRequest | 

// Enable payment processing for organization
BillingAPI.enablePaymentProcessing(orgId: orgId, enablePaymentProcessingRequest: enablePaymentProcessingRequest) { (response, error) in
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
 **enablePaymentProcessingRequest** | [**EnablePaymentProcessingRequest**](EnablePaymentProcessingRequest.md) |  | 

### Return type

[**EnablePaymentProcessing200Response**](EnablePaymentProcessing200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportInvoice**
```swift
    open class func exportInvoice(projectId: String, invoiceId: String, completion: @escaping (_ data: DownloadInvoice200Response?, _ error: Error?) -> Void)
```

Export invoice (e.g. PDF URL or file)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let invoiceId = "invoiceId_example" // String | 

// Export invoice (e.g. PDF URL or file)
BillingAPI.exportInvoice(projectId: projectId, invoiceId: invoiceId) { (response, error) in
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
 **invoiceId** | **String** |  | 

### Return type

[**DownloadInvoice200Response**](DownloadInvoice200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBillingEstimate**
```swift
    open class func getBillingEstimate(completion: @escaping (_ data: GetBillingEstimate200Response?, _ error: Error?) -> Void)
```

Get billing estimate and forecast

Returns current-month overage estimate and an optional end-of-month forecast for the authenticated organization. Includes spend limit settings (soft/hard) and whether usage is currently blocked. Requires org-level JWT. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get billing estimate and forecast
BillingAPI.getBillingEstimate() { (response, error) in
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

[**GetBillingEstimate200Response**](GetBillingEstimate200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCheckoutPayment**
```swift
    open class func getCheckoutPayment(projectId: String, paymentId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get checkout payment details (not used for fiat billing)

**Fiat-only billing:** checkout is completed on the payment gateway's hosted page; there is no server-side payment intent to poll. The live API returns **404** for this route. Reserved for compatibility; do not rely on a success body for project billing. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let paymentId = "paymentId_example" // String | Opaque id from checkout (fiat billing does not expose pollable payment state here)

// Get checkout payment details (not used for fiat billing)
BillingAPI.getCheckoutPayment(projectId: projectId, paymentId: paymentId) { (response, error) in
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
 **paymentId** | **String** | Opaque id from checkout (fiat billing does not expose pollable payment state here) | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboard**
```swift
    open class func getDashboard(projectId: String, completion: @escaping (_ data: GetDashboard200Response?, _ error: Error?) -> Void)
```

Get billing dashboard data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get billing dashboard data
BillingAPI.getDashboard(projectId: projectId) { (response, error) in
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

[**GetDashboard200Response**](GetDashboard200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeeBreakdown**
```swift
    open class func getFeeBreakdown(orgId: String, amount: Double, currency: String? = nil, completion: @escaping (_ data: GetFeeBreakdown200Response?, _ error: Error?) -> Void)
```

Get fee breakdown for a given amount

Returns orgReceives, platformPercent, platformFixed, processingFee for the given amount (7% + $0.50 platform fee; processing fee absorbed from platform share).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let amount = 987 // Double | 
let currency = "currency_example" // String |  (optional) (default to "USD")

// Get fee breakdown for a given amount
BillingAPI.getFeeBreakdown(orgId: orgId, amount: amount, currency: currency) { (response, error) in
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
 **amount** | **Double** |  | 
 **currency** | **String** |  | [optional] [default to &quot;USD&quot;]

### Return type

[**GetFeeBreakdown200Response**](GetFeeBreakdown200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
```swift
    open class func getInvoice(projectId: String, invoiceId: String, completion: @escaping (_ data: GetInvoice200Response?, _ error: Error?) -> Void)
```

Get single invoice

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let invoiceId = "invoiceId_example" // String | 

// Get single invoice
BillingAPI.getInvoice(projectId: projectId, invoiceId: invoiceId) { (response, error) in
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
 **invoiceId** | **String** |  | 

### Return type

[**GetInvoice200Response**](GetInvoice200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoices**
```swift
    open class func getInvoices(projectId: String, completion: @escaping (_ data: GetInvoices200Response?, _ error: Error?) -> Void)
```

List project invoices

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List project invoices
BillingAPI.getInvoices(projectId: projectId) { (response, error) in
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

[**GetInvoices200Response**](GetInvoices200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentRecords**
```swift
    open class func getPaymentRecords(orgId: String, page: Int? = nil, limit: Int? = nil, status: Status_getPaymentRecords? = nil, completion: @escaping (_ data: GetPaymentRecords200Response?, _ error: Error?) -> Void)
```

List fiat payment records for organization

Paginated list of FiatPaymentRecord for this org (txRef, amount, orgReceives, status, paidAt).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let status = "status_example" // String |  (optional)

// List fiat payment records for organization
BillingAPI.getPaymentRecords(orgId: orgId, page: page, limit: limit, status: status) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **status** | **String** |  | [optional] 

### Return type

[**GetPaymentRecords200Response**](GetPaymentRecords200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlans**
```swift
    open class func getPlans(projectId: String, completion: @escaping (_ data: GetPlans200Response?, _ error: Error?) -> Void)
```

Get billing plans

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get billing plans
BillingAPI.getPlans(projectId: projectId) { (response, error) in
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

[**GetPlans200Response**](GetPlans200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicPlans**
```swift
    open class func getPublicPlans(projectId: String, completion: @escaping (_ data: GetPublicPlans200Response?, _ error: Error?) -> Void)
```

Get public plans (no auth required)

**Customer subscription flow — Step 1.** Returns all active plans for the project. Use a plan's _id as planId in the checkout request. No authentication required (for pricing/checkout pages). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get public plans (no auth required)
BillingAPI.getPublicPlans(projectId: projectId) { (response, error) in
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

[**GetPublicPlans200Response**](GetPublicPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionTierById**
```swift
    open class func getSubscriptionTierById(planId: String, completion: @escaping (_ data: GetSubscriptionTierById200Response?, _ error: Error?) -> Void)
```

Get one subscription tier by id

Returns a single org-level BaaS plan (free, starter, growth, scale, enterprise). Public; no auth required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let planId = "planId_example" // String | Plan id (free, starter, growth, scale, enterprise)

// Get one subscription tier by id
BillingAPI.getSubscriptionTierById(planId: planId) { (response, error) in
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
 **planId** | **String** | Plan id (free, starter, growth, scale, enterprise) | 

### Return type

[**GetSubscriptionTierById200Response**](GetSubscriptionTierById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionTiers**
```swift
    open class func getSubscriptionTiers(completion: @escaping (_ data: GetSubscriptionTiers200Response?, _ error: Error?) -> Void)
```

Get subscription tiers (org-level BaaS plans)

**Org-level BaaS plan catalog** (source of truth in paymentService.js). Returns Free, Starter ($29), Growth ($69), Scale ($199), Enterprise. Use for pricing page and to get plan ids for POST /api/billing/org/checkout. Public; no auth required. Each plan includes id (free|starter|growth|scale|enterprise), name, description, price (cents), priceYearly (cents, 8% off), currency, limits, overages, enforcement. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get subscription tiers (org-level BaaS plans)
BillingAPI.getSubscriptionTiers() { (response, error) in
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

[**GetSubscriptionTiers200Response**](GetSubscriptionTiers200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptions**
```swift
    open class func getSubscriptions(projectId: String, completion: @escaping (_ data: GetSubscriptions200Response?, _ error: Error?) -> Void)
```

Get subscriptions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// Get subscriptions
BillingAPI.getSubscriptions(projectId: projectId) { (response, error) in
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

[**GetSubscriptions200Response**](GetSubscriptions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleFlutterwaveWebhook**
```swift
    open class func handleFlutterwaveWebhook(handleFlutterwaveWebhookRequest: HandleFlutterwaveWebhookRequest, completion: @escaping (_ data: HandleFlutterwaveWebhook200Response?, _ error: Error?) -> Void)
```

Payment gateway webhook

Receives payment gateway webhook events (charge.completed, payment.successful). No auth; verified by verif-hash header. - Subscription billing: meta without isPaymentProcessing triggers verifyPaymentAndCreateSubscription (mudbase_xxx refs). - Payment processing: meta.isPaymentProcessing === true triggers fiat payment record (mudbase_fiat_xxx refs); org share goes to org subaccount, platform fee to main or configured subaccounts. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let handleFlutterwaveWebhookRequest = handleFlutterwaveWebhook_request(event: "event_example", data: handleFlutterwaveWebhook_request_data(id: 123, txRef: "txRef_example", flwRef: "flwRef_example", amount: 123, currency: "currency_example", status: "status_example", customer: handleFlutterwaveWebhook_request_data_customer(email: "email_example", name: "name_example"), meta: 123)) // HandleFlutterwaveWebhookRequest | 

// Payment gateway webhook
BillingAPI.handleFlutterwaveWebhook(handleFlutterwaveWebhookRequest: handleFlutterwaveWebhookRequest) { (response, error) in
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
 **handleFlutterwaveWebhookRequest** | [**HandleFlutterwaveWebhookRequest**](HandleFlutterwaveWebhookRequest.md) |  | 

### Return type

[**HandleFlutterwaveWebhook200Response**](HandleFlutterwaveWebhook200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializeOrgPlanCheckout**
```swift
    open class func initializeOrgPlanCheckout(initializeOrgPlanCheckoutRequest: InitializeOrgPlanCheckoutRequest, completion: @escaping (_ data: InitializeOrgPlanCheckout200Response?, _ error: Error?) -> Void)
```

Initialize org-level BaaS plan payment (Starter, Growth, Scale)

**Org plan payment flow — Step 2.** Creates a payment link for the authenticated org to subscribe to a BaaS plan (starter, growth, scale). Enterprise has no price; use contact-sales flow. Redirect the user to the returned link; after payment, call POST /api/billing/org/verify-payment with the tx_ref from the redirect. Requires org-level JWT. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let initializeOrgPlanCheckoutRequest = initializeOrgPlanCheckout_request(planName: "planName_example", billingCycle: "billingCycle_example", redirectUrl: "redirectUrl_example") // InitializeOrgPlanCheckoutRequest | 

// Initialize org-level BaaS plan payment (Starter, Growth, Scale)
BillingAPI.initializeOrgPlanCheckout(initializeOrgPlanCheckoutRequest: initializeOrgPlanCheckoutRequest) { (response, error) in
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
 **initializeOrgPlanCheckoutRequest** | [**InitializeOrgPlanCheckoutRequest**](InitializeOrgPlanCheckoutRequest.md) |  | 

### Return type

[**InitializeOrgPlanCheckout200Response**](InitializeOrgPlanCheckout200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializePayment**
```swift
    open class func initializePayment(orgId: String, initializePaymentRequest: InitializePaymentRequest, completion: @escaping (_ data: InitializePayment200Response?, _ error: Error?) -> Void)
```

Initialize fiat payment with split (org subaccount + platform fee)

Creates a payment link. Customer pays; org receives (amount - 7% - $0.50) to their subaccount; platform fee (7% + $0.50, minus processing fee) stays on main account or goes to configured platform subaccounts. Requires payment processing enabled for org.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let initializePaymentRequest = initializePayment_request(amount: 123, currency: "currency_example", projectId: "projectId_example", customer: initializePayment_request_customer(email: "email_example", name: "name_example"), metadata: 123) // InitializePaymentRequest | 

// Initialize fiat payment with split (org subaccount + platform fee)
BillingAPI.initializePayment(orgId: orgId, initializePaymentRequest: initializePaymentRequest) { (response, error) in
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
 **initializePaymentRequest** | [**InitializePaymentRequest**](InitializePaymentRequest.md) |  | 

### Return type

[**InitializePayment200Response**](InitializePayment200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initializePaymentForProject**
```swift
    open class func initializePaymentForProject(projectId: String, initializePaymentForProjectRequest: InitializePaymentForProjectRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initialize fiat payment (project-scoped)

Same as org-level initialize-payment; projectId from path is used for scope and tx_ref. Resolves project to org and uses org's payment-processing subaccount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let initializePaymentForProjectRequest = initializePaymentForProject_request(amount: 123, currency: "currency_example", customer: initializePayment_request_customer(email: "email_example", name: "name_example"), metadata: 123) // InitializePaymentForProjectRequest | 

// Initialize fiat payment (project-scoped)
BillingAPI.initializePaymentForProject(projectId: projectId, initializePaymentForProjectRequest: initializePaymentForProjectRequest) { (response, error) in
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
 **initializePaymentForProjectRequest** | [**InitializePaymentForProjectRequest**](InitializePaymentForProjectRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recordUsage**
```swift
    open class func recordUsage(projectId: String, recordUsageRequest: RecordUsageRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Record usage (public)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let recordUsageRequest = recordUsage_request(email: "email_example", metric: "metric_example", quantity: 123) // RecordUsageRequest | 

// Record usage (public)
BillingAPI.recordUsage(projectId: projectId, recordUsageRequest: recordUsageRequest) { (response, error) in
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
 **recordUsageRequest** | [**RecordUsageRequest**](RecordUsageRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlan**
```swift
    open class func updatePlan(projectId: String, planId: String, updatePlanRequest: UpdatePlanRequest, completion: @escaping (_ data: CreatePlan201Response?, _ error: Error?) -> Void)
```

Update billing plan

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let planId = "planId_example" // String | 
let updatePlanRequest = updatePlan_request(name: "name_example", description: "description_example", price: 123, features: ["features_example"]) // UpdatePlanRequest | 

// Update billing plan
BillingAPI.updatePlan(projectId: projectId, planId: planId, updatePlanRequest: updatePlanRequest) { (response, error) in
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
 **planId** | **String** |  | 
 **updatePlanRequest** | [**UpdatePlanRequest**](UpdatePlanRequest.md) |  | 

### Return type

[**CreatePlan201Response**](CreatePlan201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOrgPlanPayment**
```swift
    open class func verifyOrgPlanPayment(txRef: String? = nil, reference: String? = nil, completion: @escaping (_ data: VerifyOrgPlanPayment200Response?, _ error: Error?) -> Void)
```

Verify org-level plan payment

**Org plan payment flow — Step 3.** Call after the user completes payment (redirect or webhook). Pass tx_ref (or reference) from the payment redirect. Updates org plan and billing; idempotent. No auth required (redirect callback can call this). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let txRef = "txRef_example" // String | Payment reference (mudbase_org_...) from checkout redirect (optional)
let reference = "reference_example" // String | Alias for tx_ref (optional)

// Verify org-level plan payment
BillingAPI.verifyOrgPlanPayment(txRef: txRef, reference: reference) { (response, error) in
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
 **txRef** | **String** | Payment reference (mudbase_org_...) from checkout redirect | [optional] 
 **reference** | **String** | Alias for tx_ref | [optional] 

### Return type

[**VerifyOrgPlanPayment200Response**](VerifyOrgPlanPayment200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPayment**
```swift
    open class func verifyPayment(projectId: String, reference: String, completion: @escaping (_ data: VerifyPayment200Response?, _ error: Error?) -> Void)
```

Verify payment and create subscription

**Customer subscription flow — Step 3.** Call after the user completes payment. Pass **reference** as query (?reference=mudbase_...). On success, a subscription is created. No auth required when using the platform gateway (mudbase_ refs). Org-level gateway verification may require JWT. References starting with pmt_ are rejected (crypto billing is not enabled on this API). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let reference = "reference_example" // String | Payment transaction reference (mudbase_...)

// Verify payment and create subscription
BillingAPI.verifyPayment(projectId: projectId, reference: reference) { (response, error) in
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
 **reference** | **String** | Payment transaction reference (mudbase_...) | 

### Return type

[**VerifyPayment200Response**](VerifyPayment200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

