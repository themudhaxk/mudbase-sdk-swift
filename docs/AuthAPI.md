# AuthAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authConfirmPasswordReset**](AuthAPI.md#authconfirmpasswordreset) | **POST** /api/auth/local/password-reset/confirm | Confirm password reset with OTP
[**authConvertAnonymous**](AuthAPI.md#authconvertanonymous) | **POST** /api/auth/anonymous/convert | Convert anonymous account to full account
[**authCreateAnonymous**](AuthAPI.md#authcreateanonymous) | **POST** /api/auth/anonymous | Create anonymous session
[**authGetOAuthProviders**](AuthAPI.md#authgetoauthproviders) | **GET** /api/auth/oauth/providers/available | Get all available OAuth providers
[**authGetSession**](AuthAPI.md#authgetsession) | **GET** /api/auth/local/session | Get current session
[**authLogin**](AuthAPI.md#authlogin) | **POST** /api/auth/local/login | Login user
[**authLogout**](AuthAPI.md#authlogout) | **POST** /api/auth/local/logout | Logout user
[**authOauthCallback**](AuthAPI.md#authoauthcallback) | **GET** /api/auth/oauth/callback/{provider} | OAuth callback handler
[**authOauthInitiate**](AuthAPI.md#authoauthinitiate) | **GET** /api/auth/oauth/{provider}/{projectId} | Initiate OAuth authentication
[**authRefresh**](AuthAPI.md#authrefresh) | **POST** /api/auth/refresh | Refresh access token (dashboard and project)
[**authRegister**](AuthAPI.md#authregister) | **POST** /api/auth/local/register | Register new user
[**authRequestPasswordReset**](AuthAPI.md#authrequestpasswordreset) | **POST** /api/auth/local/password-reset | Request password reset (OTP)
[**authResendVerification**](AuthAPI.md#authresendverification) | **POST** /api/auth/resend-verification | Resend verification email (no auth)
[**authResetPassword**](AuthAPI.md#authresetpassword) | **POST** /api/auth/local/password-reset/{token} | Reset password with token (legacy)
[**authSendMagicLink**](AuthAPI.md#authsendmagiclink) | **POST** /api/auth/magic-link/send | Send magic link
[**authSendOtp**](AuthAPI.md#authsendotp) | **POST** /api/auth/otp/send | Send OTP code
[**authVerifyEmail**](AuthAPI.md#authverifyemail) | **POST** /api/auth/verify-email | Verify email address (no auth)
[**authVerifyMagicLink**](AuthAPI.md#authverifymagiclink) | **POST** /api/auth/magic-link/verify | Verify magic link
[**authVerifyOtp**](AuthAPI.md#authverifyotp) | **POST** /api/auth/otp/verify | Verify OTP code


# **authConfirmPasswordReset**
```swift
    open class func authConfirmPasswordReset(authConfirmPasswordResetRequest: AuthConfirmPasswordResetRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Confirm password reset with OTP

Set new password using the OTP sent to the user's email. Call after POST /api/auth/local/password-reset with projectId. Rate limited (OTP limit). If the user's email was not yet verified, it is marked as verified upon successful reset. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authConfirmPasswordResetRequest = auth_confirmPasswordReset_request(email: "email_example", projectId: "projectId_example", otp: "otp_example", newPassword: "newPassword_example") // AuthConfirmPasswordResetRequest | Email, projectId, OTP code, and new password.

// Confirm password reset with OTP
AuthAPI.authConfirmPasswordReset(authConfirmPasswordResetRequest: authConfirmPasswordResetRequest) { (response, error) in
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
 **authConfirmPasswordResetRequest** | [**AuthConfirmPasswordResetRequest**](AuthConfirmPasswordResetRequest.md) | Email, projectId, OTP code, and new password. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authConvertAnonymous**
```swift
    open class func authConvertAnonymous(authConvertAnonymousRequest: AuthConvertAnonymousRequest, completion: @escaping (_ data: AuthConvertAnonymous200Response?, _ error: Error?) -> Void)
```

Convert anonymous account to full account

Convert an anonymous user session to a full authenticated account. Preserves user data. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authConvertAnonymousRequest = auth_convertAnonymous_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example") // AuthConvertAnonymousRequest | Email, password, and optional firstName, lastName for the new full account.

// Convert anonymous account to full account
AuthAPI.authConvertAnonymous(authConvertAnonymousRequest: authConvertAnonymousRequest) { (response, error) in
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
 **authConvertAnonymousRequest** | [**AuthConvertAnonymousRequest**](AuthConvertAnonymousRequest.md) | Email, password, and optional firstName, lastName for the new full account. | 

### Return type

[**AuthConvertAnonymous200Response**](AuthConvertAnonymous200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authCreateAnonymous**
```swift
    open class func authCreateAnonymous(authCreateAnonymousRequest: AuthCreateAnonymousRequest? = nil, completion: @escaping (_ data: AuthCreateAnonymous200Response?, _ error: Error?) -> Void)
```

Create anonymous session

Create an anonymous user session for guest access. Users can later convert to full accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authCreateAnonymousRequest = auth_createAnonymous_request(projectId: "projectId_example", deviceId: "deviceId_example") // AuthCreateAnonymousRequest | Optional projectId and deviceId for the anonymous session. (optional)

// Create anonymous session
AuthAPI.authCreateAnonymous(authCreateAnonymousRequest: authCreateAnonymousRequest) { (response, error) in
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
 **authCreateAnonymousRequest** | [**AuthCreateAnonymousRequest**](AuthCreateAnonymousRequest.md) | Optional projectId and deviceId for the anonymous session. | [optional] 

### Return type

[**AuthCreateAnonymous200Response**](AuthCreateAnonymous200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGetOAuthProviders**
```swift
    open class func authGetOAuthProviders(completion: @escaping (_ data: AuthGetOAuthProviders200Response?, _ error: Error?) -> Void)
```

Get all available OAuth providers

Returns a list of all supported OAuth providers with their configuration details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get all available OAuth providers
AuthAPI.authGetOAuthProviders() { (response, error) in
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

[**AuthGetOAuthProviders200Response**](AuthGetOAuthProviders200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGetSession**
```swift
    open class func authGetSession(projectId: String, completion: @escaping (_ data: AuthGetSession200Response?, _ error: Error?) -> Void)
```

Get current session

Get the current authenticated user session. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID to get session for.

// Get current session
AuthAPI.authGetSession(projectId: projectId) { (response, error) in
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
 **projectId** | **String** | Project ID to get session for. | 

### Return type

[**AuthGetSession200Response**](AuthGetSession200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLogin**
```swift
    open class func authLogin(authLoginRequest: AuthLoginRequest, completion: @escaping (_ data: AuthLogin200Response?, _ error: Error?) -> Void)
```

Login user

When the project has **requireEmailVerification** enabled and the user has not verified their email, returns 403 with code **EMAIL_VERIFICATION_REQUIRED** (user must verify email first, then login again). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authLoginRequest = auth_login_request(email: "email_example", password: "password_example", projectId: "projectId_example") // AuthLoginRequest | Login credentials (email, password) and project ID.

// Login user
AuthAPI.authLogin(authLoginRequest: authLoginRequest) { (response, error) in
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
 **authLoginRequest** | [**AuthLoginRequest**](AuthLoginRequest.md) | Login credentials (email, password) and project ID. | 

### Return type

[**AuthLogin200Response**](AuthLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authLogout**
```swift
    open class func authLogout(completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Logout user

Logout the current authenticated user session. Requires JWT Bearer token (BearerToken). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Logout user
AuthAPI.authLogout() { (response, error) in
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

# **authOauthCallback**
```swift
    open class func authOauthCallback(provider: String, completion: @escaping (_ data: AuthOauthCallback200Response?, _ error: Error?) -> Void)
```

OAuth callback handler

OAuth provider redirects the user here after consent. The server exchanges the code for tokens, creates or finds the user, and redirects to the client with token, refreshToken, and expiresIn in query params. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | OAuth provider identifier (e.g. google, github).

// OAuth callback handler
AuthAPI.authOauthCallback(provider: provider) { (response, error) in
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
 **provider** | **String** | OAuth provider identifier (e.g. google, github). | 

### Return type

[**AuthOauthCallback200Response**](AuthOauthCallback200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authOauthInitiate**
```swift
    open class func authOauthInitiate(provider: Provider_authOauthInitiate, projectId: String, redirectUrl: String? = nil, completion: @escaping (_ data: AuthOauthInitiate200Response?, _ error: Error?) -> Void)
```

Initiate OAuth authentication

Initiates OAuth authentication flow for a specified provider and project. The OAuth provider must be configured and enabled for the project first. After user authentication, redirects to the OAuth provider's consent screen. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | OAuth provider identifier (e.g. google, github).
let projectId = "projectId_example" // String | Project ID for which OAuth is configured.
let redirectUrl = "redirectUrl_example" // String | The URL to redirect to after authentication. Must be pre-registered in project settings. (optional)

// Initiate OAuth authentication
AuthAPI.authOauthInitiate(provider: provider, projectId: projectId, redirectUrl: redirectUrl) { (response, error) in
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
 **provider** | **String** | OAuth provider identifier (e.g. google, github). | 
 **projectId** | **String** | Project ID for which OAuth is configured. | 
 **redirectUrl** | **String** | The URL to redirect to after authentication. Must be pre-registered in project settings. | [optional] 

### Return type

[**AuthOauthInitiate200Response**](AuthOauthInitiate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefresh**
```swift
    open class func authRefresh(authRefreshRequest: AuthRefreshRequest, completion: @escaping (_ data: AuthRefresh200Response?, _ error: Error?) -> Void)
```

Refresh access token (dashboard and project)

Exchange a valid refresh token for a new JWT access token and refresh token. Works for both **dashboard** (builder console) and **app** (end-user) auth; the same endpoint is used. The previous refresh token is invalidated (rotation). If the same refresh token is used again, the session is revoked (reuse detection). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authRefreshRequest = auth_refresh_request(refreshToken: "refreshToken_example") // AuthRefreshRequest | JSON body containing the refresh token to exchange for a new access token and refresh token (token rotation).

// Refresh access token (dashboard and project)
AuthAPI.authRefresh(authRefreshRequest: authRefreshRequest) { (response, error) in
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
 **authRefreshRequest** | [**AuthRefreshRequest**](AuthRefreshRequest.md) | JSON body containing the refresh token to exchange for a new access token and refresh token (token rotation). | 

### Return type

[**AuthRefresh200Response**](AuthRefresh200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegister**
```swift
    open class func authRegister(authRegisterRequest: AuthRegisterRequest, completion: @escaping (_ data: AuthRegister201Response?, _ error: Error?) -> Void)
```

Register new user

When the project has **requireEmailVerification** enabled (default), the response is 201 with **requireVerification: true** and **no token**; the user must verify their email then sign in via login. When email verification is disabled, a token and refreshToken are returned. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authRegisterRequest = auth_register_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", projectId: "projectId_example") // AuthRegisterRequest | Registration payload (email, password, firstName, lastName, projectId).

// Register new user
AuthAPI.authRegister(authRegisterRequest: authRegisterRequest) { (response, error) in
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
 **authRegisterRequest** | [**AuthRegisterRequest**](AuthRegisterRequest.md) | Registration payload (email, password, firstName, lastName, projectId). | 

### Return type

[**AuthRegister201Response**](AuthRegister201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRequestPasswordReset**
```swift
    open class func authRequestPasswordReset(authRequestPasswordResetRequest: AuthRequestPasswordResetRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Request password reset (OTP)

When projectId is provided, sends a 6-digit OTP to the user's email (app reset uses OTP, not link). When projectId is omitted, sends a token link (org/platform local account). Rate limited. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authRequestPasswordResetRequest = auth_requestPasswordReset_request(email: "email_example", projectId: "projectId_example") // AuthRequestPasswordResetRequest | Email and optional projectId for app OTP or org token link.

// Request password reset (OTP)
AuthAPI.authRequestPasswordReset(authRequestPasswordResetRequest: authRequestPasswordResetRequest) { (response, error) in
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
 **authRequestPasswordResetRequest** | [**AuthRequestPasswordResetRequest**](AuthRequestPasswordResetRequest.md) | Email and optional projectId for app OTP or org token link. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authResendVerification**
```swift
    open class func authResendVerification(authResendVerificationRequest: AuthResendVerificationRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Resend verification email (no auth)

Sends a new verification email to the given email (and optional project). For unauthenticated users who have not verified yet. Rate limited (e.g. 3 per 15 min per IP). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authResendVerificationRequest = auth_resendVerification_request(email: "email_example", projectId: "projectId_example") // AuthResendVerificationRequest | Email address to resend to; optional `projectId` for project-scoped verification links.

// Resend verification email (no auth)
AuthAPI.authResendVerification(authResendVerificationRequest: authResendVerificationRequest) { (response, error) in
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
 **authResendVerificationRequest** | [**AuthResendVerificationRequest**](AuthResendVerificationRequest.md) | Email address to resend to; optional &#x60;projectId&#x60; for project-scoped verification links. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authResetPassword**
```swift
    open class func authResetPassword(token: String, authResetPasswordRequest: AuthResetPasswordRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Reset password with token (legacy)

Legacy token-based completion. Prefer OTP flow: use POST .../password-reset/confirm with the OTP sent to email for app resets. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let token = "token_example" // String | Password reset token from email link.
let authResetPasswordRequest = auth_resetPassword_request(password: "password_example", projectId: "projectId_example") // AuthResetPasswordRequest | New password and optional projectId.

// Reset password with token (legacy)
AuthAPI.authResetPassword(token: token, authResetPasswordRequest: authResetPasswordRequest) { (response, error) in
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
 **token** | **String** | Password reset token from email link. | 
 **authResetPasswordRequest** | [**AuthResetPasswordRequest**](AuthResetPasswordRequest.md) | New password and optional projectId. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSendMagicLink**
```swift
    open class func authSendMagicLink(magicLinkRequest: MagicLinkRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Send magic link

Sends a one-time magic link to the given email for the project. The user clicks the link and is authenticated without a password. Use verify endpoint with the token from the link. Public endpoint; rate limited. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let magicLinkRequest = MagicLinkRequest(email: "email_example", projectId: "projectId_example", redirectUrl: "redirectUrl_example") // MagicLinkRequest | Email, projectId, and optional redirect URL for the magic link.

// Send magic link
AuthAPI.authSendMagicLink(magicLinkRequest: magicLinkRequest) { (response, error) in
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
 **magicLinkRequest** | [**MagicLinkRequest**](MagicLinkRequest.md) | Email, projectId, and optional redirect URL for the magic link. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSendOtp**
```swift
    open class func authSendOtp(oTPSendRequest: OTPSendRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Send OTP code

Sends a one-time code via SMS or email for the given project. Use verify endpoint to exchange the code for a session. Public endpoint; rate limited. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let oTPSendRequest = OTPSendRequest(phone: "phone_example", email: "email_example", projectId: "projectId_example", method: "method_example") // OTPSendRequest | Project ID, delivery method (sms/email), and phone or email.

// Send OTP code
AuthAPI.authSendOtp(oTPSendRequest: oTPSendRequest) { (response, error) in
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
 **oTPSendRequest** | [**OTPSendRequest**](OTPSendRequest.md) | Project ID, delivery method (sms/email), and phone or email. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authVerifyEmail**
```swift
    open class func authVerifyEmail(authVerifyEmailRequest: AuthVerifyEmailRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify email address (no auth)

Verifies the user's email using the token from the link sent at signup. Use for project-scoped or general signup flows (unauthenticated). Same behavior as POST /api/users/verify-email. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authVerifyEmailRequest = auth_verifyEmail_request(token: "token_example", projectId: "projectId_example") // AuthVerifyEmailRequest | Verification token from the email link; optional `projectId` for project-scoped signup.

// Verify email address (no auth)
AuthAPI.authVerifyEmail(authVerifyEmailRequest: authVerifyEmailRequest) { (response, error) in
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
 **authVerifyEmailRequest** | [**AuthVerifyEmailRequest**](AuthVerifyEmailRequest.md) | Verification token from the email link; optional &#x60;projectId&#x60; for project-scoped signup. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authVerifyMagicLink**
```swift
    open class func authVerifyMagicLink(authVerifyMagicLinkRequest: AuthVerifyMagicLinkRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Verify magic link

Exchanges the magic link token (from the link sent by send) for a session. Returns token and user on success. Token is short-lived and single-use. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let authVerifyMagicLinkRequest = auth_verifyMagicLink_request(token: "token_example") // AuthVerifyMagicLinkRequest | The token from the magic link URL.

// Verify magic link
AuthAPI.authVerifyMagicLink(authVerifyMagicLinkRequest: authVerifyMagicLinkRequest) { (response, error) in
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
 **authVerifyMagicLinkRequest** | [**AuthVerifyMagicLinkRequest**](AuthVerifyMagicLinkRequest.md) | The token from the magic link URL. | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authVerifyOtp**
```swift
    open class func authVerifyOtp(oTPVerifyRequest: OTPVerifyRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Verify OTP code

Verifies the OTP code and returns a session token and user. Public endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let oTPVerifyRequest = OTPVerifyRequest(identifier: "identifier_example", otp: "otp_example", projectId: "projectId_example") // OTPVerifyRequest | Identifier (phone/email), OTP code, and project ID.

// Verify OTP code
AuthAPI.authVerifyOtp(oTPVerifyRequest: oTPVerifyRequest) { (response, error) in
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
 **oTPVerifyRequest** | [**OTPVerifyRequest**](OTPVerifyRequest.md) | Identifier (phone/email), OTP code, and project ID. | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

