# MultiRoleAddRoleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **String** |  | 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**signupEndpoint** | **String** |  | 
**defaultPermissions** | [MultiRoleAddRoleRequestDefaultPermissionsInner] | Optional global/base permissions. For collection-level CRUD use &#x60;collectionPermissions&#x60;. | [optional] 
**collectionPermissions** | [String: MultiRoleUpdateRoleRequestCollectionPermissionsValue] | Per-collection CRUD map. Keys are collection slugs; values are action arrays or objects with &#x60;actions&#x60; + optional &#x60;conditions&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


