# AuthResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** |  | [optional] 
**token** | **String** | JWT access token (use in Authorization Bearer header) | [optional] 
**refreshToken** | **String** | JWT refresh token (use with POST /api/auth/refresh to get new token pair) | [optional] 
**expiresIn** | **Int** | Access token TTL in seconds (e.g. 1800 for 30 minutes) | [optional] 
**user** | [**User**](User.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


