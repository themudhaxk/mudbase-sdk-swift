# FilesAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiFilesDownloadFileIdGet**](FilesAPI.md#apifilesdownloadfileidget) | **GET** /api/files/download/{fileId} | Get a download URL for a file
[**apiFilesLogoRedirectGet**](FilesAPI.md#apifileslogoredirectget) | **GET** /api/files/logo-redirect | Redirect to an org/project logo&#39;s content
[**apiFilesPublicFileIdGet**](FilesAPI.md#apifilespublicfileidget) | **GET** /api/files/public/{fileId} | Redirect to a public file&#39;s content
[**confirmDirectUpload**](FilesAPI.md#confirmdirectupload) | **POST** /api/files/upload/confirm | Confirm direct upload (scan + finalize metadata)
[**deleteFile**](FilesAPI.md#deletefile) | **DELETE** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId} | Delete file
[**downloadBucketFile**](FilesAPI.md#downloadbucketfile) | **GET** /api/bucket/files/{fileId}/download | Download file from bucket
[**downloadFile**](FilesAPI.md#downloadfile) | **GET** /api/files/{fileId}/download | Generate a presigned URL for downloading a file
[**generatePresignedUpload**](FilesAPI.md#generatepresignedupload) | **POST** /api/files/upload/presigned | Generate a presigned PUT URL for direct browser upload
[**generateSignedUrl**](FilesAPI.md#generatesignedurl) | **POST** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId}/signed-url | Generate signed URL for file
[**getFile**](FilesAPI.md#getfile) | **GET** /api/bucket/projects/{projectId}/buckets/{bucketId}/files/{fileId} | Get file metadata
[**listFiles**](FilesAPI.md#listfiles) | **GET** /api/bucket/projects/{projectId}/buckets/{bucketId}/files | List files in bucket
[**uploadFiles**](FilesAPI.md#uploadfiles) | **POST** /api/bucket/projects/{projectId}/buckets/{bucketId}/files | Upload files to bucket


# **apiFilesDownloadFileIdGet**
```swift
    open class func apiFilesDownloadFileIdGet(fileId: String, expiresIn: Int? = nil, completion: @escaping (_ data: ApiFilesDownloadFileIdGet200Response?, _ error: Error?) -> Void)
```

Get a download URL for a file

Returns a URL to download the file. For private files a short-lived signed URL is generated; the lifetime can be tuned per request via the optional expiresIn query parameter (seconds, clamped to a safe server-configured range). For public (public-read) files the permanent world-readable URL is returned with isPublic true and a warning, since signing a public object provides no protection. Accepts a JWT (Bearer) or a project API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | 
let expiresIn = 987 // Int | Signed-URL lifetime in seconds for private files. Clamped to the server's min/max range; ignored for public files. Defaults to the server's configured expiry. (optional)

// Get a download URL for a file
FilesAPI.apiFilesDownloadFileIdGet(fileId: fileId, expiresIn: expiresIn) { (response, error) in
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
 **fileId** | **String** |  | 
 **expiresIn** | **Int** | Signed-URL lifetime in seconds for private files. Clamped to the server&#39;s min/max range; ignored for public files. Defaults to the server&#39;s configured expiry. | [optional] 

### Return type

[**ApiFilesDownloadFileIdGet200Response**](ApiFilesDownloadFileIdGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiFilesLogoRedirectGet**
```swift
    open class func apiFilesLogoRedirectGet(key: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Redirect to an org/project logo's content

Unauthenticated. Logos are always meant to be public branding assets, but Cloudflare R2 has no per-object ACL, so this route (not the bucket) is what actually serves them - the `key` query param is validated against the exact shape logoStorageService.uploadLogo() produces before signing, so this can never be used to fetch an arbitrary storage key. 302-redirects to a short-lived signed GET url.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let key = "key_example" // String | 

// Redirect to an org/project logo's content
FilesAPI.apiFilesLogoRedirectGet(key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiFilesPublicFileIdGet**
```swift
    open class func apiFilesPublicFileIdGet(fileId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Redirect to a public file's content

Unauthenticated. Only serves files with isPublic=true whose upload has been confirmed and whose virus scan came back clean - Cloudflare R2 has no per-object ACL, so this route (not the storage bucket) is what actually decides whether a \"public\" file's bytes are reachable. 302-redirects to a fresh, short-lived (60s) signed GET url so the actual bytes are still served straight off Cloudflare's edge.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | 

// Redirect to a public file's content
FilesAPI.apiFilesPublicFileIdGet(fileId: fileId) { (response, error) in
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
 **fileId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmDirectUpload**
```swift
    open class func confirmDirectUpload(confirmDirectUploadRequest: ConfirmDirectUploadRequest, completion: @escaping (_ data: ConfirmUploadResponse?, _ error: Error?) -> Void)
```

Confirm direct upload (scan + finalize metadata)

After a client uploads directly to S3 using the presigned PUT URL, call this endpoint to have the server scan the object, create the File record, and optionally quarantine if infected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let confirmDirectUploadRequest = confirmDirectUpload_request(key: "key_example", projectId: "projectId_example", originalName: "originalName_example", contentType: "contentType_example", size: 123, bucket: "bucket_example", isPublic: false) // ConfirmDirectUploadRequest | 

// Confirm direct upload (scan + finalize metadata)
FilesAPI.confirmDirectUpload(confirmDirectUploadRequest: confirmDirectUploadRequest) { (response, error) in
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
 **confirmDirectUploadRequest** | [**ConfirmDirectUploadRequest**](ConfirmDirectUploadRequest.md) |  | 

### Return type

[**ConfirmUploadResponse**](ConfirmUploadResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
```swift
    open class func deleteFile(projectId: String, bucketId: String, fileId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete file

Delete a file from a bucket permanently. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let bucketId = "bucketId_example" // String | 
let fileId = "fileId_example" // String | 

// Delete file
FilesAPI.deleteFile(projectId: projectId, bucketId: bucketId, fileId: fileId) { (response, error) in
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
 **bucketId** | **String** |  | 
 **fileId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadBucketFile**
```swift
    open class func downloadBucketFile(fileId: String, token: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download file from bucket

Download a file from a bucket. For public files, no authentication is required. For private files, a download token (obtained via signed URL endpoint) is required in the query parameter. Accepts: Token-based authentication via query parameter (for private files), or no authentication (for public files). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | 
let token = "token_example" // String |  (optional)

// Download file from bucket
FilesAPI.downloadBucketFile(fileId: fileId, token: token) { (response, error) in
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
 **fileId** | **String** |  | 
 **token** | **String** |  | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadFile**
```swift
    open class func downloadFile(fileId: String, token: String? = nil, completion: @escaping (_ data: SignedUrlResponse?, _ error: Error?) -> Void)
```

Generate a presigned URL for downloading a file

Returns a time-limited provider-signed URL (S3) for direct download. Server enforces RBAC before issuing the URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let fileId = "fileId_example" // String | 
let token = "token_example" // String |  (optional)

// Generate a presigned URL for downloading a file
FilesAPI.downloadFile(fileId: fileId, token: token) { (response, error) in
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
 **fileId** | **String** |  | 
 **token** | **String** |  | [optional] 

### Return type

[**SignedUrlResponse**](SignedUrlResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePresignedUpload**
```swift
    open class func generatePresignedUpload(generatePresignedUploadRequest: GeneratePresignedUploadRequest, completion: @escaping (_ data: PresignedPostResponse?, _ error: Error?) -> Void)
```

Generate a presigned PUT URL for direct browser upload

Issue a presigned PUT URL for clients to upload directly to object storage. The server stores the issued key with expiry and RBAC is enforced. PUT (not POST) is used because Cloudflare R2 does not implement the S3 POST Object API. The client must PUT the file body to `url` with the exact `headers` returned (a Content-Type mismatch fails with SignatureDoesNotMatch). `maxFileUploadBytes` is enforced server-side by `/api/files/upload/confirm` after the upload, not by the presigned URL itself. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let generatePresignedUploadRequest = generatePresignedUpload_request(projectId: "projectId_example", bucket: "bucket_example", originalName: "originalName_example", contentType: "contentType_example", isPublic: false) // GeneratePresignedUploadRequest | 

// Generate a presigned PUT URL for direct browser upload
FilesAPI.generatePresignedUpload(generatePresignedUploadRequest: generatePresignedUploadRequest) { (response, error) in
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
 **generatePresignedUploadRequest** | [**GeneratePresignedUploadRequest**](GeneratePresignedUploadRequest.md) |  | 

### Return type

[**PresignedPostResponse**](PresignedPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSignedUrl**
```swift
    open class func generateSignedUrl(projectId: String, bucketId: String, fileId: String, generateSignedUrlRequest: GenerateSignedUrlRequest? = nil, completion: @escaping (_ data: SignedUrlResponse?, _ error: Error?) -> Void)
```

Generate signed URL for file

Generate a time-limited signed URL for downloading a private file. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let bucketId = "bucketId_example" // String | 
let fileId = "fileId_example" // String | 
let generateSignedUrlRequest = generateSignedUrl_request(expiresIn: 123) // GenerateSignedUrlRequest |  (optional)

// Generate signed URL for file
FilesAPI.generateSignedUrl(projectId: projectId, bucketId: bucketId, fileId: fileId, generateSignedUrlRequest: generateSignedUrlRequest) { (response, error) in
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
 **bucketId** | **String** |  | 
 **fileId** | **String** |  | 
 **generateSignedUrlRequest** | [**GenerateSignedUrlRequest**](GenerateSignedUrlRequest.md) |  | [optional] 

### Return type

[**SignedUrlResponse**](SignedUrlResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```swift
    open class func getFile(projectId: String, bucketId: String, fileId: String, completion: @escaping (_ data: FileResponse?, _ error: Error?) -> Void)
```

Get file metadata

Get metadata for a specific file in a bucket. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let bucketId = "bucketId_example" // String | 
let fileId = "fileId_example" // String | 

// Get file metadata
FilesAPI.getFile(projectId: projectId, bucketId: bucketId, fileId: fileId) { (response, error) in
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
 **bucketId** | **String** |  | 
 **fileId** | **String** |  | 

### Return type

[**FileResponse**](FileResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFiles**
```swift
    open class func listFiles(projectId: String, bucketId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, type: String? = nil, completion: @escaping (_ data: FileListResponse?, _ error: Error?) -> Void)
```

List files in bucket

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let bucketId = "bucketId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let search = "search_example" // String |  (optional)
let type = "type_example" // String |  (optional)

// List files in bucket
FilesAPI.listFiles(projectId: projectId, bucketId: bucketId, page: page, limit: limit, search: search, type: type) { (response, error) in
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
 **bucketId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **search** | **String** |  | [optional] 
 **type** | **String** |  | [optional] 

### Return type

[**FileListResponse**](FileListResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFiles**
```swift
    open class func uploadFiles(projectId: String, bucketId: String, files: [URL], completion: @escaping (_ data: FileUploadResponse?, _ error: Error?) -> Void)
```

Upload files to bucket

Upload one or more files to a storage bucket using multipart/form-data. Per-file size is limited by the org plan (`maxFileUploadBytes`) and bucket `maxFileSize`, whichever is stricter. Exceeding the limit returns **413**. Accepts: OrgBearerAuth (for admin users), ProjectBearerAuth (JWT for authenticated users), or ApiKeyAuth (X-API-Key for programmatic access). Both ProjectBearerAuth and ApiKeyAuth are fully implemented. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let bucketId = "bucketId_example" // String | 
let files = [URL(string: "https://example.com")!] // [URL] | 

// Upload files to bucket
FilesAPI.uploadFiles(projectId: projectId, bucketId: bucketId, files: files) { (response, error) in
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
 **bucketId** | **String** |  | 
 **files** | [**[URL]**](URL.md) |  | 

### Return type

[**FileUploadResponse**](FileUploadResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ApiKeyAuth](../README.md#ApiKeyAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

