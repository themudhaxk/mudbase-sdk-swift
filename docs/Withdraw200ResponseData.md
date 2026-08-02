# Withdraw200ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactionId** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**signedTx** | **String** | Signed transaction (hex for EVM/UTXO, base64 for Solana, object for Tron). Send as-is in broadcast body. | [optional] 
**chain** | **String** | Chain id for broadcast (e.g. ethereum, bitcoin, solana). | [optional] 
**fromAddress** | **String** | Sender address; must be registered for org when broadcasting. | [optional] 
**currency** | **String** |  | [optional] 
**amount** | **Double** |  | [optional] 
**toAddress** | **String** |  | [optional] 
**message** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


