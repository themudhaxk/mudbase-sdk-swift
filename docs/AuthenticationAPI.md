# AuthenticationAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](AuthenticationAPI.md#acceptinvite) | **POST** /api/auth/accept-invite | Accept organization invitation
[**confirmLocalPasswordResetWithOtp**](AuthenticationAPI.md#confirmlocalpasswordresetwithotp) | **POST** /api/auth/local/password-reset/confirm | Confirm password reset with OTP (project-based)
[**convertAnonymousAccount**](AuthenticationAPI.md#convertanonymousaccount) | **POST** /api/auth/anonymous/convert | Convert anonymous account to full account
[**createAnonymousSession**](AuthenticationAPI.md#createanonymoussession) | **POST** /api/auth/anonymous | Create anonymous session
[**getAvailableOAuthProviders**](AuthenticationAPI.md#getavailableoauthproviders) | **GET** /api/auth/oauth/providers/available | Get all available OAuth providers
[**getCurrentSession**](AuthenticationAPI.md#getcurrentsession) | **GET** /api/auth/session | Get current session
[**getLocalSession**](AuthenticationAPI.md#getlocalsession) | **GET** /api/auth/local/session | Get current session (project-based)
[**getOrgOAuthProviders**](AuthenticationAPI.md#getorgoauthproviders) | **GET** /api/auth/oauth-org/providers | Get available OAuth providers for organization-based auth
[**initiateOAuth**](AuthenticationAPI.md#initiateoauth) | **GET** /api/auth/oauth/{provider}/{projectId} | Initiate OAuth authentication
[**initiateOrgOAuth**](AuthenticationAPI.md#initiateorgoauth) | **GET** /api/auth/oauth-org/{provider} | Initiate OAuth authentication for organization
[**loginLocalUser**](AuthenticationAPI.md#loginlocaluser) | **POST** /api/auth/local/login | Login user (project-based)
[**loginUser**](AuthenticationAPI.md#loginuser) | **POST** /api/auth/login | Login user
[**logoutLocalUser**](AuthenticationAPI.md#logoutlocaluser) | **POST** /api/auth/local/logout | Logout user (project-based)
[**logoutUser**](AuthenticationAPI.md#logoutuser) | **POST** /api/auth/logout | Logout user
[**oauthCallback**](AuthenticationAPI.md#oauthcallback) | **GET** /api/auth/oauth/callback/{provider} | OAuth callback handler (project-based)
[**orgOAuthCallback**](AuthenticationAPI.md#orgoauthcallback) | **GET** /api/auth/oauth-org/callback/{provider} | OAuth callback handler for organization
[**refreshToken**](AuthenticationAPI.md#refreshtoken) | **POST** /api/auth/refresh | Refresh access token (org and project)
[**registerLocalUser**](AuthenticationAPI.md#registerlocaluser) | **POST** /api/auth/local/register | Register new user (project-based)
[**registerUser**](AuthenticationAPI.md#registeruser) | **POST** /api/auth/register | Register new user
[**requestLocalPasswordReset**](AuthenticationAPI.md#requestlocalpasswordreset) | **POST** /api/auth/local/password-reset | Request password reset (project-based, OTP)
[**requestPasswordReset**](AuthenticationAPI.md#requestpasswordreset) | **POST** /api/auth/password-reset | Request password reset (organization / platform)
[**resendVerificationAuth**](AuthenticationAPI.md#resendverificationauth) | **POST** /api/auth/resend-verification | Resend verification email (no auth)
[**resetLocalPassword**](AuthenticationAPI.md#resetlocalpassword) | **POST** /api/auth/local/password-reset/{token} | Reset password with token (project-based, legacy)
[**resetPassword**](AuthenticationAPI.md#resetpassword) | **POST** /api/auth/password-reset/{token} | Reset password with token (organization / platform)
[**sendMagicLink**](AuthenticationAPI.md#sendmagiclink) | **POST** /api/auth/magic-link/send | Send magic link
[**sendOTP**](AuthenticationAPI.md#sendotp) | **POST** /api/auth/otp/send | Send OTP code
[**validatePasswordResetToken**](AuthenticationAPI.md#validatepasswordresettoken) | **POST** /api/auth/password-reset/validate | Validate password reset token
[**verifyEmailAuth**](AuthenticationAPI.md#verifyemailauth) | **POST** /api/auth/verify-email | Verify email address (no auth)
[**verifyMagicLink**](AuthenticationAPI.md#verifymagiclink) | **POST** /api/auth/magic-link/verify | Verify magic link
[**verifyOTP**](AuthenticationAPI.md#verifyotp) | **POST** /api/auth/otp/verify | Verify OTP code


# **acceptInvite**
```swift
    open class func acceptInvite(acceptInviteRequest: AcceptInviteRequest, completion: @escaping (_ data: AcceptInvite201Response?, _ error: Error?) -> Void)
```

Accept organization invitation

Accept an organization invitation using the token from the invite email link (e.g. `/invite/{token}?orgId=...`). Creates a new user with the invited email and adds them to the organization with the invited role. Returns a JWT and user so the client can log the user in immediately. No authentication required. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let acceptInviteRequest = acceptInvite_request(token: "token_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example") // AcceptInviteRequest | 

// Accept organization invitation
AuthenticationAPI.acceptInvite(acceptInviteRequest: acceptInviteRequest) { (response, error) in
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
 **acceptInviteRequest** | [**AcceptInviteRequest**](AcceptInviteRequest.md) |  | 

### Return type

[**AcceptInvite201Response**](AcceptInvite201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmLocalPasswordResetWithOtp**
```swift
    open class func confirmLocalPasswordResetWithOtp(confirmLocalPasswordResetWithOtpRequest: ConfirmLocalPasswordResetWithOtpRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Confirm password reset with OTP (project-based)

Set new password using the OTP sent to the user's email. Call after POST /api/auth/local/password-reset with projectId. Rate limited (OTP limit). If the user's email was not yet verified, it is marked as verified upon successful reset. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let confirmLocalPasswordResetWithOtpRequest = confirmLocalPasswordResetWithOtp_request(email: "email_example", projectId: "projectId_example", otp: "otp_example", newPassword: "newPassword_example") // ConfirmLocalPasswordResetWithOtpRequest | 

// Confirm password reset with OTP (project-based)
AuthenticationAPI.confirmLocalPasswordResetWithOtp(confirmLocalPasswordResetWithOtpRequest: confirmLocalPasswordResetWithOtpRequest) { (response, error) in
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
 **confirmLocalPasswordResetWithOtpRequest** | [**ConfirmLocalPasswordResetWithOtpRequest**](ConfirmLocalPasswordResetWithOtpRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertAnonymousAccount**
```swift
    open class func convertAnonymousAccount(convertAnonymousAccountRequest: ConvertAnonymousAccountRequest, completion: @escaping (_ data: ConvertAnonymousAccount200Response?, _ error: Error?) -> Void)
```

Convert anonymous account to full account

Convert an anonymous user session to a full authenticated account. Preserves user data. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let convertAnonymousAccountRequest = convertAnonymousAccount_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example") // ConvertAnonymousAccountRequest | 

// Convert anonymous account to full account
AuthenticationAPI.convertAnonymousAccount(convertAnonymousAccountRequest: convertAnonymousAccountRequest) { (response, error) in
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
 **convertAnonymousAccountRequest** | [**ConvertAnonymousAccountRequest**](ConvertAnonymousAccountRequest.md) |  | 

### Return type

[**ConvertAnonymousAccount200Response**](ConvertAnonymousAccount200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAnonymousSession**
```swift
    open class func createAnonymousSession(createAnonymousSessionRequest: CreateAnonymousSessionRequest? = nil, completion: @escaping (_ data: CreateAnonymousSession200Response?, _ error: Error?) -> Void)
```

Create anonymous session

Create an anonymous user session for guest access. Users can later convert to full accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createAnonymousSessionRequest = createAnonymousSession_request(projectId: "projectId_example", deviceId: "deviceId_example") // CreateAnonymousSessionRequest |  (optional)

// Create anonymous session
AuthenticationAPI.createAnonymousSession(createAnonymousSessionRequest: createAnonymousSessionRequest) { (response, error) in
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
 **createAnonymousSessionRequest** | [**CreateAnonymousSessionRequest**](CreateAnonymousSessionRequest.md) |  | [optional] 

### Return type

[**CreateAnonymousSession200Response**](CreateAnonymousSession200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableOAuthProviders**
```swift
    open class func getAvailableOAuthProviders(completion: @escaping (_ data: GetAvailableOAuthProviders200Response?, _ error: Error?) -> Void)
```

Get all available OAuth providers

Returns a list of all supported OAuth providers with their configuration details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get all available OAuth providers
AuthenticationAPI.getAvailableOAuthProviders() { (response, error) in
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

[**GetAvailableOAuthProviders200Response**](GetAvailableOAuthProviders200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentSession**
```swift
    open class func getCurrentSession(completion: @escaping (_ data: SessionResponse?, _ error: Error?) -> Void)
```

Get current session

Get the current authenticated user session information. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get current session
AuthenticationAPI.getCurrentSession() { (response, error) in
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

[**SessionResponse**](SessionResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalSession**
```swift
    open class func getLocalSession(projectId: String? = nil, completion: @escaping (_ data: GetLocalSession200Response?, _ error: Error?) -> Void)
```

Get current session (project-based)

Get the current authenticated user session (project-based). Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String |  (optional)

// Get current session (project-based)
AuthenticationAPI.getLocalSession(projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | [optional] 

### Return type

[**GetLocalSession200Response**](GetLocalSession200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgOAuthProviders**
```swift
    open class func getOrgOAuthProviders(completion: @escaping (_ data: GetOrgOAuthProviders200Response?, _ error: Error?) -> Void)
```

Get available OAuth providers for organization-based auth

Returns a list of OAuth providers that are configured and available for organization-based authentication. Providers are configured via environment variables (e.g., GOOGLE_CLIENT_ID, GITHUB_CLIENT_ID). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get available OAuth providers for organization-based auth
AuthenticationAPI.getOrgOAuthProviders() { (response, error) in
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

[**GetOrgOAuthProviders200Response**](GetOrgOAuthProviders200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateOAuth**
```swift
    open class func initiateOAuth(provider: Provider_initiateOAuth, projectId: String, redirectUrl: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initiate OAuth authentication

Initiates OAuth authentication flow for a specified provider and project. The OAuth provider must be configured and enabled for the project first. Returns an HTTP 302 redirect to the OAuth provider's consent screen. Note: Swagger \"Try it out\" may show \"Failed to fetch\" for this endpoint due to browser CORS restrictions on cross-origin redirects. Use top-level browser navigation or curl to test. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 
let projectId = "projectId_example" // String | 
let redirectUrl = "redirectUrl_example" // String | The URL to redirect to after authentication. Must be pre-registered in project settings. (optional)

// Initiate OAuth authentication
AuthenticationAPI.initiateOAuth(provider: provider, projectId: projectId, redirectUrl: redirectUrl) { (response, error) in
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
 **projectId** | **String** |  | 
 **redirectUrl** | **String** | The URL to redirect to after authentication. Must be pre-registered in project settings. | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateOrgOAuth**
```swift
    open class func initiateOrgOAuth(provider: Provider_initiateOrgOAuth, redirectUrl: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Initiate OAuth authentication for organization

Initiates OAuth authentication flow for organization-level signup/login. The OAuth provider must be configured via environment variables (e.g., GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET). After successful authentication, creates a new organization and user account, or logs in existing user. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 
let redirectUrl = "redirectUrl_example" // String | The URL to redirect to after authentication (optional)

// Initiate OAuth authentication for organization
AuthenticationAPI.initiateOrgOAuth(provider: provider, redirectUrl: redirectUrl) { (response, error) in
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
 **redirectUrl** | **String** | The URL to redirect to after authentication | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginLocalUser**
```swift
    open class func loginLocalUser(loginLocalUserRequest: LoginLocalUserRequest, completion: @escaping (_ data: LoginLocalUser200Response?, _ error: Error?) -> Void)
```

Login user (project-based)

When the project has **requireEmailVerification** enabled and the user has not verified their email, returns 403 with code **EMAIL_VERIFICATION_REQUIRED** (user must verify email first, then login again). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let loginLocalUserRequest = loginLocalUser_request(email: "email_example", password: "password_example", projectId: "projectId_example") // LoginLocalUserRequest | 

// Login user (project-based)
AuthenticationAPI.loginLocalUser(loginLocalUserRequest: loginLocalUserRequest) { (response, error) in
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
 **loginLocalUserRequest** | [**LoginLocalUserRequest**](LoginLocalUserRequest.md) |  | 

### Return type

[**LoginLocalUser200Response**](LoginLocalUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
```swift
    open class func loginUser(loginRequest: LoginRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Login user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let loginRequest = LoginRequest(email: "email_example", password: "password_example") // LoginRequest | 

// Login user
AuthenticationAPI.loginUser(loginRequest: loginRequest) { (response, error) in
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
 **loginRequest** | [**LoginRequest**](LoginRequest.md) |  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutLocalUser**
```swift
    open class func logoutLocalUser(completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Logout user (project-based)

Logout the current authenticated user session (project-based). Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Logout user (project-based)
AuthenticationAPI.logoutLocalUser() { (response, error) in
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

# **logoutUser**
```swift
    open class func logoutUser(completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Logout user

Logout the current authenticated user session. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). API keys are not supported for this endpoint. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Logout user
AuthenticationAPI.logoutUser() { (response, error) in
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

# **oauthCallback**
```swift
    open class func oauthCallback(provider: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth callback handler (project-based)

Handles OAuth callback for project-based authentication. This route must be matched before /api/auth/oauth/{provider}/{projectId}. Redirects to frontend with query params token, refreshToken, and expiresIn. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 

// OAuth callback handler (project-based)
AuthenticationAPI.oauthCallback(provider: provider) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgOAuthCallback**
```swift
    open class func orgOAuthCallback(provider: Provider_orgOAuthCallback, code: String? = nil, state: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth callback handler for organization

Handles OAuth callback for organization-based authentication. Creates a new organization and user account if the user doesn't exist, or logs in existing user. Redirects to frontend with query params token, refreshToken, and expiresIn. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let provider = "provider_example" // String | 
let code = "code_example" // String | Authorization code from OAuth provider (optional)
let state = "state_example" // String | State parameter for CSRF protection (optional)

// OAuth callback handler for organization
AuthenticationAPI.orgOAuthCallback(provider: provider, code: code, state: state) { (response, error) in
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
 **code** | **String** | Authorization code from OAuth provider | [optional] 
 **state** | **String** | State parameter for CSRF protection | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
```swift
    open class func refreshToken(refreshTokenRequest: RefreshTokenRequest, completion: @escaping (_ data: RefreshToken200Response?, _ error: Error?) -> Void)
```

Refresh access token (org and project)

Exchange a valid refresh token for a new JWT access token and refresh token. Works for both **org-based** (platform/dashboard) and **project-based** auth; the same endpoint is used. The previous refresh token is invalidated (rotation). If the same refresh token is used again, the session is revoked (reuse detection). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let refreshTokenRequest = refreshToken_request(refreshToken: "refreshToken_example") // RefreshTokenRequest | 

// Refresh access token (org and project)
AuthenticationAPI.refreshToken(refreshTokenRequest: refreshTokenRequest) { (response, error) in
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
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md) |  | 

### Return type

[**RefreshToken200Response**](RefreshToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerLocalUser**
```swift
    open class func registerLocalUser(registerLocalUserRequest: RegisterLocalUserRequest, completion: @escaping (_ data: RegisterLocalUser201Response?, _ error: Error?) -> Void)
```

Register new user (project-based)

When the project has **requireEmailVerification** enabled (default), the response is 201 with **requireVerification: true** and **no token**; the user must verify their email then sign in via login. When email verification is disabled, a token and refreshToken are returned. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let registerLocalUserRequest = registerLocalUser_request(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", projectId: "projectId_example") // RegisterLocalUserRequest | 

// Register new user (project-based)
AuthenticationAPI.registerLocalUser(registerLocalUserRequest: registerLocalUserRequest) { (response, error) in
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
 **registerLocalUserRequest** | [**RegisterLocalUserRequest**](RegisterLocalUserRequest.md) |  | 

### Return type

[**RegisterLocalUser201Response**](RegisterLocalUser201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
```swift
    open class func registerUser(registerRequest: RegisterRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Register new user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let registerRequest = RegisterRequest(email: "email_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", orgName: "orgName_example") // RegisterRequest | 

// Register new user
AuthenticationAPI.registerUser(registerRequest: registerRequest) { (response, error) in
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
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md) |  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestLocalPasswordReset**
```swift
    open class func requestLocalPasswordReset(requestLocalPasswordResetRequest: RequestLocalPasswordResetRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Request password reset (project-based, OTP)

When projectId is provided, sends a 6-digit OTP to the user's email (project-based reset uses OTP, not link). When projectId is omitted, sends a token link (org/platform local account). Rate limited. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let requestLocalPasswordResetRequest = requestLocalPasswordReset_request(email: "email_example", projectId: "projectId_example") // RequestLocalPasswordResetRequest | 

// Request password reset (project-based, OTP)
AuthenticationAPI.requestLocalPasswordReset(requestLocalPasswordResetRequest: requestLocalPasswordResetRequest) { (response, error) in
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
 **requestLocalPasswordResetRequest** | [**RequestLocalPasswordResetRequest**](RequestLocalPasswordResetRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPasswordReset**
```swift
    open class func requestPasswordReset(requestPasswordResetRequest: RequestPasswordResetRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Request password reset (organization / platform)

Sends a password reset link to the user's email. Use this for organization (platform) accounts. For project-based accounts use POST /api/auth/local/password-reset with projectId (sends OTP instead). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let requestPasswordResetRequest = requestPasswordReset_request(email: "email_example") // RequestPasswordResetRequest | 

// Request password reset (organization / platform)
AuthenticationAPI.requestPasswordReset(requestPasswordResetRequest: requestPasswordResetRequest) { (response, error) in
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
 **requestPasswordResetRequest** | [**RequestPasswordResetRequest**](RequestPasswordResetRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendVerificationAuth**
```swift
    open class func resendVerificationAuth(resendVerificationAuthRequest: ResendVerificationAuthRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Resend verification email (no auth)

Sends a new verification email to the given email (and optional project). For unauthenticated users who have not verified yet. Rate limited (e.g. 3 per 15 min per IP). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let resendVerificationAuthRequest = resendVerificationAuth_request(email: "email_example", projectId: "projectId_example") // ResendVerificationAuthRequest | 

// Resend verification email (no auth)
AuthenticationAPI.resendVerificationAuth(resendVerificationAuthRequest: resendVerificationAuthRequest) { (response, error) in
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
 **resendVerificationAuthRequest** | [**ResendVerificationAuthRequest**](ResendVerificationAuthRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetLocalPassword**
```swift
    open class func resetLocalPassword(token: String, resetLocalPasswordRequest: ResetLocalPasswordRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Reset password with token (project-based, legacy)

Legacy token-based completion. Prefer OTP flow: use POST .../password-reset/confirm with the OTP sent to email for project-based resets. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let token = "token_example" // String | 
let resetLocalPasswordRequest = resetLocalPassword_request(password: "password_example", projectId: "projectId_example") // ResetLocalPasswordRequest | 

// Reset password with token (project-based, legacy)
AuthenticationAPI.resetLocalPassword(token: token, resetLocalPasswordRequest: resetLocalPasswordRequest) { (response, error) in
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
 **token** | **String** |  | 
 **resetLocalPasswordRequest** | [**ResetLocalPasswordRequest**](ResetLocalPasswordRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
```swift
    open class func resetPassword(token: String, resetPasswordRequest: ResetPasswordRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Reset password with token (organization / platform)

Set new password using the token from the reset link. Validate the token first with POST /api/auth/password-reset/validate before showing the form. If the user's email was not yet verified, it is marked as verified upon successful reset. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let token = "token_example" // String | 
let resetPasswordRequest = resetPassword_request(password: "password_example") // ResetPasswordRequest | 

// Reset password with token (organization / platform)
AuthenticationAPI.resetPassword(token: token, resetPasswordRequest: resetPasswordRequest) { (response, error) in
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
 **token** | **String** |  | 
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMagicLink**
```swift
    open class func sendMagicLink(magicLinkRequest: MagicLinkRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Send magic link

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let magicLinkRequest = MagicLinkRequest(email: "email_example", projectId: "projectId_example", redirectUrl: "redirectUrl_example") // MagicLinkRequest | 

// Send magic link
AuthenticationAPI.sendMagicLink(magicLinkRequest: magicLinkRequest) { (response, error) in
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
 **magicLinkRequest** | [**MagicLinkRequest**](MagicLinkRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendOTP**
```swift
    open class func sendOTP(oTPSendRequest: OTPSendRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Send OTP code

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let oTPSendRequest = OTPSendRequest(phone: "phone_example", email: "email_example", projectId: "projectId_example", method: "method_example") // OTPSendRequest | 

// Send OTP code
AuthenticationAPI.sendOTP(oTPSendRequest: oTPSendRequest) { (response, error) in
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
 **oTPSendRequest** | [**OTPSendRequest**](OTPSendRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validatePasswordResetToken**
```swift
    open class func validatePasswordResetToken(validatePasswordResetTokenRequest: ValidatePasswordResetTokenRequest, completion: @escaping (_ data: ValidatePasswordResetToken200Response?, _ error: Error?) -> Void)
```

Validate password reset token

Call before showing the \"set new password\" form. Validates that the token from the reset link is still valid and not expired. Organization (platform) reset only. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let validatePasswordResetTokenRequest = validatePasswordResetToken_request(token: "token_example") // ValidatePasswordResetTokenRequest | 

// Validate password reset token
AuthenticationAPI.validatePasswordResetToken(validatePasswordResetTokenRequest: validatePasswordResetTokenRequest) { (response, error) in
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
 **validatePasswordResetTokenRequest** | [**ValidatePasswordResetTokenRequest**](ValidatePasswordResetTokenRequest.md) |  | 

### Return type

[**ValidatePasswordResetToken200Response**](ValidatePasswordResetToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmailAuth**
```swift
    open class func verifyEmailAuth(verifyEmailAuthRequest: VerifyEmailAuthRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Verify email address (no auth)

Verifies the user's email using the token from the link sent at signup. Use this for both organization and project signups (unauthenticated). Same behavior as POST /api/users/verify-email. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let verifyEmailAuthRequest = verifyEmailAuth_request(token: "token_example", projectId: "projectId_example") // VerifyEmailAuthRequest | 

// Verify email address (no auth)
AuthenticationAPI.verifyEmailAuth(verifyEmailAuthRequest: verifyEmailAuthRequest) { (response, error) in
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

# **verifyMagicLink**
```swift
    open class func verifyMagicLink(verifyMagicLinkRequest: VerifyMagicLinkRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Verify magic link

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let verifyMagicLinkRequest = verifyMagicLink_request(token: "token_example") // VerifyMagicLinkRequest | 

// Verify magic link
AuthenticationAPI.verifyMagicLink(verifyMagicLinkRequest: verifyMagicLinkRequest) { (response, error) in
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
 **verifyMagicLinkRequest** | [**VerifyMagicLinkRequest**](VerifyMagicLinkRequest.md) |  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOTP**
```swift
    open class func verifyOTP(oTPVerifyRequest: OTPVerifyRequest, completion: @escaping (_ data: AuthResponse?, _ error: Error?) -> Void)
```

Verify OTP code

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let oTPVerifyRequest = OTPVerifyRequest(identifier: "identifier_example", otp: "otp_example", projectId: "projectId_example") // OTPVerifyRequest | 

// Verify OTP code
AuthenticationAPI.verifyOTP(oTPVerifyRequest: oTPVerifyRequest) { (response, error) in
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
 **oTPVerifyRequest** | [**OTPVerifyRequest**](OTPVerifyRequest.md) |  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

