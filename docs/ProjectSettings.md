# ProjectSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowAnonymousAuth** | **Bool** | Allow anonymous (unauthenticated) users | [optional] [default to true]
**requireEmailVerification** | **Bool** | When true, users who sign up with email do not receive a token until they verify their email; login is blocked until verified. | [optional] [default to true]
**requirePhoneVerification** | **Bool** | When true, users who sign in with phone (e.g. OTP) must have verified their phone before receiving a token. | [optional] [default to false]
**defaultUserAccountStatus** | **String** | Default account status for new signups. **active** &#x3D; user can use the app immediately. **pending** &#x3D; user must be approved by an org owner/admin (PATCH org user status to active) before they can perform protected operations.  | [optional] [default to .active]
**enableRealtime** | **Bool** |  | [optional] [default to true]
**enableStorage** | **Bool** |  | [optional] [default to true]
**enableFunctions** | **Bool** |  | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


