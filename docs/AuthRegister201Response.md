# AuthRegister201Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** |  | [optional] 
**requireVerification** | **Bool** | true when email verification is required; no token in response | [optional] 
**token** | **String** | Present only when requireEmailVerification is false | [optional] 
**refreshToken** | **String** | Present only when requireEmailVerification is false | [optional] 
**expiresIn** | **Int** | Present only when token is returned | [optional] 
**user** | [**AuthRegister201ResponseUser**](AuthRegister201ResponseUser.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


