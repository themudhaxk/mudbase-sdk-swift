# CreateFunctionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**code** | **String** | Function body (async, has access to payload, db, files, messaging, wallet, utils, env, console) | 
**trigger** | [**FunctionTrigger**](FunctionTrigger.md) |  | 
**environment** | **[String: String]** | Per-function env vars injected into sandbox | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


