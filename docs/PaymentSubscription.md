# PaymentSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**merchant** | **String** | Merchant ID | [optional] 
**project** | **String** | Project ID | [optional] 
**amount** | **Double** | Subscription amount | [optional] 
**interval** | **String** |  | [optional] 
**network** | **String** |  | [optional] 
**token** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**nextPaymentAt** | **Date** | Next payment due date | [optional] 
**gracePeriodDays** | **Int** | Grace period in days | [optional] [default to 3]
**earlyPaymentAllowed** | **Bool** |  | [optional] [default to true]
**latePaymentAllowed** | **Bool** |  | [optional] [default to true]
**prorationEnabled** | **Bool** |  | [optional] [default to false]
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


