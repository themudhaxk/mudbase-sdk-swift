# WalletAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastNonCustodialTransaction**](WalletAPI.md#broadcastnoncustodialtransaction) | **POST** /api/wallet/non-custodial/broadcast | Broadcast a client-signed transaction
[**calculateWalletFee**](WalletAPI.md#calculatewalletfee) | **POST** /api/wallet/calculate-fee | Get network fee only (alias for POST /api/wallet/estimate-network-fee)
[**createWallet**](WalletAPI.md#createwallet) | **POST** /api/wallet/create | Create new wallet (for testing non-custodial)
[**createWalletWebhook**](WalletAPI.md#createwalletwebhook) | **POST** /api/wallet/non-custodial/webhooks | Create a wallet webhook
[**deleteNonCustodialAddress**](WalletAPI.md#deletenoncustodialaddress) | **DELETE** /api/wallet/non-custodial/addresses/{addressId} | Delete or deactivate a monitored wallet address
[**deleteWalletWebhook**](WalletAPI.md#deletewalletwebhook) | **DELETE** /api/wallet/non-custodial/webhooks/{webhookId} | Delete a wallet webhook
[**estimateNetworkFee**](WalletAPI.md#estimatenetworkfee) | **POST** /api/wallet/estimate-network-fee | Estimate network fee (preferred; reads from fee oracle cache)
[**estimateNonCustodialGas**](WalletAPI.md#estimatenoncustodialgas) | **POST** /api/wallet/non-custodial/estimate-gas | Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)
[**generatePrivateKey**](WalletAPI.md#generateprivatekey) | **POST** /api/wallet/generate-key | Generate private key
[**getAllFees**](WalletAPI.md#getallfees) | **GET** /api/wallet/fees | Get all chain network fees (fee oracle snapshot)
[**getBalance**](WalletAPI.md#getbalance) | **GET** /api/wallet/{walletId}/balance | Get wallet balance
[**getCancelParams**](WalletAPI.md#getcancelparams) | **POST** /api/wallet/non-custodial/cancel | Get replacement tx params for cancel (stuck EVM tx)
[**getNetworkStatus**](WalletAPI.md#getnetworkstatus) | **GET** /api/wallet/network-status | Get network status (congestion + fee metric per chain)
[**getNonCustodialAddress**](WalletAPI.md#getnoncustodialaddress) | **GET** /api/wallet/non-custodial/addresses/{addressId} | Get non-custodial address by ID
[**getNonCustodialBalance**](WalletAPI.md#getnoncustodialbalance) | **GET** /api/wallet/non-custodial/addresses/{addressId}/balance | Get balance for a non-custodial address
[**getNonCustodialTransactionByHash**](WalletAPI.md#getnoncustodialtransactionbyhash) | **GET** /api/wallet/non-custodial/transactions/{txHash} | Get transaction by hash
[**getNonCustodialTransactions**](WalletAPI.md#getnoncustodialtransactions) | **GET** /api/wallet/non-custodial/addresses/{addressId}/transactions | Get transaction history for a non-custodial address
[**getSpeedUpParams**](WalletAPI.md#getspeedupparams) | **POST** /api/wallet/non-custodial/speed-up | Get replacement tx params for speed-up (stuck EVM tx)
[**getSupportedCurrencies**](WalletAPI.md#getsupportedcurrencies) | **GET** /api/wallet/currencies | Get supported currencies and chains
[**getTransaction**](WalletAPI.md#gettransaction) | **GET** /api/wallet/transactions/{transactionId} | Get transaction details
[**getTransactionHistory**](WalletAPI.md#gettransactionhistory) | **GET** /api/wallet/transactions | Get transaction history (custodial wallets; same monitoring as non-custodial)
[**getUserWallets**](WalletAPI.md#getuserwallets) | **GET** /api/wallet | Get user wallets
[**getWalletFeeConfig**](WalletAPI.md#getwalletfeeconfig) | **GET** /api/wallet/projects/{projectId}/fee-config | Get project fee configuration (for non-custodial / external users)
[**getWalletPrivateKey**](WalletAPI.md#getwalletprivatekey) | **GET** /api/wallet/{walletId}/private-key | Get wallet private key (WARNING: Sensitive data; for testing non-custodial)
[**getWalletWebhookLogs**](WalletAPI.md#getwalletwebhooklogs) | **GET** /api/wallet/non-custodial/webhooks/{webhookId}/logs | Get webhook delivery logs
[**listNonCustodialAddresses**](WalletAPI.md#listnoncustodialaddresses) | **GET** /api/wallet/non-custodial/addresses | List registered non-custodial addresses
[**listWalletWebhooks**](WalletAPI.md#listwalletwebhooks) | **GET** /api/wallet/non-custodial/webhooks | List wallet webhooks
[**registerNonCustodialAddress**](WalletAPI.md#registernoncustodialaddress) | **POST** /api/wallet/non-custodial/register-address | Register a non-custodial wallet address
[**testWalletWebhook**](WalletAPI.md#testwalletwebhook) | **POST** /api/wallet/non-custodial/webhooks/test | Test a webhook delivery (sends a single test payload)
[**updateNonCustodialAddress**](WalletAPI.md#updatenoncustodialaddress) | **PUT** /api/wallet/non-custodial/addresses/{addressId} | Update a monitored wallet address
[**updateWalletFeeConfig**](WalletAPI.md#updatewalletfeeconfig) | **PATCH** /api/wallet/projects/{projectId}/fee-config | Update project fee configuration (for non-custodial / external users)
[**updateWalletWebhook**](WalletAPI.md#updatewalletwebhook) | **PUT** /api/wallet/non-custodial/webhooks/{webhookId} | Update a wallet webhook
[**validateAddress**](WalletAPI.md#validateaddress) | **POST** /api/wallet/validate-address | Validate cryptocurrency address
[**withdraw**](WalletAPI.md#withdraw) | **POST** /api/wallet/{walletId}/withdraw | Prepare withdrawal (semi-transaction; broadcast via non-custodial)


# **broadcastNonCustodialTransaction**
```swift
    open class func broadcastNonCustodialTransaction(broadcastNonCustodialTransactionRequest: BroadcastNonCustodialTransactionRequest, completion: @escaping (_ data: BroadcastNonCustodialTransaction200Response?, _ error: Error?) -> Void)
```

Broadcast a client-signed transaction

Broadcast a transaction that has been signed client-side. The transaction must be fully signed before sending. The fromAddress must be registered and belong to your organization (POST /api/wallet/non-custodial/register-address). **Supported chains:** EVM (ethereum, polygon, arbitrum, optimism, base, bsc, binance, avalanche, celo), UTXO (bitcoin, litecoin, dogecoin), and chain-specific (tron, solana, ton, cardano). Use `binance` or `bsc` for BNB Smart Chain. **Testing with custodial:** You can create a wallet via POST /api/wallet/create, get its private key via GET /api/wallet/{walletId}/private-key, register that address with POST /api/wallet/non-custodial/register-address, then build a signed tx (using POST /api/wallet/estimate-network-fee or estimate-gas for fees) and broadcast it here to test the non-custodial flow end-to-end. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let broadcastNonCustodialTransactionRequest = broadcastNonCustodialTransaction_request(chain: "chain_example", signedTx: "signedTx_example", fromAddress: "fromAddress_example") // BroadcastNonCustodialTransactionRequest | 

// Broadcast a client-signed transaction
WalletAPI.broadcastNonCustodialTransaction(broadcastNonCustodialTransactionRequest: broadcastNonCustodialTransactionRequest) { (response, error) in
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
 **broadcastNonCustodialTransactionRequest** | [**BroadcastNonCustodialTransactionRequest**](BroadcastNonCustodialTransactionRequest.md) |  | 

### Return type

[**BroadcastNonCustodialTransaction200Response**](BroadcastNonCustodialTransaction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **calculateWalletFee**
```swift
    open class func calculateWalletFee(estimateNetworkFeeRequest: EstimateNetworkFeeRequest, fresh: Fresh_calculateWalletFee? = nil, completion: @escaping (_ data: CalculateWalletFee200Response?, _ error: Error?) -> Void)
```

Get network fee only (alias for POST /api/wallet/estimate-network-fee)

Returns **network fee only**, estimated from the blockchain (RPC / fee APIs). No platform fee or project fee. **Same as POST /api/wallet/estimate-network-fee.** Prefer estimate-network-fee for clarity. Supported currencies: BTC, ETH, BNB, LTC, SOL, TRX, USDT, MATIC, AVAX, CELO, DOGE, TON, ADA. For USDT, `network` is required (ETH, BSC, TRX, SOL, POLYGON). Use `?fresh=1` or header `X-Fee-Fresh: true` for a fresh estimate (bypass cache) right before building the transaction for broadcast. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let estimateNetworkFeeRequest = estimateNetworkFee_request(currency: "currency_example", amount: 123, network: "network_example") // EstimateNetworkFeeRequest | 
let fresh = "fresh_example" // String | Bypass cache and fetch current fee (use right before building tx for broadcast) (optional)

// Get network fee only (alias for POST /api/wallet/estimate-network-fee)
WalletAPI.calculateWalletFee(estimateNetworkFeeRequest: estimateNetworkFeeRequest, fresh: fresh) { (response, error) in
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
 **estimateNetworkFeeRequest** | [**EstimateNetworkFeeRequest**](EstimateNetworkFeeRequest.md) |  | 
 **fresh** | **String** | Bypass cache and fetch current fee (use right before building tx for broadcast) | [optional] 

### Return type

[**CalculateWalletFee200Response**](CalculateWalletFee200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWallet**
```swift
    open class func createWallet(createWalletRequest: CreateWalletRequest, completion: @escaping (_ data: CreateWallet201Response?, _ error: Error?) -> Void)
```

Create new wallet (for testing non-custodial)

Create a custodial wallet. **Custodial is not used in production.** Use this to **test non-custodial flows**: create a wallet, get its private key (GET /api/wallet/{walletId}/private-key), register the same address with POST /api/wallet/non-custodial/register-address, then use estimate-network-fee and POST /api/wallet/non-custodial/broadcast to build and send a signed transaction. Transaction monitoring (pending/confirmed) applies to both custodial and non-custodial WalletTransaction records. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createWalletRequest = createWallet_request(currency: "currency_example", projectId: "projectId_example", network: "network_example", privateKey: "privateKey_example", label: "label_example") // CreateWalletRequest | 

// Create new wallet (for testing non-custodial)
WalletAPI.createWallet(createWalletRequest: createWalletRequest) { (response, error) in
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
 **createWalletRequest** | [**CreateWalletRequest**](CreateWalletRequest.md) |  | 

### Return type

[**CreateWallet201Response**](CreateWallet201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWalletWebhook**
```swift
    open class func createWalletWebhook(createWalletWebhookRequest: CreateWalletWebhookRequest, completion: @escaping (_ data: CreateWalletWebhook201Response?, _ error: Error?) -> Void)
```

Create a wallet webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createWalletWebhookRequest = createWalletWebhook_request(url: "url_example", events: ["events_example"], secret: "secret_example", filters: createWalletWebhook_request_filters(addresses: ["addresses_example"], chains: ["chains_example"]), projectId: "projectId_example") // CreateWalletWebhookRequest | 

// Create a wallet webhook
WalletAPI.createWalletWebhook(createWalletWebhookRequest: createWalletWebhookRequest) { (response, error) in
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
 **createWalletWebhookRequest** | [**CreateWalletWebhookRequest**](CreateWalletWebhookRequest.md) |  | 

### Return type

[**CreateWalletWebhook201Response**](CreateWalletWebhook201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNonCustodialAddress**
```swift
    open class func deleteNonCustodialAddress(addressId: String, permanent: Bool? = nil, completion: @escaping (_ data: DeleteFunction200Response?, _ error: Error?) -> Void)
```

Delete or deactivate a monitored wallet address

**Soft delete (default):** Omit **permanent** or set to false. The address is deactivated (isActive = false); it no longer appears in list or receives monitoring but the record remains for audit. **Permanent delete:** Set query **permanent=true** to remove the address record from the database. Use when you need to fully remove the monitored address. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | 
let permanent = true // Bool | If true, permanently delete the address from the database; if false or omitted, only deactivate (soft delete) (optional) (default to false)

// Delete or deactivate a monitored wallet address
WalletAPI.deleteNonCustodialAddress(addressId: addressId, permanent: permanent) { (response, error) in
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
 **addressId** | **String** |  | 
 **permanent** | **Bool** | If true, permanently delete the address from the database; if false or omitted, only deactivate (soft delete) | [optional] [default to false]

### Return type

[**DeleteFunction200Response**](DeleteFunction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWalletWebhook**
```swift
    open class func deleteWalletWebhook(webhookId: String, completion: @escaping (_ data: DeleteFunction200Response?, _ error: Error?) -> Void)
```

Delete a wallet webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | 

// Delete a wallet webhook
WalletAPI.deleteWalletWebhook(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **String** |  | 

### Return type

[**DeleteFunction200Response**](DeleteFunction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimateNetworkFee**
```swift
    open class func estimateNetworkFee(estimateNetworkFeeRequest: EstimateNetworkFeeRequest, fresh: Fresh_estimateNetworkFee? = nil, completion: @escaping (_ data: EstimateNetworkFee200Response?, _ error: Error?) -> Void)
```

Estimate network fee (preferred; reads from fee oracle cache)

Returns **network fee only** from the blockchain. **Preferred endpoint** for network fee. Uses a fee oracle: fees are polled every 15–20s and cached, so responses are fast and RPC load is minimal (same strategy as large wallets). No platform fee. Request/response identical to POST /api/wallet/calculate-fee (which is an alias). See docs/FEE_ARCHITECTURE.md. Supported currencies: BTC, ETH, BNB, LTC, SOL, TRX, USDT, MATIC, AVAX, CELO, DOGE, TON, ADA. For USDT, `network` is required (ETH, BSC, TRX, SOL, POLYGON). **Fresh fee before broadcast:** To avoid stuck transactions, get a fresh estimate right before building/signing: use query `?fresh=1` or header `X-Fee-Fresh: true` to bypass cache. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let estimateNetworkFeeRequest = estimateNetworkFee_request(currency: "currency_example", amount: 123, network: "network_example") // EstimateNetworkFeeRequest | 
let fresh = "fresh_example" // String | Bypass cache and fetch current fee from RPC/fee API (use right before building tx for broadcast) (optional)

// Estimate network fee (preferred; reads from fee oracle cache)
WalletAPI.estimateNetworkFee(estimateNetworkFeeRequest: estimateNetworkFeeRequest, fresh: fresh) { (response, error) in
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
 **estimateNetworkFeeRequest** | [**EstimateNetworkFeeRequest**](EstimateNetworkFeeRequest.md) |  | 
 **fresh** | **String** | Bypass cache and fetch current fee from RPC/fee API (use right before building tx for broadcast) | [optional] 

### Return type

[**EstimateNetworkFee200Response**](EstimateNetworkFee200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimateNonCustodialGas**
```swift
    open class func estimateNonCustodialGas(estimateNonCustodialGasRequest: EstimateNonCustodialGasRequest, completion: @escaping (_ data: EstimateNonCustodialGas200Response?, _ error: Error?) -> Void)
```

Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)

**Network fee (from blockchain only).** Returns network fee **estimated directly from the blockchain** via RPC or fee APIs. **Not controlled by Mudbase.** Both POST /api/wallet/estimate-network-fee (or calculate-fee) and this endpoint return network fee only; use either for gas/fee display. This endpoint is chain-oriented and supports full transaction shape for EVM. **EVM chains:** ethereum, polygon, arbitrum, optimism, base, bsc, binance, avalanche, celo — require `transaction` (from, and to/value or tokenAddress/amount). Response includes gasLimit, gasPrice, networkFee, estimatedTime, currency. **Non-EVM chains:** bitcoin, litecoin, dogecoin, solana, tron, ton, cardano — only `chain` is required; `transaction` is optional/ignored. Returns networkFee, estimatedTime, currency (and e.g. satPerVb for UTXO). See docs/FEE_ARCHITECTURE.md. Results cached 15s. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let estimateNonCustodialGasRequest = estimateNonCustodialGas_request(chain: "chain_example", transaction: estimateNonCustodialGas_request_transaction(from: "from_example", to: "to_example", value: "value_example", data: "data_example", tokenAddress: "tokenAddress_example", amount: "amount_example")) // EstimateNonCustodialGasRequest | 

// Estimate network fee from blockchain (all supported chains; not controlled by Mudbase)
WalletAPI.estimateNonCustodialGas(estimateNonCustodialGasRequest: estimateNonCustodialGasRequest) { (response, error) in
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
 **estimateNonCustodialGasRequest** | [**EstimateNonCustodialGasRequest**](EstimateNonCustodialGasRequest.md) |  | 

### Return type

[**EstimateNonCustodialGas200Response**](EstimateNonCustodialGas200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePrivateKey**
```swift
    open class func generatePrivateKey(generatePrivateKeyRequest: GeneratePrivateKeyRequest, completion: @escaping (_ data: GeneratePrivateKey200Response?, _ error: Error?) -> Void)
```

Generate private key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let generatePrivateKeyRequest = generatePrivateKey_request(currency: "currency_example") // GeneratePrivateKeyRequest | 

// Generate private key
WalletAPI.generatePrivateKey(generatePrivateKeyRequest: generatePrivateKeyRequest) { (response, error) in
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
 **generatePrivateKeyRequest** | [**GeneratePrivateKeyRequest**](GeneratePrivateKeyRequest.md) |  | 

### Return type

[**GeneratePrivateKey200Response**](GeneratePrivateKey200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllFees**
```swift
    open class func getAllFees(completion: @escaping (_ data: GetAllFees200Response?, _ error: Error?) -> Void)
```

Get all chain network fees (fee oracle snapshot)

Returns **all chain network fees** in one call. Reads from the fee oracle cache (no RPC during the request). Each chain returns the **full fee object** (networkFee, gasPriceGwei, congestion, estimatedTime, feeTiers for EVM, etc.) for frontend/UX. Use for dashboards or \"current fees\" screens. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get all chain network fees (fee oracle snapshot)
WalletAPI.getAllFees() { (response, error) in
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

[**GetAllFees200Response**](GetAllFees200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBalance**
```swift
    open class func getBalance(walletId: String, completion: @escaping (_ data: GetBalance200Response?, _ error: Error?) -> Void)
```

Get wallet balance

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletId = "walletId_example" // String | 

// Get wallet balance
WalletAPI.getBalance(walletId: walletId) { (response, error) in
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
 **walletId** | **String** |  | 

### Return type

[**GetBalance200Response**](GetBalance200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCancelParams**
```swift
    open class func getCancelParams(getCancelParamsRequest: GetCancelParamsRequest, completion: @escaping (_ data: GetCancelParams200Response?, _ error: Error?) -> Void)
```

Get replacement tx params for cancel (stuck EVM tx)

Returns **replacement transaction params** to cancel a stuck EVM transaction (same nonce, to=self, value=0, data=0x, higher gas). Client signs and broadcasts via POST /api/wallet/non-custodial/broadcast. Address must be registered for your organization. EVM chains only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let getCancelParamsRequest = getCancelParams_request(txId: "txId_example", txHash: "txHash_example", chain: "chain_example") // GetCancelParamsRequest | 

// Get replacement tx params for cancel (stuck EVM tx)
WalletAPI.getCancelParams(getCancelParamsRequest: getCancelParamsRequest) { (response, error) in
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
 **getCancelParamsRequest** | [**GetCancelParamsRequest**](GetCancelParamsRequest.md) |  | 

### Return type

[**GetCancelParams200Response**](GetCancelParams200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkStatus**
```swift
    open class func getNetworkStatus(completion: @escaping (_ data: GetNetworkStatus200Response?, _ error: Error?) -> Void)
```

Get network status (congestion + fee metric per chain)

Returns **network status** per chain (congestion and main fee metric). Use to show network health before sending transactions. Same data as GET /fees but trimmed to congestion + gasPriceGwei (EVM) or satPerVb (UTXO) and networkFee. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get network status (congestion + fee metric per chain)
WalletAPI.getNetworkStatus() { (response, error) in
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

[**GetNetworkStatus200Response**](GetNetworkStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonCustodialAddress**
```swift
    open class func getNonCustodialAddress(addressId: String, completion: @escaping (_ data: NonCustodialAddressResponse?, _ error: Error?) -> Void)
```

Get non-custodial address by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | 

// Get non-custodial address by ID
WalletAPI.getNonCustodialAddress(addressId: addressId) { (response, error) in
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
 **addressId** | **String** |  | 

### Return type

[**NonCustodialAddressResponse**](NonCustodialAddressResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonCustodialBalance**
```swift
    open class func getNonCustodialBalance(addressId: String, completion: @escaping (_ data: GetNonCustodialBalance200Response?, _ error: Error?) -> Void)
```

Get balance for a non-custodial address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | 

// Get balance for a non-custodial address
WalletAPI.getNonCustodialBalance(addressId: addressId) { (response, error) in
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
 **addressId** | **String** |  | 

### Return type

[**GetNonCustodialBalance200Response**](GetNonCustodialBalance200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonCustodialTransactionByHash**
```swift
    open class func getNonCustodialTransactionByHash(txHash: String, chain: Chain_getNonCustodialTransactionByHash, completion: @escaping (_ data: GetNonCustodialTransactionByHash200Response?, _ error: Error?) -> Void)
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
WalletAPI.getNonCustodialTransactionByHash(txHash: txHash, chain: chain) { (response, error) in
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

[**GetNonCustodialTransactionByHash200Response**](GetNonCustodialTransactionByHash200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonCustodialTransactions**
```swift
    open class func getNonCustodialTransactions(addressId: String, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: GetNonCustodialTransactions200Response?, _ error: Error?) -> Void)
```

Get transaction history for a non-custodial address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | 
let limit = 987 // Int |  (optional) (default to 50)
let page = 987 // Int |  (optional) (default to 1)

// Get transaction history for a non-custodial address
WalletAPI.getNonCustodialTransactions(addressId: addressId, limit: limit, page: page) { (response, error) in
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
 **addressId** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 50]
 **page** | **Int** |  | [optional] [default to 1]

### Return type

[**GetNonCustodialTransactions200Response**](GetNonCustodialTransactions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpeedUpParams**
```swift
    open class func getSpeedUpParams(getSpeedUpParamsRequest: GetSpeedUpParamsRequest, completion: @escaping (_ data: GetSpeedUpParams200Response?, _ error: Error?) -> Void)
```

Get replacement tx params for speed-up (stuck EVM tx)

Returns **replacement transaction params** for a stuck EVM transaction (same nonce, same to/value/data, higher gas). Client signs the replacement and broadcasts via POST /api/wallet/non-custodial/broadcast. Address must be registered for your organization. Use when a tx has been pending >5 min (stuck). EVM chains only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let getSpeedUpParamsRequest = getSpeedUpParams_request(txId: "txId_example", txHash: "txHash_example", chain: "chain_example") // GetSpeedUpParamsRequest | 

// Get replacement tx params for speed-up (stuck EVM tx)
WalletAPI.getSpeedUpParams(getSpeedUpParamsRequest: getSpeedUpParamsRequest) { (response, error) in
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
 **getSpeedUpParamsRequest** | [**GetSpeedUpParamsRequest**](GetSpeedUpParamsRequest.md) |  | 

### Return type

[**GetSpeedUpParams200Response**](GetSpeedUpParams200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupportedCurrencies**
```swift
    open class func getSupportedCurrencies(completion: @escaping (_ data: GetSupportedCurrencies200Response?, _ error: Error?) -> Void)
```

Get supported currencies and chains

Returns the list of **platform-supported cryptocurrencies and chains** for non-custodial wallets, broadcast, and multi-chain use. Custodial wallet is no longer used in production; this endpoint is the source of truth for supported chains and currencies. **Supported:** BTC, LTC, DOGE, ETH, ETC, CELO, SOL, TRX, TON, Polygon (MATIC), Arbitrum, Optimism, Base, BSC/BNB, Avalanche (AVAX), Cardano (ADA), USDT. Each item includes **code** (currency symbol), **name** (display name), **chain** (chain id for API calls). USDT includes **networks** (ETH, BSC, TRX, SOL, POLYGON). Use **chain** with non-custodial endpoints (register-address, broadcast, estimate-gas). Use **code** for display and fee/currency selection. This is a public endpoint - no authentication required. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get supported currencies and chains
WalletAPI.getSupportedCurrencies() { (response, error) in
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

[**GetSupportedCurrencies200Response**](GetSupportedCurrencies200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransaction**
```swift
    open class func getTransaction(transactionId: String, completion: @escaping (_ data: GetTransaction200Response?, _ error: Error?) -> Void)
```

Get transaction details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let transactionId = "transactionId_example" // String | 

// Get transaction details
WalletAPI.getTransaction(transactionId: transactionId) { (response, error) in
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
 **transactionId** | **String** |  | 

### Return type

[**GetTransaction200Response**](GetTransaction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionHistory**
```swift
    open class func getTransactionHistory(walletId: String? = nil, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: GetTransactionHistory200Response?, _ error: Error?) -> Void)
```

Get transaction history (custodial wallets; same monitoring as non-custodial)

Returns transaction history for custodial wallets. Transactions are stored and monitored the same way as non-custodial (WalletTransaction); status updates (pending, broadcast, confirmed, failed) and stuck detection apply to both. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletId = "walletId_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 20)
let page = 987 // Int |  (optional) (default to 1)

// Get transaction history (custodial wallets; same monitoring as non-custodial)
WalletAPI.getTransactionHistory(walletId: walletId, limit: limit, page: page) { (response, error) in
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
 **walletId** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 20]
 **page** | **Int** |  | [optional] [default to 1]

### Return type

[**GetTransactionHistory200Response**](GetTransactionHistory200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserWallets**
```swift
    open class func getUserWallets(projectId: String? = nil, currency: String? = nil, completion: @escaping (_ data: GetUserWallets200Response?, _ error: Error?) -> Void)
```

Get user wallets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String |  (optional)
let currency = "currency_example" // String |  (optional)

// Get user wallets
WalletAPI.getUserWallets(projectId: projectId, currency: currency) { (response, error) in
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
 **projectId** | **String** |  | [optional] 
 **currency** | **String** |  | [optional] 

### Return type

[**GetUserWallets200Response**](GetUserWallets200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletFeeConfig**
```swift
    open class func getWalletFeeConfig(projectId: String, completion: @escaping (_ data: GetWalletFeeConfig200Response?, _ error: Error?) -> Void)
```

Get project fee configuration (for non-custodial / external users)

Get project-level fee settings (enabled flag and fee percentage). **For non-custodial / external users** — e.g. when your app charges a fee on payouts or transfers. Custodial wallet is no longer used in production. Applies to all supported chains/currencies for that project. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID

// Get project fee configuration (for non-custodial / external users)
WalletAPI.getWalletFeeConfig(projectId: projectId) { (response, error) in
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

### Return type

[**GetWalletFeeConfig200Response**](GetWalletFeeConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletPrivateKey**
```swift
    open class func getWalletPrivateKey(walletId: String, completion: @escaping (_ data: GetWalletPrivateKey200Response?, _ error: Error?) -> Void)
```

Get wallet private key (WARNING: Sensitive data; for testing non-custodial)

Returns the wallet private key. **For testing non-custodial only:** use this key to sign a transaction locally, then register the wallet address via POST /api/wallet/non-custodial/register-address and broadcast the signed tx via POST /api/wallet/non-custodial/broadcast. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletId = "walletId_example" // String | 

// Get wallet private key (WARNING: Sensitive data; for testing non-custodial)
WalletAPI.getWalletPrivateKey(walletId: walletId) { (response, error) in
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
 **walletId** | **String** |  | 

### Return type

[**GetWalletPrivateKey200Response**](GetWalletPrivateKey200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWalletWebhookLogs**
```swift
    open class func getWalletWebhookLogs(webhookId: String, limit: Int? = nil, completion: @escaping (_ data: GetWalletWebhookLogs200Response?, _ error: Error?) -> Void)
```

Get webhook delivery logs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | 
let limit = 987 // Int |  (optional) (default to 50)

// Get webhook delivery logs
WalletAPI.getWalletWebhookLogs(webhookId: webhookId, limit: limit) { (response, error) in
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
 **webhookId** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**GetWalletWebhookLogs200Response**](GetWalletWebhookLogs200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNonCustodialAddresses**
```swift
    open class func listNonCustodialAddresses(chain: Chain_listNonCustodialAddresses? = nil, projectId: String? = nil, completion: @escaping (_ data: ListNonCustodialAddresses200Response?, _ error: Error?) -> Void)
```

List registered non-custodial addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let chain = "chain_example" // String | Filter by chain (optional) (optional)
let projectId = "projectId_example" // String |  (optional)

// List registered non-custodial addresses
WalletAPI.listNonCustodialAddresses(chain: chain, projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | [optional] 

### Return type

[**ListNonCustodialAddresses200Response**](ListNonCustodialAddresses200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWalletWebhooks**
```swift
    open class func listWalletWebhooks(projectId: String? = nil, completion: @escaping (_ data: ListWalletWebhooks200Response?, _ error: Error?) -> Void)
```

List wallet webhooks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String |  (optional)

// List wallet webhooks
WalletAPI.listWalletWebhooks(projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | [optional] 

### Return type

[**ListWalletWebhooks200Response**](ListWalletWebhooks200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerNonCustodialAddress**
```swift
    open class func registerNonCustodialAddress(registerNonCustodialAddressRequest: RegisterNonCustodialAddressRequest, completion: @escaping (_ data: NonCustodialAddressResponse?, _ error: Error?) -> Void)
```

Register a non-custodial wallet address

Register a public wallet address for monitoring and indexing. All key operations (generation, signing) occur client-side only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let registerNonCustodialAddressRequest = registerNonCustodialAddress_request(address: "address_example", chain: "chain_example", derivationPath: "derivationPath_example", label: "label_example", projectId: "projectId_example") // RegisterNonCustodialAddressRequest | 

// Register a non-custodial wallet address
WalletAPI.registerNonCustodialAddress(registerNonCustodialAddressRequest: registerNonCustodialAddressRequest) { (response, error) in
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
 **registerNonCustodialAddressRequest** | [**RegisterNonCustodialAddressRequest**](RegisterNonCustodialAddressRequest.md) |  | 

### Return type

[**NonCustodialAddressResponse**](NonCustodialAddressResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testWalletWebhook**
```swift
    open class func testWalletWebhook(testWalletWebhookRequest: TestWalletWebhookRequest, completion: @escaping (_ data: TestWalletWebhook200Response?, _ error: Error?) -> Void)
```

Test a webhook delivery (sends a single test payload)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let testWalletWebhookRequest = testWalletWebhook_request(url: "url_example", secret: "secret_example", projectId: "projectId_example", event: "event_example") // TestWalletWebhookRequest | 

// Test a webhook delivery (sends a single test payload)
WalletAPI.testWalletWebhook(testWalletWebhookRequest: testWalletWebhookRequest) { (response, error) in
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
 **testWalletWebhookRequest** | [**TestWalletWebhookRequest**](TestWalletWebhookRequest.md) |  | 

### Return type

[**TestWalletWebhook200Response**](TestWalletWebhook200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNonCustodialAddress**
```swift
    open class func updateNonCustodialAddress(addressId: String, updateNonCustodialAddressRequest: UpdateNonCustodialAddressRequest? = nil, completion: @escaping (_ data: UpdateNonCustodialAddress200Response?, _ error: Error?) -> Void)
```

Update a monitored wallet address

Update metadata for a registered non-custodial address. Only **label** and **derivationPath** can be updated; address and chain are immutable. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let addressId = "addressId_example" // String | 
let updateNonCustodialAddressRequest = updateNonCustodialAddress_request(label: "label_example", derivationPath: "derivationPath_example") // UpdateNonCustodialAddressRequest |  (optional)

// Update a monitored wallet address
WalletAPI.updateNonCustodialAddress(addressId: addressId, updateNonCustodialAddressRequest: updateNonCustodialAddressRequest) { (response, error) in
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
 **addressId** | **String** |  | 
 **updateNonCustodialAddressRequest** | [**UpdateNonCustodialAddressRequest**](UpdateNonCustodialAddressRequest.md) |  | [optional] 

### Return type

[**UpdateNonCustodialAddress200Response**](UpdateNonCustodialAddress200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWalletFeeConfig**
```swift
    open class func updateWalletFeeConfig(projectId: String, updateWalletFeeConfigRequest: UpdateWalletFeeConfigRequest? = nil, completion: @escaping (_ data: UpdateWalletFeeConfig200Response?, _ error: Error?) -> Void)
```

Update project fee configuration (for non-custodial / external users)

Update project-level fee settings. **For non-custodial / external users** — e.g. fee charged on payouts or transfers. Custodial wallet is no longer used in production. Applies to **all supported currencies** (BTC, ETH, BNB, LTC, SOL, TRX, USDT). **feePercentage** is a decimal: use `0.01` for 1%, `0.005` for 0.5%, etc. (min 0, max 1). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID
let updateWalletFeeConfigRequest = updateWalletFeeConfig_request(enabled: false, feePercentage: 123) // UpdateWalletFeeConfigRequest |  (optional)

// Update project fee configuration (for non-custodial / external users)
WalletAPI.updateWalletFeeConfig(projectId: projectId, updateWalletFeeConfigRequest: updateWalletFeeConfigRequest) { (response, error) in
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
 **updateWalletFeeConfigRequest** | [**UpdateWalletFeeConfigRequest**](UpdateWalletFeeConfigRequest.md) |  | [optional] 

### Return type

[**UpdateWalletFeeConfig200Response**](UpdateWalletFeeConfig200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWalletWebhook**
```swift
    open class func updateWalletWebhook(webhookId: String, updateWalletWebhookRequest: UpdateWalletWebhookRequest, completion: @escaping (_ data: UpdateWalletWebhook200Response?, _ error: Error?) -> Void)
```

Update a wallet webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let webhookId = "webhookId_example" // String | 
let updateWalletWebhookRequest = updateWalletWebhook_request(url: "url_example", events: ["events_example"], secret: "secret_example", filters: 123) // UpdateWalletWebhookRequest | 

// Update a wallet webhook
WalletAPI.updateWalletWebhook(webhookId: webhookId, updateWalletWebhookRequest: updateWalletWebhookRequest) { (response, error) in
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
 **webhookId** | **String** |  | 
 **updateWalletWebhookRequest** | [**UpdateWalletWebhookRequest**](UpdateWalletWebhookRequest.md) |  | 

### Return type

[**UpdateWalletWebhook200Response**](UpdateWalletWebhook200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateAddress**
```swift
    open class func validateAddress(validateAddressRequest: ValidateAddressRequest, completion: @escaping (_ data: ValidateAddress200Response?, _ error: Error?) -> Void)
```

Validate cryptocurrency address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let validateAddressRequest = validateAddress_request(currency: "currency_example", address: "address_example") // ValidateAddressRequest | 

// Validate cryptocurrency address
WalletAPI.validateAddress(validateAddressRequest: validateAddressRequest) { (response, error) in
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
 **validateAddressRequest** | [**ValidateAddressRequest**](ValidateAddressRequest.md) |  | 

### Return type

[**ValidateAddress200Response**](ValidateAddress200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **withdraw**
```swift
    open class func withdraw(walletId: String, withdrawRequest: WithdrawRequest, completion: @escaping (_ data: Withdraw200Response?, _ error: Error?) -> Void)
```

Prepare withdrawal (semi-transaction; broadcast via non-custodial)

**Semi-transaction:** Builds and signs the withdrawal but does **not** broadcast. Returns `signedTx`, `chain`, and `fromAddress` so the client can broadcast via POST /api/wallet/non-custodial/broadcast. The wallet address must be registered for your organization before broadcasting. Supports all platform chains/currencies (EVM, UTXO, Tron, Solana, USDT on ETH/BSC/TRX/SOL/POLYGON). Use for testing the non-custodial flow: create custodial wallet, get private key, register address, then call withdraw to get signed tx and broadcast it manually. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let walletId = "walletId_example" // String | 
let withdrawRequest = withdraw_request(toAddress: "toAddress_example", amount: 123, network: "network_example", options: 123) // WithdrawRequest | 

// Prepare withdrawal (semi-transaction; broadcast via non-custodial)
WalletAPI.withdraw(walletId: walletId, withdrawRequest: withdrawRequest) { (response, error) in
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
 **walletId** | **String** |  | 
 **withdrawRequest** | [**WithdrawRequest**](WithdrawRequest.md) |  | 

### Return type

[**Withdraw200Response**](Withdraw200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

