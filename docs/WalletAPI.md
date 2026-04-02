# WalletAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletBroadcastTransaction**](WalletAPI.md#walletbroadcasttransaction) | **POST** /api/wallet/non-custodial/broadcast | Broadcast a client-signed transaction
[**walletCreateWebhook**](WalletAPI.md#walletcreatewebhook) | **POST** /api/wallet/non-custodial/webhooks | Create a wallet webhook
[**walletDeleteAddress**](WalletAPI.md#walletdeleteaddress) | **DELETE** /api/wallet/non-custodial/addresses/{addressId} | Delete (soft-delete) a non-custodial address
[**walletDeleteWebhook**](WalletAPI.md#walletdeletewebhook) | **DELETE** /api/wallet/non-custodial/webhooks/{webhookId} | Delete a wallet webhook
[**walletEstimateGas**](WalletAPI.md#walletestimategas) | **POST** /api/wallet/non-custodial/estimate-gas | Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)
[**walletGetAddress**](WalletAPI.md#walletgetaddress) | **GET** /api/wallet/non-custodial/addresses/{addressId} | Get non-custodial address by ID
[**walletGetBalance**](WalletAPI.md#walletgetbalance) | **GET** /api/wallet/non-custodial/addresses/{addressId}/balance | Get balance for a non-custodial address
[**walletGetCancelParams**](WalletAPI.md#walletgetcancelparams) | **POST** /api/wallet/non-custodial/cancel | Get replacement tx params for cancel (stuck EVM tx)
[**walletGetSpeedUpParams**](WalletAPI.md#walletgetspeedupparams) | **POST** /api/wallet/non-custodial/speed-up | Get replacement tx params for speed-up (stuck EVM tx)
[**walletGetTransactionByHash**](WalletAPI.md#walletgettransactionbyhash) | **GET** /api/wallet/non-custodial/transactions/{txHash} | Get transaction by hash
[**walletGetTransactions**](WalletAPI.md#walletgettransactions) | **GET** /api/wallet/non-custodial/addresses/{addressId}/transactions | Get transaction history for a non-custodial address
[**walletGetWebhookLogs**](WalletAPI.md#walletgetwebhooklogs) | **GET** /api/wallet/non-custodial/webhooks/{webhookId}/logs | Get webhook delivery logs
[**walletListAddresses**](WalletAPI.md#walletlistaddresses) | **GET** /api/wallet/non-custodial/addresses | List registered non-custodial addresses
[**walletListWebhooks**](WalletAPI.md#walletlistwebhooks) | **GET** /api/wallet/non-custodial/webhooks | List wallet webhooks
[**walletRegisterAddress**](WalletAPI.md#walletregisteraddress) | **POST** /api/wallet/non-custodial/register-address | Register a non-custodial wallet address
[**walletTestWebhook**](WalletAPI.md#wallettestwebhook) | **POST** /api/wallet/non-custodial/webhooks/test | Test a webhook delivery (sends a single test payload)
[**walletUpdateWebhook**](WalletAPI.md#walletupdatewebhook) | **PUT** /api/wallet/non-custodial/webhooks/{webhookId} | Update a wallet webhook


# **walletBroadcastTransaction**
```swift
    open class func walletBroadcastTransaction(walletBroadcastTransactionRequest: WalletBroadcastTransactionRequest, completion: @escaping (_ data: WalletBroadcastTransaction200Response?, _ error: Error?) -> Void)
```

Broadcast a client-signed transaction

Broadcast a transaction that has been signed client-side. The transaction must be fully signed before sending. The fromAddress must be registered and belong to your organization (POST /api/wallet/non-custodial/register-address). **Supported chains:** EVM (ethereum, polygon, arbitrum, optimism, base, bsc, binance, avalanche, celo), UTXO (bitcoin, litecoin, dogecoin), and chain-specific (tron, solana, ton, cardano). Use `binance` or `bsc` for BNB Smart Chain. **Testing with custodial:** You can create a wallet via POST /api/wallet/create, get its private key via GET /api/wallet/{walletId}/private-key, register that address with POST /api/wallet/non-custodial/register-address, then build a signed tx (using POST /api/wallet/estimate-network-fee or estimate-gas for fees) and broadcast it here to test the non-custodial flow end-to-end. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletBroadcastTransactionRequest = wallet_broadcastTransaction_request(chain: "chain_example", signedTx: "signedTx_example", fromAddress: "fromAddress_example") // WalletBroadcastTransactionRequest | Chain, signed transaction (hex), and fromAddress (must be registered).

// Broadcast a client-signed transaction
WalletAPI.walletBroadcastTransaction(walletBroadcastTransactionRequest: walletBroadcastTransactionRequest) { (response, error) in
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
 **walletBroadcastTransactionRequest** | [**WalletBroadcastTransactionRequest**](WalletBroadcastTransactionRequest.md) | Chain, signed transaction (hex), and fromAddress (must be registered). | 

### Return type

[**WalletBroadcastTransaction200Response**](WalletBroadcastTransaction200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletCreateWebhook**
```swift
    open class func walletCreateWebhook(walletCreateWebhookRequest: WalletCreateWebhookRequest, completion: @escaping (_ data: WalletCreateWebhook201Response?, _ error: Error?) -> Void)
```

Create a wallet webhook

Register a webhook URL to receive wallet events (balance updates, transaction confirmed/failed/detected/broadcast, token balance, address created/deactivated). Optional filters by addresses and chains. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletCreateWebhookRequest = wallet_createWebhook_request(url: "url_example", events: ["events_example"], secret: "secret_example", filters: wallet_createWebhook_request_filters(addresses: ["addresses_example"], chains: ["chains_example"]), projectId: "projectId_example") // WalletCreateWebhookRequest | Webhook URL, events array, optional secret and filters (addresses, chains, projectId).

// Create a wallet webhook
WalletAPI.walletCreateWebhook(walletCreateWebhookRequest: walletCreateWebhookRequest) { (response, error) in
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
 **walletCreateWebhookRequest** | [**WalletCreateWebhookRequest**](WalletCreateWebhookRequest.md) | Webhook URL, events array, optional secret and filters (addresses, chains, projectId). | 

### Return type

[**WalletCreateWebhook201Response**](WalletCreateWebhook201Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletDeleteAddress**
```swift
    open class func walletDeleteAddress(addressId: String, completion: @escaping (_ data: FunctionsDelete200Response?, _ error: Error?) -> Void)
```

Delete (soft-delete) a non-custodial address

Soft-deletes a registered non-custodial address. The address is marked inactive and no longer used for broadcasts or balance/transaction queries. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | Registered address ID to delete.

// Delete (soft-delete) a non-custodial address
WalletAPI.walletDeleteAddress(addressId: addressId) { (response, error) in
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
 **addressId** | **String** | Registered address ID to delete. | 

### Return type

[**FunctionsDelete200Response**](FunctionsDelete200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletDeleteWebhook**
```swift
    open class func walletDeleteWebhook(webhookId: String, completion: @escaping (_ data: FunctionsDelete200Response?, _ error: Error?) -> Void)
```

Delete a wallet webhook

Permanently delete a wallet webhook. Delivery will stop immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | Webhook ID (MongoDB ObjectId) to delete.

// Delete a wallet webhook
WalletAPI.walletDeleteWebhook(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **String** | Webhook ID (MongoDB ObjectId) to delete. | 

### Return type

[**FunctionsDelete200Response**](FunctionsDelete200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletEstimateGas**
```swift
    open class func walletEstimateGas(walletEstimateGasRequest: WalletEstimateGasRequest, completion: @escaping (_ data: WalletEstimateGas200Response?, _ error: Error?) -> Void)
```

Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)

**Network fee (from blockchain only).** Returns network fee **estimated directly from the blockchain** via RPC or fee APIs. **Not controlled by Mudbase.** Both POST /api/wallet/estimate-network-fee (or calculate-fee) and this endpoint return network fee only; use either for gas/fee display. This endpoint is chain-oriented and supports full transaction shape for EVM. **EVM chains:** ethereum, polygon, arbitrum, optimism, base, bsc, binance, avalanche, celo — require `transaction` (from, and to/value or tokenAddress/amount). Response includes gasLimit, gasPrice, networkFee, estimatedTime, currency. **Non-EVM chains:** bitcoin, litecoin, dogecoin, solana, tron, ton, cardano — only `chain` is required; `transaction` is optional/ignored. Returns networkFee, estimatedTime, currency (and e.g. satPerVb for UTXO). See docs/FEE_ARCHITECTURE.md. Results cached 15s. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletEstimateGasRequest = wallet_estimateGas_request(chain: "chain_example", transaction: wallet_estimateGas_request_transaction(from: "from_example", to: "to_example", value: "value_example", data: "data_example", tokenAddress: "tokenAddress_example", amount: "amount_example")) // WalletEstimateGasRequest | Chain and optional transaction shape (required for EVM). Returns network fee from blockchain.

// Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)
WalletAPI.walletEstimateGas(walletEstimateGasRequest: walletEstimateGasRequest) { (response, error) in
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
 **walletEstimateGasRequest** | [**WalletEstimateGasRequest**](WalletEstimateGasRequest.md) | Chain and optional transaction shape (required for EVM). Returns network fee from blockchain. | 

### Return type

[**WalletEstimateGas200Response**](WalletEstimateGas200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetAddress**
```swift
    open class func walletGetAddress(addressId: String, completion: @escaping (_ data: NonCustodialAddressResponse?, _ error: Error?) -> Void)
```

Get non-custodial address by ID

Returns metadata and status for a single registered non-custodial address (ID, address, chain, label, org, project, derivationPath, isActive, timestamps). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | Registered address ID (MongoDB ObjectId).

// Get non-custodial address by ID
WalletAPI.walletGetAddress(addressId: addressId) { (response, error) in
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
 **addressId** | **String** | Registered address ID (MongoDB ObjectId). | 

### Return type

[**NonCustodialAddressResponse**](NonCustodialAddressResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetBalance**
```swift
    open class func walletGetBalance(addressId: String, completion: @escaping (_ data: WalletGetBalance200Response?, _ error: Error?) -> Void)
```

Get balance for a non-custodial address

Returns native token balance (confirmed, unconfirmed, total, currency) for a registered non-custodial address. Updated periodically from the chain. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | Registered address ID.

// Get balance for a non-custodial address
WalletAPI.walletGetBalance(addressId: addressId) { (response, error) in
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
 **addressId** | **String** | Registered address ID. | 

### Return type

[**WalletGetBalance200Response**](WalletGetBalance200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetCancelParams**
```swift
    open class func walletGetCancelParams(walletGetCancelParamsRequest: WalletGetCancelParamsRequest, completion: @escaping (_ data: WalletGetCancelParams200Response?, _ error: Error?) -> Void)
```

Get replacement tx params for cancel (stuck EVM tx)

Returns **replacement transaction params** to cancel a stuck EVM transaction (same nonce, to=self, value=0, data=0x, higher gas). Client signs and broadcasts via POST /api/wallet/non-custodial/broadcast. Address must be registered for your organization. EVM chains only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletGetCancelParamsRequest = wallet_getCancelParams_request(txId: "txId_example", txHash: "txHash_example", chain: "chain_example") // WalletGetCancelParamsRequest | Stuck transaction identifier (txId or txHash) and EVM chain for cancel.

// Get replacement tx params for cancel (stuck EVM tx)
WalletAPI.walletGetCancelParams(walletGetCancelParamsRequest: walletGetCancelParamsRequest) { (response, error) in
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
 **walletGetCancelParamsRequest** | [**WalletGetCancelParamsRequest**](WalletGetCancelParamsRequest.md) | Stuck transaction identifier (txId or txHash) and EVM chain for cancel. | 

### Return type

[**WalletGetCancelParams200Response**](WalletGetCancelParams200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetSpeedUpParams**
```swift
    open class func walletGetSpeedUpParams(walletGetSpeedUpParamsRequest: WalletGetSpeedUpParamsRequest, completion: @escaping (_ data: WalletGetSpeedUpParams200Response?, _ error: Error?) -> Void)
```

Get replacement tx params for speed-up (stuck EVM tx)

Returns **replacement transaction params** for a stuck EVM transaction (same nonce, same to/value/data, higher gas). Client signs the replacement and broadcasts via POST /api/wallet/non-custodial/broadcast. Address must be registered for your organization. Use when a tx has been pending >5 min (stuck). EVM chains only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletGetSpeedUpParamsRequest = wallet_getSpeedUpParams_request(txId: "txId_example", txHash: "txHash_example", chain: "chain_example") // WalletGetSpeedUpParamsRequest | Stuck transaction identifier (txId or txHash) and EVM chain.

// Get replacement tx params for speed-up (stuck EVM tx)
WalletAPI.walletGetSpeedUpParams(walletGetSpeedUpParamsRequest: walletGetSpeedUpParamsRequest) { (response, error) in
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
 **walletGetSpeedUpParamsRequest** | [**WalletGetSpeedUpParamsRequest**](WalletGetSpeedUpParamsRequest.md) | Stuck transaction identifier (txId or txHash) and EVM chain. | 

### Return type

[**WalletGetSpeedUpParams200Response**](WalletGetSpeedUpParams200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetTransactionByHash**
```swift
    open class func walletGetTransactionByHash(txHash: String, chain: Chain_walletGetTransactionByHash, completion: @escaping (_ data: WalletGetTransactionByHash200Response?, _ error: Error?) -> Void)
```

Get transaction by hash

Returns a transaction by its hash. The **chain** query parameter is required because the same hash format can exist on different chains (e.g. 0x-style on EVM chains). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let txHash = "txHash_example" // String | Transaction hash (e.g. 0x... for EVM, or block explorer format for UTXO)
let chain = "chain_example" // String | Chain the transaction belongs to (required for lookup)

// Get transaction by hash
WalletAPI.walletGetTransactionByHash(txHash: txHash, chain: chain) { (response, error) in
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
 **txHash** | **String** | Transaction hash (e.g. 0x... for EVM, or block explorer format for UTXO) | 
 **chain** | **String** | Chain the transaction belongs to (required for lookup) | 

### Return type

[**WalletGetTransactionByHash200Response**](WalletGetTransactionByHash200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetTransactions**
```swift
    open class func walletGetTransactions(addressId: String, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: WalletGetTransactions200Response?, _ error: Error?) -> Void)
```

Get transaction history for a non-custodial address

Returns paginated transaction history for a registered non-custodial address (incoming/outgoing, status, confirmations, amounts). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | Registered address ID.
let limit = 987 // Int | Number of transactions per page. (optional) (default to 50)
let page = 987 // Int | Page number (1-based). (optional) (default to 1)

// Get transaction history for a non-custodial address
WalletAPI.walletGetTransactions(addressId: addressId, limit: limit, page: page) { (response, error) in
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
 **addressId** | **String** | Registered address ID. | 
 **limit** | **Int** | Number of transactions per page. | [optional] [default to 50]
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]

### Return type

[**WalletGetTransactions200Response**](WalletGetTransactions200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletGetWebhookLogs**
```swift
    open class func walletGetWebhookLogs(webhookId: String, limit: Int? = nil, completion: @escaping (_ data: WalletGetWebhookLogs200Response?, _ error: Error?) -> Void)
```

Get webhook delivery logs

List delivery attempts for a wallet webhook (success/failure, payload, response, duration). Paginated by limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | Webhook ID (MongoDB ObjectId) to get logs for.
let limit = 987 // Int | Maximum number of log entries to return. (optional) (default to 50)

// Get webhook delivery logs
WalletAPI.walletGetWebhookLogs(webhookId: webhookId, limit: limit) { (response, error) in
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
 **webhookId** | **String** | Webhook ID (MongoDB ObjectId) to get logs for. | 
 **limit** | **Int** | Maximum number of log entries to return. | [optional] [default to 50]

### Return type

[**WalletGetWebhookLogs200Response**](WalletGetWebhookLogs200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletListAddresses**
```swift
    open class func walletListAddresses(chain: Chain_walletListAddresses? = nil, projectId: String? = nil, completion: @escaping (_ data: WalletListAddresses200Response?, _ error: Error?) -> Void)
```

List registered non-custodial addresses

Returns all non-custodial addresses registered for the current project/organization. Optional filters by chain and projectId. Addresses must be registered via POST /api/wallet/non-custodial/register-address before use. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let chain = "chain_example" // String | Filter by chain (optional) (optional)
let projectId = "projectId_example" // String | Filter by project ID (optional). (optional)

// List registered non-custodial addresses
WalletAPI.walletListAddresses(chain: chain, projectId: projectId) { (response, error) in
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
 **chain** | **String** | Filter by chain (optional) | [optional] 
 **projectId** | **String** | Filter by project ID (optional). | [optional] 

### Return type

[**WalletListAddresses200Response**](WalletListAddresses200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletListWebhooks**
```swift
    open class func walletListWebhooks(projectId: String? = nil, completion: @escaping (_ data: WalletListWebhooks200Response?, _ error: Error?) -> Void)
```

List wallet webhooks

Returns all wallet webhooks for the current context, optionally filtered by projectId. Includes delivery stats and active status. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Filter by project ID (optional). (optional)

// List wallet webhooks
WalletAPI.walletListWebhooks(projectId: projectId) { (response, error) in
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
 **projectId** | **String** | Filter by project ID (optional). | [optional] 

### Return type

[**WalletListWebhooks200Response**](WalletListWebhooks200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletRegisterAddress**
```swift
    open class func walletRegisterAddress(walletRegisterAddressRequest: WalletRegisterAddressRequest, completion: @escaping (_ data: NonCustodialAddressResponse?, _ error: Error?) -> Void)
```

Register a non-custodial wallet address

Register a public wallet address for balance monitoring, transaction indexing, and webhook notifications. Keys are never sent to the server; generation and signing happen client-side only. Supports EVM, UTXO, Solana, Tron, TON, Cardano, and other chains. Optionally provide derivation path and label for multi-address tracking. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletRegisterAddressRequest = wallet_registerAddress_request(address: "address_example", chain: "chain_example", derivationPath: "derivationPath_example", label: "label_example", projectId: "projectId_example") // WalletRegisterAddressRequest | Public address, chain identifier, and optional derivation path and label. projectId scopes the registration to a project.

// Register a non-custodial wallet address
WalletAPI.walletRegisterAddress(walletRegisterAddressRequest: walletRegisterAddressRequest) { (response, error) in
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
 **walletRegisterAddressRequest** | [**WalletRegisterAddressRequest**](WalletRegisterAddressRequest.md) | Public address, chain identifier, and optional derivation path and label. projectId scopes the registration to a project. | 

### Return type

[**NonCustodialAddressResponse**](NonCustodialAddressResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletTestWebhook**
```swift
    open class func walletTestWebhook(walletTestWebhookRequest: WalletTestWebhookRequest, completion: @escaping (_ data: MultiRoleGetPermissionsMatrix200Response?, _ error: Error?) -> Void)
```

Test a webhook delivery (sends a single test payload)

Sends a test payload to the given URL to verify webhook connectivity and signature. Uses the same signing as real deliveries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletTestWebhookRequest = wallet_testWebhook_request(url: "url_example", secret: "secret_example", projectId: "projectId_example", event: "event_example") // WalletTestWebhookRequest | URL to send the test POST to; optional secret and projectId for scoping; optional event type to simulate.

// Test a webhook delivery (sends a single test payload)
WalletAPI.walletTestWebhook(walletTestWebhookRequest: walletTestWebhookRequest) { (response, error) in
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
 **walletTestWebhookRequest** | [**WalletTestWebhookRequest**](WalletTestWebhookRequest.md) | URL to send the test POST to; optional secret and projectId for scoping; optional event type to simulate. | 

### Return type

[**MultiRoleGetPermissionsMatrix200Response**](MultiRoleGetPermissionsMatrix200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletUpdateWebhook**
```swift
    open class func walletUpdateWebhook(webhookId: String, walletUpdateWebhookRequest: WalletUpdateWebhookRequest, completion: @escaping (_ data: WalletUpdateWebhook200Response?, _ error: Error?) -> Void)
```

Update a wallet webhook

Update webhook URL, events, secret, or filters. Partially applied; only provided fields are updated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | Webhook ID (MongoDB ObjectId) to update.
let walletUpdateWebhookRequest = wallet_updateWebhook_request(url: "url_example", events: ["events_example"], secret: "secret_example", filters: 123) // WalletUpdateWebhookRequest | Fields to update (url, events, secret, filters). Omitted fields are left unchanged.

// Update a wallet webhook
WalletAPI.walletUpdateWebhook(webhookId: webhookId, walletUpdateWebhookRequest: walletUpdateWebhookRequest) { (response, error) in
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
 **webhookId** | **String** | Webhook ID (MongoDB ObjectId) to update. | 
 **walletUpdateWebhookRequest** | [**WalletUpdateWebhookRequest**](WalletUpdateWebhookRequest.md) | Fields to update (url, events, secret, filters). Omitted fields are left unchanged. | 

### Return type

[**WalletUpdateWebhook200Response**](WalletUpdateWebhook200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

