# PushSentResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **Bool** | True when at least one recipient across any channel was delivered to. | [optional] 
**messageId** | **String** |  | [optional] 
**successCount** | **Int** |  | [optional] 
**failureCount** | **Int** |  | [optional] 
**channels** | [**PushSentResponseDataChannels**](PushSentResponseDataChannels.md) |  | [optional] 
**rejectedTokens** | **[String]** | Device tokens that were passed but are not registered to the project, and so were dropped. Omitted when empty.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


