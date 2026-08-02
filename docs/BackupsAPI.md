# BackupsAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBackup**](BackupsAPI.md#createbackup) | **POST** /api/projects/{projectId}/backups | Create project backup
[**deleteBackup**](BackupsAPI.md#deletebackup) | **DELETE** /api/projects/{projectId}/backups/{backupId} | Delete backup
[**listBackups**](BackupsAPI.md#listbackups) | **GET** /api/projects/{projectId}/backups | List project backups
[**restoreBackup**](BackupsAPI.md#restorebackup) | **POST** /api/projects/{projectId}/backups/{backupId}/restore | Restore from backup


# **createBackup**
```swift
    open class func createBackup(projectId: String, createBackupRequest: CreateBackupRequest? = nil, completion: @escaping (_ data: CreateBackup201Response?, _ error: Error?) -> Void)
```

Create project backup

Create a backup of project data, optionally including files and wallets. Supports both JWT Bearer token and API key authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let createBackupRequest = createBackup_request(description: "description_example", includeFiles: true, includeWallets: false) // CreateBackupRequest |  (optional)

// Create project backup
BackupsAPI.createBackup(projectId: projectId, createBackupRequest: createBackupRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **createBackupRequest** | [**CreateBackupRequest**](CreateBackupRequest.md) |  | [optional] 

### Return type

[**CreateBackup201Response**](CreateBackup201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBackup**
```swift
    open class func deleteBackup(projectId: String, backupId: String, completion: @escaping (_ data: DeleteBackup200Response?, _ error: Error?) -> Void)
```

Delete backup

Delete a project backup. Supports both JWT Bearer token and API key authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let backupId = "backupId_example" // String | 

// Delete backup
BackupsAPI.deleteBackup(projectId: projectId, backupId: backupId) { (response, error) in
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
 **projectId** | **String** |  | 
 **backupId** | **String** |  | 

### Return type

[**DeleteBackup200Response**](DeleteBackup200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBackups**
```swift
    open class func listBackups(projectId: String, completion: @escaping (_ data: ListBackups200Response?, _ error: Error?) -> Void)
```

List project backups

Get all backups for a project. Supports both JWT Bearer token and API key authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 

// List project backups
BackupsAPI.listBackups(projectId: projectId) { (response, error) in
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
 **projectId** | **String** |  | 

### Return type

[**ListBackups200Response**](ListBackups200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreBackup**
```swift
    open class func restoreBackup(projectId: String, backupId: String, restoreBackupRequest: RestoreBackupRequest, completion: @escaping (_ data: RestoreBackup200Response?, _ error: Error?) -> Void)
```

Restore from backup

Restore project data from a backup. Supports replace or merge modes. Supports both JWT Bearer token and API key authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let backupId = "backupId_example" // String | 
let restoreBackupRequest = restoreBackup_request(restoreMode: "restoreMode_example", collections: ["collections_example"], confirmation: "confirmation_example") // RestoreBackupRequest | 

// Restore from backup
BackupsAPI.restoreBackup(projectId: projectId, backupId: backupId, restoreBackupRequest: restoreBackupRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **backupId** | **String** |  | 
 **restoreBackupRequest** | [**RestoreBackupRequest**](RestoreBackupRequest.md) |  | 

### Return type

[**RestoreBackup200Response**](RestoreBackup200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

