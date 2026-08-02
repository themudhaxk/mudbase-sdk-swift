# DashboardOverviewDataLatency

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **String** |  | [optional] 
**avgMsToday** | **Int** |  | [optional] 
**avgMs7d** | **Int** |  | [optional] 
**latencySamplesToday** | **Int** | Count of openapi-docs–scoped latency samples for this project (UTC today) | [optional] 
**latencyNeedsTraffic** | **Bool** |  | [optional] 
**interpretation** | **String** | Why mean can differ from typical latency; points to latency-insights | [optional] 
**instanceRollup** | [**DashboardOverviewDataLatencyInstanceRollup**](DashboardOverviewDataLatencyInstanceRollup.md) |  | [optional] 
**topRoutesByImpactHint** | [DashboardOverviewDataLatencyTopRoutesByImpactHintInner] | Top route templates by impact score on this instance (debugging hint) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


