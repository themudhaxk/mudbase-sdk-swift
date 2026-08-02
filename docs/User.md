# User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**fullName** | **String** |  | [optional] 
**avatar** | **String** |  | [optional] 
**role** | **String** |  | [optional] 
**customRole** | **String** | Application-level role slug from the project&#39;s Multi-Role feature (e.g. \&quot;customer\&quot;, \&quot;seller\&quot;). Null for org-level (org/admin/member/viewer) users who aren&#39;t project end-users. | [optional] 
**isAnonymous** | **Bool** | True for a guest session created via POST /api/auth/anonymous that hasn&#39;t been converted to a full account yet. | [optional] 
**emailVerified** | **Bool** |  | [optional] 
**phoneVerified** | **Bool** |  | [optional] 
**twoFactorEnabled** | **Bool** |  | [optional] 
**lastLogin** | **Date** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 
**org** | [**OrganizationSummary**](OrganizationSummary.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


