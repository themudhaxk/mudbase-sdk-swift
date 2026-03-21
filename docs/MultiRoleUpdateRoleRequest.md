# MultiRoleUpdateRoleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**signupEndpoint** | **String** |  | [optional] 
**requiresApproval** | **Bool** |  | [optional] 
**requiresPayment** | **Bool** |  | [optional] 
**requiresKYC** | **Bool** |  | [optional] 
**defaultPermissions** | **[AnyCodable]** |  | [optional] 
**collectionPermissions** | [String: MultiRoleUpdateRoleRequestCollectionPermissionsValue] | Per-collection CRUD map (same as POST add role). | [optional] 
**metadata** | **AnyCodable** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


