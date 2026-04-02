# UsersAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersChangePassword**](UsersAPI.md#userschangepassword) | **PATCH** /api/users/password | Change password
[**usersDisable2fa**](UsersAPI.md#usersdisable2fa) | **POST** /api/users/2fa/disable | Disable 2FA
[**usersEraseData**](UsersAPI.md#userserasedata) | **POST** /api/users/me/erase | Delete user data (GDPR Article 17)
[**usersExportData**](UsersAPI.md#usersexportdata) | **GET** /api/users/me/export | Export user data (GDPR Article 15)
[**usersGet**](UsersAPI.md#usersget) | **GET** /api/users/me | Get current user profile
[**usersLinkOAuthProvider**](UsersAPI.md#userslinkoauthprovider) | **GET** /api/users/me/oauth-providers/link/{provider} | Link OAuth provider to account
[**usersListOAuthProviders**](UsersAPI.md#userslistoauthproviders) | **GET** /api/users/me/oauth-providers | List linked OAuth providers
[**usersResendVerification**](UsersAPI.md#usersresendverification) | **POST** /api/users/resend-verification | Resend verification email
[**usersSetup2fa**](UsersAPI.md#userssetup2fa) | **POST** /api/users/2fa/setup | Initiate two-factor authentication setup (secret, QR code, backup codes)
[**usersUnlinkOAuthProvider**](UsersAPI.md#usersunlinkoauthprovider) | **DELETE** /api/users/me/oauth-providers/{provider} | Unlink OAuth provider
[**usersUpdate**](UsersAPI.md#usersupdate) | **PATCH** /api/users/update | Update user profile
[**usersVerify2fa**](UsersAPI.md#usersverify2fa) | **POST** /api/users/2fa/verify | Verify and enable 2FA
[**usersVerifyEmail**](UsersAPI.md#usersverifyemail) | **POST** /api/users/verify-email | Verify email address (with optional project context)


# **usersChangePassword**
```swift
    open class func usersChangePassword(changePasswordRequest: ChangePasswordRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Change password

Change the current user's password. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let changePasswordRequest = ChangePasswordRequest(currentPassword: "currentPassword_example", newPassword: "newPassword_example") // ChangePasswordRequest | Current password and new password.

// Change password
UsersAPI.usersChangePassword(changePasswordRequest: changePasswordRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md) | Current password and new password. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDisable2fa**
```swift
    open class func usersDisable2fa(usersDisable2faRequest: UsersDisable2faRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Disable 2FA

Disable two-factor authentication for the current user. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let usersDisable2faRequest = users_disable2fa_request(password: "password_example", token: "token_example") // UsersDisable2faRequest | Current password and one-time code to confirm disable.

// Disable 2FA
UsersAPI.usersDisable2fa(usersDisable2faRequest: usersDisable2faRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersDisable2faRequest** | [**UsersDisable2faRequest**](UsersDisable2faRequest.md) | Current password and one-time code to confirm disable. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersEraseData**
```swift
    open class func usersEraseData(usersEraseDataRequest: UsersEraseDataRequest, completion: @escaping (_ data: UsersEraseData200Response?, _ error: Error?) -> Void)
```

Delete user data (GDPR Article 17)

Request account erasure (right to be forgotten). Anonymizes PII and deactivates account with 7-day grace period. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let usersEraseDataRequest = users_eraseData_request(confirmation: "confirmation_example", reason: "reason_example") // UsersEraseDataRequest | Confirmation string (DELETE_MY_ACCOUNT) and optional reason for erasure.

// Delete user data (GDPR Article 17)
UsersAPI.usersEraseData(usersEraseDataRequest: usersEraseDataRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersEraseDataRequest** | [**UsersEraseDataRequest**](UsersEraseDataRequest.md) | Confirmation string (DELETE_MY_ACCOUNT) and optional reason for erasure. | 

### Return type

[**UsersEraseData200Response**](UsersEraseData200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersExportData**
```swift
    open class func usersExportData(completion: @escaping (_ data: UsersExportData200Response?, _ error: Error?) -> Void)
```

Export user data (GDPR Article 15)

Export all user data in JSON format for GDPR data portability compliance. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Export user data (GDPR Article 15)
UsersAPI.usersExportData() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UsersExportData200Response**](UsersExportData200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGet**
```swift
    open class func usersGet(completion: @escaping (_ data: UsersGet200Response?, _ error: Error?) -> Void)
```

Get current user profile

Get the current authenticated user's profile. Accepts JWT Bearer token (BearerToken). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get current user profile
UsersAPI.usersGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UsersGet200Response**](UsersGet200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersLinkOAuthProvider**
```swift
    open class func usersLinkOAuthProvider(provider: Provider_usersLinkOAuthProvider, projectId: String? = nil, completion: @escaping (_ data: UsersLinkOAuthProvider200Response?, _ error: Error?) -> Void)
```

Link OAuth provider to account

Initiate OAuth flow to link a new provider to the current account. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | OAuth provider to link (e.g. google, github).
let projectId = "projectId_example" // String | Project ID for the OAuth link context. (optional)

// Link OAuth provider to account
UsersAPI.usersLinkOAuthProvider(provider: provider, projectId: projectId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String** | OAuth provider to link (e.g. google, github). | 
 **projectId** | **String** | Project ID for the OAuth link context. | [optional] 

### Return type

[**UsersLinkOAuthProvider200Response**](UsersLinkOAuthProvider200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListOAuthProviders**
```swift
    open class func usersListOAuthProviders(completion: @escaping (_ data: UsersListOAuthProviders200Response?, _ error: Error?) -> Void)
```

List linked OAuth providers

Get all OAuth providers linked to the current user's account. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List linked OAuth providers
UsersAPI.usersListOAuthProviders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UsersListOAuthProviders200Response**](UsersListOAuthProviders200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersResendVerification**
```swift
    open class func usersResendVerification(completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Resend verification email

Sends a new verification email to the authenticated user. Rate limited (e.g. 3 requests per 15 minutes per user). For app users the link includes project context. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Resend verification email
UsersAPI.usersResendVerification() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersSetup2fa**
```swift
    open class func usersSetup2fa(completion: @escaping (_ data: TwoFASetupResponse?, _ error: Error?) -> Void)
```

Initiate two-factor authentication setup (secret, QR code, backup codes)

Initiates two-factor authentication setup for the current user. Returns a secret, QR code, and manual entry key for the user to add to an authenticator app. Requires JWT Bearer token (BearerToken). API keys are not supported. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Initiate two-factor authentication setup (secret, QR code, backup codes)
UsersAPI.usersSetup2fa() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TwoFASetupResponse**](TwoFASetupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUnlinkOAuthProvider**
```swift
    open class func usersUnlinkOAuthProvider(provider: Provider_usersUnlinkOAuthProvider, completion: @escaping (_ data: UsersUnlinkOAuthProvider200Response?, _ error: Error?) -> Void)
```

Unlink OAuth provider

Remove an OAuth provider from the current account. Cannot unlink if it's the only authentication method. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | OAuth provider to unlink (e.g. google, github).

// Unlink OAuth provider
UsersAPI.usersUnlinkOAuthProvider(provider: provider) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String** | OAuth provider to unlink (e.g. google, github). | 

### Return type

[**UsersUnlinkOAuthProvider200Response**](UsersUnlinkOAuthProvider200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdate**
```swift
    open class func usersUpdate(updateUserRequest: UpdateUserRequest, completion: @escaping (_ data: UsersUpdate200Response?, _ error: Error?) -> Void)
```

Update user profile

Update the current user's profile. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let updateUserRequest = UpdateUserRequest(firstName: "firstName_example", lastName: "lastName_example", avatar: "avatar_example") // UpdateUserRequest | Profile fields to update (firstName, lastName, avatar).

// Update user profile
UsersAPI.usersUpdate(updateUserRequest: updateUserRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) | Profile fields to update (firstName, lastName, avatar). | 

### Return type

[**UsersUpdate200Response**](UsersUpdate200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVerify2fa**
```swift
    open class func usersVerify2fa(usersVerify2faRequest: UsersVerify2faRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify and enable 2FA

Verify and enable two-factor authentication for the current user. Accepts JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let usersVerify2faRequest = users_verify2fa_request(token: "token_example") // UsersVerify2faRequest | One-time code from the authenticator app.

// Verify and enable 2FA
UsersAPI.usersVerify2fa(usersVerify2faRequest: usersVerify2faRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersVerify2faRequest** | [**UsersVerify2faRequest**](UsersVerify2faRequest.md) | One-time code from the authenticator app. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVerifyEmail**
```swift
    open class func usersVerifyEmail(authVerifyEmailRequest: AuthVerifyEmailRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify email address (with optional project context)

Verifies the user's email using the token from the link sent at signup. Supports general and project-scoped signups; the token comes from the verification link (e.g. `verify-email?token=...` or `verify-email?token=...&project=...`). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authVerifyEmailRequest = auth_verifyEmail_request(token: "token_example", projectId: "projectId_example") // AuthVerifyEmailRequest | Verification token from the email link; optional projectId for project context.

// Verify email address (with optional project context)
UsersAPI.usersVerifyEmail(authVerifyEmailRequest: authVerifyEmailRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authVerifyEmailRequest** | [**AuthVerifyEmailRequest**](AuthVerifyEmailRequest.md) | Verification token from the email link; optional projectId for project context. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

