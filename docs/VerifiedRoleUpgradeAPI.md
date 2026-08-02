# VerifiedRoleUpgradeAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verifiedRoleUpgrade**](VerifiedRoleUpgradeAPI.md#verifiedroleupgrade) | **POST** /api/orgs/{orgId}/users/{userId}/upgrade | Verified role upgrade with payment verification


# **verifiedRoleUpgrade**
```swift
    open class func verifiedRoleUpgrade(orgId: String, userId: String, verifiedRoleUpgradeRequest: VerifiedRoleUpgradeRequest, completion: @escaping (_ data: VerifiedRoleUpgrade200Response?, _ error: Error?) -> Void)
```

Verified role upgrade with payment verification

Upgrade user role after verifying payment and KYC. Prevents replay attacks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let verifiedRoleUpgradeRequest = verifiedRoleUpgrade_request(targetRole: "targetRole_example", paymentIntentId: "paymentIntentId_example", verificationId: "verificationId_example") // VerifiedRoleUpgradeRequest | 

// Verified role upgrade with payment verification
VerifiedRoleUpgradeAPI.verifiedRoleUpgrade(orgId: orgId, userId: userId, verifiedRoleUpgradeRequest: verifiedRoleUpgradeRequest) { (response, error) in
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
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **verifiedRoleUpgradeRequest** | [**VerifiedRoleUpgradeRequest**](VerifiedRoleUpgradeRequest.md) |  | 

### Return type

[**VerifiedRoleUpgrade200Response**](VerifiedRoleUpgrade200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

