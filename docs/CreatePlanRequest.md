# CreatePlanRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Display name; also used to generate a unique slug per project. | 
**description** | **String** |  | [optional] 
**price** | **Double** | Amount for the chosen interval. The server fills the other billing period (e.g. yearly ≈ monthly × 12 × 0.8 when interval is month).  | 
**currency** | **String** | ISO currency code (stored lowercased). | 
**interval** | **String** | Which period &#x60;price&#x60; applies to; drives pricing.monthly vs pricing.yearly. | 
**features** | [CreatePlanRequestFeaturesInner] | Strings become &#x60;{ name, included: true }&#x60;. You may send full feature objects instead.  | [optional] 
**limits** | [**CreatePlanRequestLimits**](CreatePlanRequestLimits.md) |  | [optional] 
**trial** | [**CreatePlanRequestTrial**](CreatePlanRequestTrial.md) |  | [optional] 
**isActive** | **Bool** |  | [optional] [default to true]
**isDefault** | **Bool** | Only one default plan per project is allowed server-side. | [optional] [default to false]
**sortOrder** | **Double** | Lower numbers list first in UIs. | [optional] 
**metadata** | **[String: AnyCodable]** | Arbitrary key/value data stored on the plan document. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


