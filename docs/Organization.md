# Organization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**logo** | **String** | Optional logo URL. Org-related emails use the platform logo (env); this field is for legacy or future UI use only. | [optional] 
**website** | **String** |  | [optional] 
**plan** | [**Plan**](Plan.md) |  | [optional] 
**usage** | [**Usage**](Usage.md) |  | [optional] 
**limits** | [**Limits**](Limits.md) |  | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**settings** | **AnyCodable** | May include customDomainAddon (optional billing/legacy flag; not required for custom domains on Growth/Scale). | [optional] 
**deploymentType** | **String** |  | [optional] 
**dedicated** | **AnyCodable** | Dedicated API/DB routing; may include edgeTlsStatus, infraMeteringLastReportAt. | [optional] 
**preferredRegion** | **String** |  | [optional] 
**infrastructureEnvironments** | **[AnyCodable]** |  | [optional] 
**allowedDomains** | **[AnyCodable]** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


