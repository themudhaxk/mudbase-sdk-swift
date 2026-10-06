# ConfigureWebhookRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhookUrl** | **String** | URL to receive webhook payloads; set to null or omit to disable | [optional] 
**webhookSecret** | **String** | Optional secret for signing payloads (e.g. X-Webhook-Signature) | [optional] 
**webhookEvents** | **[String]** | Event types to send (e.g. collection.insert, collection.update) | [optional] 
**webhookVersion** | **String** | Version string for payload format | [optional] 
**transformations** | [GetWebhookConfig200ResponseDataTransformationsInner] | Transformation rules to apply to payloads before delivery | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


