# TriggerWebhookRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **String** | Target project (must belong to your org) | 
**url** | **String** | HTTPS URL validated against SSRF rules | 
**event** | **String** | Event name (sent as X-MUDBASE-Event) | 
**payload** | **AnyCodable** | JSON body POSTed to your endpoint | 
**method** | **String** |  | [optional] [default to .post]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


