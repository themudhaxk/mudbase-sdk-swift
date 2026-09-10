# AdminBillingCheckoutLinkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **String** |  | 
**billingCycle** | **String** |  | [optional] [default to .monthly]
**amountCents** | **Int** | Monthly amount in cents (overrides catalog; enterprise default is contract) | [optional] 
**chargeAmountCents** | **Int** | Exact charge in cents for this checkout (overrides monthly math) | [optional] 
**currency** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**redirectUrl** | **String** |  | [optional] 
**sendEmail** | **Bool** |  | [optional] [default to false]
**toEmail** | **String** |  | [optional] 
**message** | **String** | Optional note shown in org_billing_checkout email | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


