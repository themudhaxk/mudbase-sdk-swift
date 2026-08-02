# WebhookLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | MongoDB id — use as &#x60;webhookId&#x60; path param for retry | [optional] 
**org** | **String** | Organization that owns the project | [optional] 
**project** | **String** | Project id this delivery belongs to | [optional] 
**webhookId** | **String** | Internal correlation string (e.g. manual-173…), not the retry path id | [optional] 
**url** | **String** |  | [optional] 
**method** | **String** |  | [optional] 
**event** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**payload** | **AnyCodable** | JSON body sent to your endpoint | [optional] 
**headers** | **AnyCodable** | Outbound request headers (e.g. X-MUDBASE-Event, Content-Type) | [optional] 
**response** | [**WebhookLogResponse**](WebhookLogResponse.md) |  | [optional] 
**duration** | **Int** | Round-trip time in milliseconds | [optional] 
**attempts** | **Int** |  | [optional] 
**maxAttempts** | **Int** |  | [optional] 
**error** | **String** |  | [optional] 
**nextRetry** | **Date** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


