# FunctionTrigger

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Trigger type | 
**event** | **String** | Event name (e.g. create, update, delete for document; uploaded, deleted for file; tx, balance for wallet) | [optional] 
**schedule** | **String** | For cron - minutely, hourly, daily, weekly, or custom cron expression | [optional] 
**path** | **String** | HTTP path for http triggers | [optional] 
**method** | **String** |  | [optional] 
**collectionId** | **String** | For document triggers - filter by collection | [optional] 
**bucketId** | **String** | For file triggers - filter by bucket | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


