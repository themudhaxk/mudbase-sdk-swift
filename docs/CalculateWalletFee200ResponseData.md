# CalculateWalletFee200ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | Request currency / native currency for the chain | [optional] 
**network** | **String** |  | [optional] 
**amount** | **Double** |  | [optional] 
**chain** | **String** | Chain id used for estimation | [optional] 
**networkFee** | **String** | Human-readable network fee from blockchain | [optional] 
**estimatedTime** | **String** |  | [optional] 
**congestion** | **String** | Network congestion level (EVM from gas price; UTXO from sat/vB) | [optional] 
**gasLimit** | **String** | (EVM only) Gas limit | [optional] 
**gasPrice** | **String** | (EVM only) Gas price in wei | [optional] 
**gasPriceGwei** | **Double** | (EVM only) Gas price in Gwei | [optional] 
**estimatedCost** | **String** | (EVM only) Cost in wei | [optional] 
**satPerVb** | **Int** | (UTXO only) Satoshis per vbyte | [optional] 
**feeSat** | **Int** | (UTXO only) Fee in satoshis | [optional] 
**lamports** | **Int** | (Solana only) Fee in lamports | [optional] 
**feeTiers** | [String: CalculateWalletFee200ResponseDataFeeTiersValue] | (EVM only) slow / normal / fast tiers; each has gasPriceGwei, networkFee | [optional] 
**gasSpikeWarning** | **Bool** | True when current gas is ≥5× chain minimum (consider warning user) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


