# UsersAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMeBootstrapGet**](UsersAPI.md#apimebootstrapget) | **GET** /api/me/bootstrap | Dashboard bootstrap (session + orgs + default org + projects)
[**changePassword**](UsersAPI.md#changepassword) | **PATCH** /api/users/password | Change password
[**disable2FA**](UsersAPI.md#disable2fa) | **POST** /api/users/2fa/disable | Disable 2FA
[**eraseUserData**](UsersAPI.md#eraseuserdata) | **POST** /api/users/me/erase | Delete user data (GDPR Article 17)
[**exportUserData**](UsersAPI.md#exportuserdata) | **GET** /api/users/me/export | Export user data (GDPR Article 15)
[**getCurrentUser**](UsersAPI.md#getcurrentuser) | **GET** /api/users/me | Get current user profile
[**linkOAuthProvider**](UsersAPI.md#linkoauthprovider) | **GET** /api/users/me/oauth-providers/link/{provider} | Link OAuth provider to account
[**listOAuthProviders**](UsersAPI.md#listoauthproviders) | **GET** /api/users/me/oauth-providers | List linked OAuth providers
[**resendVerificationEmail**](UsersAPI.md#resendverificationemail) | **POST** /api/users/resend-verification | Resend verification email
[**setup2FA**](UsersAPI.md#setup2fa) | **POST** /api/users/2fa/setup | Setup 2FA
[**unlinkOAuthProvider**](UsersAPI.md#unlinkoauthprovider) | **DELETE** /api/users/me/oauth-providers/{provider} | Unlink OAuth provider
[**updateUserProfile**](UsersAPI.md#updateuserprofile) | **PATCH** /api/users/update | Update user profile
[**verify2FA**](UsersAPI.md#verify2fa) | **POST** /api/users/2fa/verify | Verify and enable 2FA
[**verifyEmail**](UsersAPI.md#verifyemail) | **POST** /api/users/verify-email | Verify email address (organization and project)


# **apiMeBootstrapGet**
```swift
    open class func apiMeBootstrapGet(completion: @escaping (_ data: ApiMeBootstrapGet200Response?, _ error: Error?) -> Void)
```

Dashboard bootstrap (session + orgs + default org + projects)

Consolidated dashboard warmup in a single round-trip. Returns the session user, the user's organizations, the resolved default organization, and that org's projects. Shapes match GET /api/auth/session, GET /api/orgs and GET /api/projects.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Dashboard bootstrap (session + orgs + default org + projects)
UsersAPI.apiMeBootstrapGet() { (response, error) in
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

[**ApiMeBootstrapGet200Response**](ApiMeBootstrapGet200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changePassword**
```swift
    open class func changePassword(changePasswordRequest: ChangePasswordRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Change password

Change the current user's password. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let changePasswordRequest = ChangePasswordRequest(currentPassword: "currentPassword_example", newPassword: "newPassword_example") // ChangePasswordRequest | 

// Change password
UsersAPI.changePassword(changePasswordRequest: changePasswordRequest) { (response, error) in
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
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable2FA**
```swift
    open class func disable2FA(disable2FARequest: Disable2FARequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Disable 2FA

Disable two-factor authentication for the current user. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let disable2FARequest = disable2FA_request(password: "password_example", token: "token_example") // Disable2FARequest | 

// Disable 2FA
UsersAPI.disable2FA(disable2FARequest: disable2FARequest) { (response, error) in
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
 **disable2FARequest** | [**Disable2FARequest**](Disable2FARequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eraseUserData**
```swift
    open class func eraseUserData(eraseUserDataRequest: EraseUserDataRequest, completion: @escaping (_ data: EraseUserData200Response?, _ error: Error?) -> Void)
```

Delete user data (GDPR Article 17)

Request account erasure (right to be forgotten). Anonymizes PII, revokes all sessions and API keys, and disables the account immediately (not a grace period - the effect is immediate and irreversible). Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint.  Requires re-proving your current password (skipped only for OAuth-only accounts with no password set) and, if 2FA is enabled, a fresh TOTP code - the same step-up re-authentication already required by the less-destructive `PATCH /api/users/password` and `POST /api/users/2fa/disable`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let eraseUserDataRequest = eraseUserData_request(confirm: "confirm_example", currentPassword: "currentPassword_example", totpToken: "totpToken_example") // EraseUserDataRequest | 

// Delete user data (GDPR Article 17)
UsersAPI.eraseUserData(eraseUserDataRequest: eraseUserDataRequest) { (response, error) in
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
 **eraseUserDataRequest** | [**EraseUserDataRequest**](EraseUserDataRequest.md) |  | 

### Return type

[**EraseUserData200Response**](EraseUserData200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportUserData**
```swift
    open class func exportUserData(completion: @escaping (_ data: ExportUserData200Response?, _ error: Error?) -> Void)
```

Export user data (GDPR Article 15)

Export all user data in JSON format for GDPR data portability compliance. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Export user data (GDPR Article 15)
UsersAPI.exportUserData() { (response, error) in
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

[**ExportUserData200Response**](ExportUserData200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUser**
```swift
    open class func getCurrentUser(completion: @escaping (_ data: GetCurrentUser200Response?, _ error: Error?) -> Void)
```

Get current user profile

Get the current authenticated user's profile. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get current user profile
UsersAPI.getCurrentUser() { (response, error) in
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

[**GetCurrentUser200Response**](GetCurrentUser200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkOAuthProvider**
```swift
    open class func linkOAuthProvider(provider: Provider_linkOAuthProvider, projectId: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Link OAuth provider to account

Initiate OAuth flow to link a new provider to the current account. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 
let projectId = "projectId_example" // String |  (optional)

// Link OAuth provider to account
UsersAPI.linkOAuthProvider(provider: provider, projectId: projectId) { (response, error) in
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
 **provider** | **String** |  | 
 **projectId** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOAuthProviders**
```swift
    open class func listOAuthProviders(completion: @escaping (_ data: ListOAuthProviders200Response?, _ error: Error?) -> Void)
```

List linked OAuth providers

Get all OAuth providers linked to the current user's account. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List linked OAuth providers
UsersAPI.listOAuthProviders() { (response, error) in
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

[**ListOAuthProviders200Response**](ListOAuthProviders200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendVerificationEmail**
```swift
    open class func resendVerificationEmail(completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Resend verification email

Sends a new verification email to the authenticated user. Rate limited (e.g. 3 requests per 15 minutes per user). For project-scoped users the link includes project context. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Resend verification email
UsersAPI.resendVerificationEmail() { (response, error) in
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

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setup2FA**
```swift
    open class func setup2FA(completion: @escaping (_ data: TwoFASetupResponse?, _ error: Error?) -> Void)
```

Setup 2FA

Setup two-factor authentication for the current user. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Setup 2FA
UsersAPI.setup2FA() { (response, error) in
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

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkOAuthProvider**
```swift
    open class func unlinkOAuthProvider(provider: Provider_unlinkOAuthProvider, completion: @escaping (_ data: UnlinkOAuthProvider200Response?, _ error: Error?) -> Void)
```

Unlink OAuth provider

Remove an OAuth provider from the current account. Cannot unlink if it's the only authentication method. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 

// Unlink OAuth provider
UsersAPI.unlinkOAuthProvider(provider: provider) { (response, error) in
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
 **provider** | **String** |  | 

### Return type

[**UnlinkOAuthProvider200Response**](UnlinkOAuthProvider200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfile**
```swift
    open class func updateUserProfile(updateUserRequest: UpdateUserRequest, completion: @escaping (_ data: UpdateUserProfile200Response?, _ error: Error?) -> Void)
```

Update user profile

Update the current user's profile. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let updateUserRequest = UpdateUserRequest(firstName: "firstName_example", lastName: "lastName_example", avatar: "avatar_example") // UpdateUserRequest | 

// Update user profile
UsersAPI.updateUserProfile(updateUserRequest: updateUserRequest) { (response, error) in
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
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md) |  | 

### Return type

[**UpdateUserProfile200Response**](UpdateUserProfile200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify2FA**
```swift
    open class func verify2FA(verify2FARequest: Verify2FARequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify and enable 2FA

Verify and enable two-factor authentication for the current user. Accepts JWT Bearer token (OrgBearerAuth or ProjectBearerAuth - both are the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let verify2FARequest = verify2FA_request(token: "token_example") // Verify2FARequest | 

// Verify and enable 2FA
UsersAPI.verify2FA(verify2FARequest: verify2FARequest) { (response, error) in
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
 **verify2FARequest** | [**Verify2FARequest**](Verify2FARequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmail**
```swift
    open class func verifyEmail(verifyEmailAuthRequest: VerifyEmailAuthRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify email address (organization and project)

Verifies the user's email using the token from the link sent at signup. Works for both organization (platform) and project-based signups; the token is from the verification link (e.g. verify-email?token=... for org, or verify-email?token=...&project=... for project). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let verifyEmailAuthRequest = verifyEmailAuth_request(token: "token_example", projectId: "projectId_example") // VerifyEmailAuthRequest | 

// Verify email address (organization and project)
UsersAPI.verifyEmail(verifyEmailAuthRequest: verifyEmailAuthRequest) { (response, error) in
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
 **verifyEmailAuthRequest** | [**VerifyEmailAuthRequest**](VerifyEmailAuthRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

