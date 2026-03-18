# CreateApiKeyRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**projectId** | **String** | MongoDB ObjectId of the project | 
**permissions** | [ApiKeyPermission] | Optional. Permission objects (resource + actions). Omit or pass [] for full access (all resources and actions). Include only the entries you want; remove resources or actions to restrict the key. | [optional] 
**rateLimit** | [**RateLimit**](RateLimit.md) |  | [optional] 
**expiresAt** | **Date** | Optional. When provided, must be a valid ISO 8601 date-time in the future. Omit for no expiration. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


