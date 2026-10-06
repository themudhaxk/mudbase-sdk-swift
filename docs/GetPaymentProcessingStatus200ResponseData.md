# GetPaymentProcessingStatus200ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**onboarded** | **Bool** |  | [optional] 
**enabled** | **Bool** | Whether payment collection is actually toggled on (implies approved). | [optional] 
**approvalStatus** | **String** | not_submitted, pending_review, approved, or rejected. | [optional] 
**status** | **String** | Derived overall status for the console to render: not_onboarded, pending_review, rejected, disabled, or active. | [optional] 
**rejectionReason** | **String** |  | [optional] 
**stablecoin** | [**GetPaymentProcessingStatus200ResponseDataStablecoin**](GetPaymentProcessingStatus200ResponseDataStablecoin.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


