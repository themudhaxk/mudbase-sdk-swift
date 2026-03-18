# PresignedPostResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Object key (S3) clients should upload to | [optional] 
**url** | **String** | URL to POST the multipart form to | [optional] 
**fields** | **AnyCodable** | Form fields required for the presigned POST (Policy, X-Amz-Signature, etc.) | [optional] 
**expiresIn** | **Int** | Expiration of the presigned POST in seconds | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


