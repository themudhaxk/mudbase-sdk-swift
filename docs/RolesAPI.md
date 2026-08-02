# RolesAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignRole**](RolesAPI.md#assignrole) | **POST** /api/orgs/{orgId}/users/{userId}/role | ~~Assign custom role to user~~ (deprecated)
[**checkPermissions**](RolesAPI.md#checkpermissions) | **GET** /api/orgs/{orgId}/users/{userId}/permissions | ~~Check user permissions~~ (deprecated)
[**createRole**](RolesAPI.md#createrole) | **POST** /api/orgs/{orgId}/roles | ~~Create custom role~~ (deprecated)
[**deleteRole**](RolesAPI.md#deleterole) | **DELETE** /api/orgs/{orgId}/roles/{roleId} | ~~Delete role~~ (deprecated)
[**getRole**](RolesAPI.md#getrole) | **GET** /api/orgs/{orgId}/roles/{roleId} | ~~Get role details~~ (deprecated)
[**getUsersByRole**](RolesAPI.md#getusersbyrole) | **GET** /api/orgs/{orgId}/roles/{roleSlug}/users | ~~Get users with specific role~~ (deprecated)
[**listRoles**](RolesAPI.md#listroles) | **GET** /api/orgs/{orgId}/roles | ~~List all roles~~ (deprecated)
[**removeRole**](RolesAPI.md#removerole) | **DELETE** /api/orgs/{orgId}/users/{userId}/role | ~~Remove custom role from user~~ (deprecated)
[**updateRole**](RolesAPI.md#updaterole) | **PUT** /api/orgs/{orgId}/roles/{roleId} | ~~Update role~~ (deprecated)


# **assignRole**
```swift
    open class func assignRole(orgId: String, userId: String, assignRoleRequest: AssignRoleRequest, completion: @escaping (_ data: AssignRole200Response?, _ error: Error?) -> Void)
```

~~Assign custom role to user~~ (deprecated)

Assign a custom role to a user in the organization. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let assignRoleRequest = assignRole_request(roleSlug: "roleSlug_example") // AssignRoleRequest | 

// ~~Assign custom role to user~~ (deprecated)
RolesAPI.assignRole(orgId: orgId, userId: userId, assignRoleRequest: assignRoleRequest) { (response, error) in
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
 **assignRoleRequest** | [**AssignRoleRequest**](AssignRoleRequest.md) |  | 

### Return type

[**AssignRole200Response**](AssignRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermissions**
```swift
    open class func checkPermissions(orgId: String, userId: String, completion: @escaping (_ data: CheckPermissions200Response?, _ error: Error?) -> Void)
```

~~Check user permissions~~ (deprecated)

Get all permissions for a user (system + custom role combined)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// ~~Check user permissions~~ (deprecated)
RolesAPI.checkPermissions(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**CheckPermissions200Response**](CheckPermissions200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRole**
```swift
    open class func createRole(orgId: String, createRoleRequest: CreateRoleRequest, completion: @escaping (_ data: CreateRole201Response?, _ error: Error?) -> Void)
```

~~Create custom role~~ (deprecated)

Create a new custom role with specific permissions for your organization. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let createRoleRequest = createRole_request(name: "name_example", description: "description_example", permissions: [createRole_request_permissions_inner(resource: "resource_example", actions: ["actions_example"], conditions: 123)], hierarchy: 123, collectionPermissions: "TODO") // CreateRoleRequest | 

// ~~Create custom role~~ (deprecated)
RolesAPI.createRole(orgId: orgId, createRoleRequest: createRoleRequest) { (response, error) in
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
 **createRoleRequest** | [**CreateRoleRequest**](CreateRoleRequest.md) |  | 

### Return type

[**CreateRole201Response**](CreateRole201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRole**
```swift
    open class func deleteRole(orgId: String, roleId: String, completion: @escaping (_ data: DeleteRole200Response?, _ error: Error?) -> Void)
```

~~Delete role~~ (deprecated)

Delete a custom role. Cannot delete system roles or roles with active users. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// ~~Delete role~~ (deprecated)
RolesAPI.deleteRole(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**DeleteRole200Response**](DeleteRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRole**
```swift
    open class func getRole(orgId: String, roleId: String, completion: @escaping (_ data: GetRole200Response?, _ error: Error?) -> Void)
```

~~Get role details~~ (deprecated)

Get details of a specific custom role. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// ~~Get role details~~ (deprecated)
RolesAPI.getRole(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**GetRole200Response**](GetRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByRole**
```swift
    open class func getUsersByRole(orgId: String, roleSlug: String, completion: @escaping (_ data: GetUsersByRole200Response?, _ error: Error?) -> Void)
```

~~Get users with specific role~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let roleSlug = "roleSlug_example" // String | 

// ~~Get users with specific role~~ (deprecated)
RolesAPI.getUsersByRole(orgId: orgId, roleSlug: roleSlug) { (response, error) in
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
 **roleSlug** | **String** |  | 

### Return type

[**GetUsersByRole200Response**](GetUsersByRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoles**
```swift
    open class func listRoles(orgId: String, completion: @escaping (_ data: ListRoles200Response?, _ error: Error?) -> Void)
```

~~List all roles~~ (deprecated)

Get all custom roles for the organization. Requires: OrgBearerAuth (organization-level authentication only). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 

// ~~List all roles~~ (deprecated)
RolesAPI.listRoles(orgId: orgId) { (response, error) in
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

### Return type

[**ListRoles200Response**](ListRoles200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeRole**
```swift
    open class func removeRole(orgId: String, userId: String, completion: @escaping (_ data: AssignRole200Response?, _ error: Error?) -> Void)
```

~~Remove custom role from user~~ (deprecated)

Remove a custom role from a user in the organization. Requires JWT Bearer token authentication. Both OrgBearerAuth and ProjectBearerAuth are supported (they use the same JWT token format). These are organization-level operations. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// ~~Remove custom role from user~~ (deprecated)
RolesAPI.removeRole(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AssignRole200Response**](AssignRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRole**
```swift
    open class func updateRole(orgId: String, roleId: String, updateRoleRequest: UpdateRoleRequest, completion: @escaping (_ data: UpdateRole200Response?, _ error: Error?) -> Void)
```

~~Update role~~ (deprecated)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 
let updateRoleRequest = updateRole_request(name: "name_example", description: "description_example", permissions: [123], hierarchy: 123, isActive: true) // UpdateRoleRequest | 

// ~~Update role~~ (deprecated)
RolesAPI.updateRole(orgId: orgId, roleId: roleId, updateRoleRequest: updateRoleRequest) { (response, error) in
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
 **roleId** | **String** |  | 
 **updateRoleRequest** | [**UpdateRoleRequest**](UpdateRoleRequest.md) |  | 

### Return type

[**UpdateRole200Response**](UpdateRole200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

