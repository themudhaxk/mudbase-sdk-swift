# PushNotificationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokens** | **[String]** | Registered device push tokens to deliver to (device-token channel). | [optional] 
**endpoints** | **[String]** | Registered Web Push subscription endpoints to deliver to (native Web Push channel).  | [optional] 
**userIds** | **[String]** | Deliver to every Web Push subscription registered under these user ids (native Web Push channel).  | [optional] 
**webPushBroadcast** | **Bool** | When true, deliver to every enabled Web Push subscription registered to the project (native Web Push channel). Ignored when the project has not enabled native Web Push.  | [optional] 
**title** | **String** |  | 
**body** | **String** |  | 
**data** | **AnyCodable** |  | [optional] 
**imageUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


