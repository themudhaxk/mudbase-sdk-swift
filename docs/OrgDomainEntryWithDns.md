# OrgDomainEntryWithDns

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Subdocument id when present (MongoDB) | [optional] 
**hostname** | **String** |  | [optional] 
**hostnameNormalized** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**isPrimary** | **Bool** |  | [optional] 
**source** | **String** |  | [optional] 
**verificationToken** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**verifiedAt** | **Date** |  | [optional] 
**lastVerifiedAt** | **Date** |  | [optional] 
**dnsTxtHost** | **String** | FQDN for the TXT record (e.g. _mudbase-verify.example.com) | [optional] 
**dnsTxtValue** | **String** | Exact TXT string value (mudbase-domain-verification&#x3D;&lt;token&gt;) | [optional] 
**cloudflareEdge** | [**OrgCloudflareEdgeHints**](OrgCloudflareEdgeHints.md) |  | [optional] 
**platformActivationPending** | **Bool** | True while Mudbase TXT passed but custom host not yet active (includes CNAME and platform DNS pipeline). | [optional] 
**customDomainLiveForApiTraffic** | **Bool** |  | [optional] 
**customDomainVerificationStep** | **Int** | Console wizard step 1–3; null when active/verified. | [optional] 
**routingCnameTarget** | **String** | Routing CNAME target: Fly Certificates API &#x60;dns_requirements.cname&#x60; when Fly ACME has provisioned and stored requirements; otherwise fallback from env &#x60;CUSTOM_DOMAIN_API_CNAME_TARGET&#x60;. | [optional] 
**dnsRecords** | [OrgDnsRecord] | Unified checklist: Mudbase ownership TXT, routing CNAME from Fly &#x60;dns_requirements.cname&#x60; (purpose &#x60;routing&#x60;) when provisioned else env fallback, and Fly rows (&#x60;fly_ownership&#x60;, &#x60;acme_challenge&#x60;, …) when Fly ACME is enabled and the certificate has been provisioned after Mudbase TXT. Empty or absent when Fly ACME is off or not yet provisioned. Prefer this over &#x60;platformDnsVerification&#x60; alone for org-facing DNS UI. | [optional] 
**flyCertificateStatus** | **String** | Fly Certificates API &#x60;status&#x60; when **&#x60;CUSTOM_DOMAIN_FLY_ACME_ENABLED&#x60;** and token/app are configured (e.g. &#x60;pending_validation&#x60;, &#x60;active&#x60;). Null when Fly ACME is not in use for this deployment. | [optional] 
**platformDnsVerification** | [**OrgPlatformDnsVerificationCustomer**](OrgPlatformDnsVerificationCustomer.md) |  | [optional] 
**cnameSubmittedAt** | **Date** |  | [optional] 
**cnameApprovedAt** | **Date** |  | [optional] 
**platformDnsVerificationSubmittedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


