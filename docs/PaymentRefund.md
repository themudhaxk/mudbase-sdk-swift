# PaymentRefund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**paymentIntent** | **String** | Payment intent ID | [optional] 
**merchant** | **String** | Merchant ID | [optional] 
**amount** | **Double** | Refund amount | [optional] 
**reason** | **String** | Refund reason | [optional] 
**status** | **String** |  | [optional] 
**isCrossChain** | **Bool** | True if cross-chain refund | [optional] [default to false]
**sourceNetwork** | **String** | Source network for refund | [optional] 
**targetNetwork** | **String** | Target network for cross-chain refund | [optional] 
**approvedBy** | **String** | User ID who approved | [optional] 
**approvedAt** | **Date** |  | [optional] 
**refundTx** | **String** | Refund transaction hash | [optional] 
**refundedAt** | **Date** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


