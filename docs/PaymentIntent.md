# PaymentIntent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**paymentId** | **String** | Unique payment identifier | [optional] 
**merchant** | **String** | Merchant ID | [optional] 
**project** | **String** | Project ID | [optional] 
**amount** | **Double** | Payment amount | [optional] 
**currency** | **String** |  | [optional] [default to "USD"]
**network** | **String** |  | [optional] 
**token** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**finalityStatus** | **String** |  | [optional] 
**totalDue** | **Double** | Total amount due including fees | [optional] 
**commission** | **Double** | Platform commission | [optional] 
**merchantReceives** | **Double** | Amount merchant receives after commission | [optional] 
**expiresAt** | **Date** |  | [optional] 
**metadata** | **AnyCodable** | Additional metadata | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


