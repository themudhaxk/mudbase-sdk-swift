# StorageAPI

All URIs are relative to *https://cloud.dev.mudbase*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storageConfirmUpload**](StorageAPI.md#storageconfirmupload) | **POST** /api/files/upload/confirm | Confirm direct upload (scan + finalize metadata)
[**storageCreateBucket**](StorageAPI.md#storagecreatebucket) | **POST** /api/bucket/projects/{projectId}/buckets | Create a new bucket
[**storageDeleteBucket**](StorageAPI.md#storagedeletebucket) | **DELETE** /api/bucket/projects/{projectId}/buckets/{bucketId} | Delete bucket
[**storageDeleteFile**](StorageAPI.md#storagedeletefile) | **DELETE** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId} | Delete file
[**storageDownloadBucketFile**](StorageAPI.md#storagedownloadbucketfile) | **GET** /api/bucket/files/{fileId}/download | Download file from bucket
[**storageDownloadFile**](StorageAPI.md#storagedownloadfile) | **GET** /api/files/{fileId}/download | Generate a presigned URL for downloading a file
[**storageGetBucket**](StorageAPI.md#storagegetbucket) | **GET** /api/bucket/projects/{projectId}/buckets/{bucketId} | Get bucket details
[**storageGetFile**](StorageAPI.md#storagegetfile) | **GET** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId} | Get file metadata
[**storageGetPresignedUpload**](StorageAPI.md#storagegetpresignedupload) | **POST** /api/files/upload/presigned | Generate presigned POST data for direct browser upload
[**storageGetSignedUrl**](StorageAPI.md#storagegetsignedurl) | **POST** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId}/signed-url | Generate signed URL for file
[**storageListBuckets**](StorageAPI.md#storagelistbuckets) | **GET** /api/bucket/projects/{projectId}/buckets | List buckets in a project
[**storageListFiles**](StorageAPI.md#storagelistfiles) | **GET** /api/bucket/projects/{projectId}/buckets/{bucketId}/files | List files in bucket
[**storageUpdateBucket**](StorageAPI.md#storageupdatebucket) | **PATCH** /api/bucket/projects/{projectId}/buckets/{bucketId} | Update bucket
[**storageUploadFiles**](StorageAPI.md#storageuploadfiles) | **POST** /api/bucket/projects/{projectId}/buckets/{bucketId}/files | Upload files to bucket


# **storageConfirmUpload**
```swift
    open class func storageConfirmUpload(storageConfirmUploadRequest: StorageConfirmUploadRequest, completion: @escaping (_ data: ConfirmUploadResponse?, _ error: Error?) -> Void)
```

Confirm direct upload (scan + finalize metadata)

After a client uploads directly to S3 using the presigned POST, call this endpoint to have the server scan the object, create the File record, and optionally quarantine if infected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let storageConfirmUploadRequest = storage_confirmUpload_request(key: "key_example", projectId: "projectId_example", originalName: "originalName_example", contentType: "contentType_example", size: 123, bucket: "bucket_example", isPublic: false) // StorageConfirmUploadRequest | S3 key from presigned response, projectId, and optional originalName, contentType, size, bucket, isPublic.

// Confirm direct upload (scan + finalize metadata)
StorageAPI.storageConfirmUpload(storageConfirmUploadRequest: storageConfirmUploadRequest) { (response, error) in
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
 **storageConfirmUploadRequest** | [**StorageConfirmUploadRequest**](StorageConfirmUploadRequest.md) | S3 key from presigned response, projectId, and optional originalName, contentType, size, bucket, isPublic. | 

### Return type

[**ConfirmUploadResponse**](ConfirmUploadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageCreateBucket**
```swift
    open class func storageCreateBucket(projectId: String, createBucketRequest: CreateBucketRequest, completion: @escaping (_ data: BucketResponse?, _ error: Error?) -> Void)
```

Create a new bucket

Create a new storage bucket in a project. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let createBucketRequest = CreateBucketRequest(name: "name_example", isPublic: false, settings: 123) // CreateBucketRequest | Bucket name, isPublic flag, and optional settings.

// Create a new bucket
StorageAPI.storageCreateBucket(projectId: projectId, createBucketRequest: createBucketRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **createBucketRequest** | [**CreateBucketRequest**](CreateBucketRequest.md) | Bucket name, isPublic flag, and optional settings. | 

### Return type

[**BucketResponse**](BucketResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDeleteBucket**
```swift
    open class func storageDeleteBucket(projectId: String, bucketId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete bucket

Delete a storage bucket permanently. This is a destructive operation that will also delete all files in the bucket. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.

// Delete bucket
StorageAPI.storageDeleteBucket(projectId: projectId, bucketId: bucketId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDeleteFile**
```swift
    open class func storageDeleteFile(projectId: String, bucketId: String, fileId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete file

Delete a file from a bucket permanently. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let fileId = "fileId_example" // String | File ID.

// Delete file
StorageAPI.storageDeleteFile(projectId: projectId, bucketId: bucketId, fileId: fileId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **fileId** | **String** | File ID. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDownloadBucketFile**
```swift
    open class func storageDownloadBucketFile(fileId: String, token: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download file from bucket

Download a file from a bucket. For public files, no authentication is required. For private files, a download token (obtained via signed URL endpoint) is required in the query parameter. Accepts: Token-based authentication via query parameter (for private files), or no authentication (for public files). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | File ID to download.
let token = "token_example" // String | Download token for private files (from signed URL endpoint). (optional)

// Download file from bucket
StorageAPI.storageDownloadBucketFile(fileId: fileId, token: token) { (response, error) in
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
 **fileId** | **String** | File ID to download. | 
 **token** | **String** | Download token for private files (from signed URL endpoint). | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDownloadFile**
```swift
    open class func storageDownloadFile(fileId: String, token: String? = nil, completion: @escaping (_ data: SignedUrlResponse?, _ error: Error?) -> Void)
```

Generate a presigned URL for downloading a file

Returns a time-limited provider-signed URL (S3) for direct download. Server enforces RBAC before issuing the URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | File ID.
let token = "token_example" // String | Optional one-time download token (if provided by upload flow). (optional)

// Generate a presigned URL for downloading a file
StorageAPI.storageDownloadFile(fileId: fileId, token: token) { (response, error) in
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
 **fileId** | **String** | File ID. | 
 **token** | **String** | Optional one-time download token (if provided by upload flow). | [optional] 

### Return type

[**SignedUrlResponse**](SignedUrlResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetBucket**
```swift
    open class func storageGetBucket(projectId: String, bucketId: String, completion: @escaping (_ data: BucketResponse?, _ error: Error?) -> Void)
```

Get bucket details

Retrieve metadata and configuration for a single storage bucket, including name, project, public/private status, and settings. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.

// Get bucket details
StorageAPI.storageGetBucket(projectId: projectId, bucketId: bucketId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 

### Return type

[**BucketResponse**](BucketResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetFile**
```swift
    open class func storageGetFile(projectId: String, bucketId: String, fileId: String, completion: @escaping (_ data: FileResponse?, _ error: Error?) -> Void)
```

Get file metadata

Get metadata for a specific file in a bucket. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let fileId = "fileId_example" // String | File ID.

// Get file metadata
StorageAPI.storageGetFile(projectId: projectId, bucketId: bucketId, fileId: fileId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **fileId** | **String** | File ID. | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetPresignedUpload**
```swift
    open class func storageGetPresignedUpload(storageGetPresignedUploadRequest: StorageGetPresignedUploadRequest, completion: @escaping (_ data: PresignedPostResponse?, _ error: Error?) -> Void)
```

Generate presigned POST data for direct browser upload

Issue a presigned POST (fields + url) for clients to upload directly to S3. The server stores the issued key with expiry and RBAC is enforced.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let storageGetPresignedUploadRequest = storage_getPresignedUpload_request(projectId: "projectId_example", bucket: "bucket_example", originalName: "originalName_example", contentType: "contentType_example", isPublic: false) // StorageGetPresignedUploadRequest | projectId, originalName, optional bucket, contentType, isPublic.

// Generate presigned POST data for direct browser upload
StorageAPI.storageGetPresignedUpload(storageGetPresignedUploadRequest: storageGetPresignedUploadRequest) { (response, error) in
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
 **storageGetPresignedUploadRequest** | [**StorageGetPresignedUploadRequest**](StorageGetPresignedUploadRequest.md) | projectId, originalName, optional bucket, contentType, isPublic. | 

### Return type

[**PresignedPostResponse**](PresignedPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetSignedUrl**
```swift
    open class func storageGetSignedUrl(projectId: String, bucketId: String, fileId: String, storageGetSignedUrlRequest: StorageGetSignedUrlRequest? = nil, completion: @escaping (_ data: SignedUrlResponse?, _ error: Error?) -> Void)
```

Generate signed URL for file

Generate a time-limited signed URL for downloading a private file. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let fileId = "fileId_example" // String | File ID.
let storageGetSignedUrlRequest = storage_getSignedUrl_request(expiresIn: 123) // StorageGetSignedUrlRequest | Optional expiresIn (seconds) for the signed URL. (optional)

// Generate signed URL for file
StorageAPI.storageGetSignedUrl(projectId: projectId, bucketId: bucketId, fileId: fileId, storageGetSignedUrlRequest: storageGetSignedUrlRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **fileId** | **String** | File ID. | 
 **storageGetSignedUrlRequest** | [**StorageGetSignedUrlRequest**](StorageGetSignedUrlRequest.md) | Optional expiresIn (seconds) for the signed URL. | [optional] 

### Return type

[**SignedUrlResponse**](SignedUrlResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageListBuckets**
```swift
    open class func storageListBuckets(projectId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, completion: @escaping (_ data: BucketListResponse?, _ error: Error?) -> Void)
```

List buckets in a project

List all storage buckets in a project with pagination and search. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of buckets per page. (optional) (default to 20)
let search = "search_example" // String | Search by bucket name. (optional)

// List buckets in a project
StorageAPI.storageListBuckets(projectId: projectId, page: page, limit: limit, search: search) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of buckets per page. | [optional] [default to 20]
 **search** | **String** | Search by bucket name. | [optional] 

### Return type

[**BucketListResponse**](BucketListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageListFiles**
```swift
    open class func storageListFiles(projectId: String, bucketId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, type: String? = nil, completion: @escaping (_ data: FileListResponse?, _ error: Error?) -> Void)
```

List files in bucket

List files in a bucket with pagination, search, and optional type filter. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of files per page. (optional) (default to 20)
let search = "search_example" // String | Search by filename. (optional)
let type = "type_example" // String | Filter by MIME type or file type. (optional)

// List files in bucket
StorageAPI.storageListFiles(projectId: projectId, bucketId: bucketId, page: page, limit: limit, search: search, type: type) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of files per page. | [optional] [default to 20]
 **search** | **String** | Search by filename. | [optional] 
 **type** | **String** | Filter by MIME type or file type. | [optional] 

### Return type

[**FileListResponse**](FileListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageUpdateBucket**
```swift
    open class func storageUpdateBucket(projectId: String, bucketId: String, updateBucketRequest: UpdateBucketRequest, completion: @escaping (_ data: BucketResponse?, _ error: Error?) -> Void)
```

Update bucket

Update bucket configuration (name, public/private status, settings). Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let updateBucketRequest = UpdateBucketRequest(name: "name_example", isPublic: false, settings: 123) // UpdateBucketRequest | Fields to update (name, isPublic, settings).

// Update bucket
StorageAPI.storageUpdateBucket(projectId: projectId, bucketId: bucketId, updateBucketRequest: updateBucketRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **updateBucketRequest** | [**UpdateBucketRequest**](UpdateBucketRequest.md) | Fields to update (name, isPublic, settings). | 

### Return type

[**BucketResponse**](BucketResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageUploadFiles**
```swift
    open class func storageUploadFiles(projectId: String, bucketId: String, uploadFilesToBucketRequest: UploadFilesToBucketRequest, completion: @escaping (_ data: FileUploadResponse?, _ error: Error?) -> Void)
```

Upload files to bucket

Upload one or more files to a storage bucket using multipart/form-data. Accepts BearerToken (JWT) or ApiKeyAuth (X-API-Key). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let bucketId = "bucketId_example" // String | Bucket ID.
let uploadFilesToBucketRequest = UploadFilesToBucketRequest(files: [URL(string: "https://example.com")!], folder: "folder_example", tags: ["tags_example"]) // UploadFilesToBucketRequest | Use multipart/form-data for file upload (files required; optional folder, tags). application/json uses the same schema for metadata-only or tooling that prefers JSON.

// Upload files to bucket
StorageAPI.storageUploadFiles(projectId: projectId, bucketId: bucketId, uploadFilesToBucketRequest: uploadFilesToBucketRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **bucketId** | **String** | Bucket ID. | 
 **uploadFilesToBucketRequest** | [**UploadFilesToBucketRequest**](UploadFilesToBucketRequest.md) | Use multipart/form-data for file upload (files required; optional folder, tags). application/json uses the same schema for metadata-only or tooling that prefers JSON. | 

### Return type

[**FileUploadResponse**](FileUploadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

