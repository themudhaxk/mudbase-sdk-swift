# CreateRoleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**permissions** | [CreateRoleRequestPermissionsInner] | Legacy resource-level permissions. For data CRUD, prefer &#x60;collectionPermissions&#x60; below. | [optional] 
**hierarchy** | **Double** |  | [optional] 
**collectionPermissions** | [String: CreateRoleRequestCollectionPermissionsValue] | Per-collection CRUD map. Keys are collection slugs; value can be action array or object with actions + conditions. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


