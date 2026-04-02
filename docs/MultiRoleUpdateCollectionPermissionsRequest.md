# MultiRoleUpdateCollectionPermissionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | **[String]** |  | [optional] 
**conditions** | **AnyCodable** |  | [optional] 
**dataScope** | **String** | &#x60;all&#x60; &#x3D; no automatic row-owner filter. &#x60;own&#x60; &#x3D; only documents where the owner field (default &#x60;createdBy&#x60;) matches the authenticated app user. | [optional] 
**ownerField** | **String** | Optional per-assignment override for the document field used when &#x60;dataScope&#x60; is &#x60;own&#x60; (project default is &#x60;settings.dataOwnerField&#x60;, usually &#x60;createdBy&#x60;). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


