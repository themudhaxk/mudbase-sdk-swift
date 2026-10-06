# InitializeOrgPlanCheckoutRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**planName** | **String** | Plan id from GET /api/billing/plans (excludes free and enterprise) | 
**billingCycle** | **String** | Yearly &#x3D; 2 months free (~16.67% discount) | [optional] [default to .monthly]
**redirectUrl** | **String** | Override redirect after payment (default FRONTEND_URL/billing/callback) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


