# WebPushConfigResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Bool** | Whether native Web Push is enabled for this project. | [optional] 
**hasKeys** | **Bool** | Whether a VAPID keypair has been provisioned. | [optional] 
**publicKey** | **String** | The VAPID application-server public key clients subscribe with. Null when native Web Push is not enabled.  | [optional] 
**vapidSubject** | **String** | RFC 8292 contact subject (a &#x60;mailto:&#x60; address or &#x60;https&#x60; URL). | [optional] 
**generatedAt** | **Date** | When the current VAPID keypair was generated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


