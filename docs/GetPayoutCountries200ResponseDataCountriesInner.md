# GetPayoutCountries200ResponseDataCountriesInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | ISO-3166 alpha-2 country code (e.g. NG, GH, KE, US, GB). | [optional] 
**name** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**banksListSupported** | **Bool** | Whether GET /payment-processing/banks returns a live bank list for this country. | [optional] 
**mobileMoney** | **Bool** |  | [optional] 
**international** | **Bool** | True for a market whose settlement rail requires an account-level capability beyond the standard local-rail onboarding (currently US, GB). | [optional] 
**fields** | [GetPayoutCountries200ResponseDataCountriesInnerFieldsInner] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


