# OrgVerifyCustomDomainDnsSuccessResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **Bool** |  | 
**hostname** | **String** |  | 
**status** | **String** | Domain row status after check (typically cname_pending_staff after first TXT success from pending/failed; legacy dns_verified possible) | 
**verificationToken** | **String** |  | 
**challengeHost** | **String** | Same as dnsTxtHost (_mudbase-verify.&lt;hostname&gt;) | 
**expectedTxt** | **String** | Same as dnsTxtValue | 
**dnsTxtHost** | **String** |  | 
**dnsTxtValue** | **String** |  | 
**cloudflare** | [**OrgCloudflareEdgeHints**](OrgCloudflareEdgeHints.md) |  | [optional] 
**dnsRecords** | [OrgDnsRecord] | Same shape as &#x60;OrgDomainEntryWithDns.dnsRecords&#x60; when Fly ACME ran after this successful verify; omit or empty when Fly ACME is disabled or not provisioned. | [optional] 
**flyCertificateStatus** | **String** | Fly certificate status after verify when Fly ACME is active; null otherwise | [optional] 
**flyAcmeEnabled** | **Bool** | True when Fly ACME would call the Certificates API (token, app, CUSTOM_DOMAIN_FLY_ACME_ENABLED). | [optional] 
**flyAcmeDisabledReason** | **String** | When &#x60;flyAcmeEnabled&#x60; is false, why Fly ACME did not run (ops misconfiguration hint). | [optional] 
**flyProvisionError** | **String** | When Fly ACME is enabled but POST acme failed, Fly API error message for support; null on success. | [optional] 
**flyLegacyStaffPipeline** | **Bool** | When true, &#x60;CUSTOM_DOMAIN_FLY_LEGACY_STAFF_PIPELINE&#x60; is on — status may stay &#x60;cname_pending_staff&#x60; and staff approve-cname is required even if Fly provision succeeds. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


