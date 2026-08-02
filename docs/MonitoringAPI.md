# MonitoringAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMonitoringAlert**](MonitoringAPI.md#createmonitoringalert) | **POST** /api/monitoring/alerts | Create monitoring alert
[**getMonitoringAnalytics**](MonitoringAPI.md#getmonitoringanalytics) | **GET** /api/monitoring/analytics | Get usage analytics (time series)
[**getMonitoringErrors**](MonitoringAPI.md#getmonitoringerrors) | **GET** /api/monitoring/errors | Get error logs
[**getMonitoringLatencyInsights**](MonitoringAPI.md#getmonitoringlatencyinsights) | **GET** /api/monitoring/latency-insights | Latency insights (route templates, percentiles, impact scores)
[**getMonitoringLogs**](MonitoringAPI.md#getmonitoringlogs) | **GET** /api/monitoring/logs | Get audit logs
[**getMonitoringPerformance**](MonitoringAPI.md#getmonitoringperformance) | **GET** /api/monitoring/performance | Get performance metrics
[**getMonitoringQueueMetrics**](MonitoringAPI.md#getmonitoringqueuemetrics) | **GET** /api/monitoring/queue-metrics | Usage metering queue job counts
[**getScannerMetrics**](MonitoringAPI.md#getscannermetrics) | **GET** /api/monitoring/scanner-metrics | Get block scanner metrics
[**listMonitoringAlerts**](MonitoringAPI.md#listmonitoringalerts) | **GET** /api/monitoring/alerts | List monitoring alerts


# **createMonitoringAlert**
```swift
    open class func createMonitoringAlert(createMonitoringAlertRequest: CreateMonitoringAlertRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create monitoring alert

Create a monitoring alert (plan limit alertsPerProject enforced).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let createMonitoringAlertRequest = createMonitoringAlert_request(name: "name_example", condition: "condition_example", threshold: 123, action: "action_example", projectId: "projectId_example") // CreateMonitoringAlertRequest | 

// Create monitoring alert
MonitoringAPI.createMonitoringAlert(createMonitoringAlertRequest: createMonitoringAlertRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMonitoringAlertRequest** | [**CreateMonitoringAlertRequest**](CreateMonitoringAlertRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringAnalytics**
```swift
    open class func getMonitoringAnalytics(projectId: String? = nil, period: Period_getMonitoringAnalytics? = nil, granularity: Granularity_getMonitoringAnalytics? = nil, days: Int? = nil, completion: @escaping (_ data: MonitoringAnalyticsResponse?, _ error: Error?) -> Void)
```

Get usage analytics (time series)

Aggregates UsageStat by day/week/month. Optional **projectId** scopes to one project. Query **days** (1–90) for a rolling window (e.g. **days=14**); when set, overrides **period**. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String |  (optional)
let period = "period_example" // String |  (optional) (default to .month)
let granularity = "granularity_example" // String |  (optional) (default to .day)
let days = 987 // Int | Rolling window in days (1–90); when set, period becomes last_N_days (optional)

// Get usage analytics (time series)
MonitoringAPI.getMonitoringAnalytics(projectId: projectId, period: period, granularity: granularity, days: days) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** |  | [optional] 
 **period** | **String** |  | [optional] [default to .month]
 **granularity** | **String** |  | [optional] [default to .day]
 **days** | **Int** | Rolling window in days (1–90); when set, period becomes last_N_days | [optional] 

### Return type

[**MonitoringAnalyticsResponse**](MonitoringAnalyticsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringErrors**
```swift
    open class func getMonitoringErrors(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get error logs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get error logs
MonitoringAPI.getMonitoringErrors() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringLatencyInsights**
```swift
    open class func getMonitoringLatencyInsights(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Latency insights (route templates, percentiles, impact scores)

Per-process snapshot: normalized **routeKey** (METHOD + path template), **p50/p95/p99**, 4xx/5xx counts, **impactScore**, **alertsSuggested**, **rps**, **inFlight**, **eventLoopLagP99Ms**. One buffer per server instance. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Latency insights (route templates, percentiles, impact scores)
MonitoringAPI.getMonitoringLatencyInsights() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringLogs**
```swift
    open class func getMonitoringLogs(page: Int? = nil, limit: Int? = nil, projectId: String? = nil, userId: String? = nil, level: String? = nil, startDate: Date? = nil, endDate: Date? = nil, action: String? = nil, resource: String? = nil, completion: @escaping (_ data: MonitoringLogsResponse?, _ error: Error?) -> Void)
```

Get audit logs

Paginated audit trail for the org. Use **projectId** to scope to one project; **level=all** or **audit** for full activity feed. Each entry includes **activityTitle** and **activityDetail** for dashboard copy. Requires monitoring read permission. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)
let projectId = "projectId_example" // String | Filter to this project (must belong to org) (optional)
let userId = "userId_example" // String | Filter to this user's audit entries (optional)
let level = "level_example" // String | error|security|all|audit|low|medium|high|critical (optional) (default to "error")
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)
let action = "action_example" // String |  (optional)
let resource = "resource_example" // String |  (optional)

// Get audit logs
MonitoringAPI.getMonitoringLogs(page: page, limit: limit, projectId: projectId, userId: userId, level: level, startDate: startDate, endDate: endDate, action: action, resource: resource) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]
 **projectId** | **String** | Filter to this project (must belong to org) | [optional] 
 **userId** | **String** | Filter to this user&#39;s audit entries | [optional] 
 **level** | **String** | error|security|all|audit|low|medium|high|critical | [optional] [default to &quot;error&quot;]
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 
 **action** | **String** |  | [optional] 
 **resource** | **String** |  | [optional] 

### Return type

[**MonitoringLogsResponse**](MonitoringLogsResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringPerformance**
```swift
    open class func getMonitoringPerformance(projectId: String? = nil, period: Period_getMonitoringPerformance? = nil, completion: @escaping (_ data: MonitoringPerformanceResponse?, _ error: Error?) -> Void)
```

Get performance metrics

Response time stats from AuditLog where available. With **projectId**, falls back to UsageStat latency averages when audit data is sparse (**latencySource** may be **usage_stat**). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String |  (optional)
let period = "period_example" // String |  (optional) (default to .hour)

// Get performance metrics
MonitoringAPI.getMonitoringPerformance(projectId: projectId, period: period) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String** |  | [optional] 
 **period** | **String** |  | [optional] [default to .hour]

### Return type

[**MonitoringPerformanceResponse**](MonitoringPerformanceResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMonitoringQueueMetrics**
```swift
    open class func getMonitoringQueueMetrics(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Usage metering queue job counts

BullMQ **usage-events** queue counts when `USE_METERING_QUEUE` and `REDIS_URL` are set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Usage metering queue job counts
MonitoringAPI.getMonitoringQueueMetrics() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScannerMetrics**
```swift
    open class func getScannerMetrics(completion: @escaping (_ data: GetScannerMetrics200Response?, _ error: Error?) -> Void)
```

Get block scanner metrics

Returns per-chain block scanner lag and health. Used for observability of ETH/UTXO block-based wallet monitoring. Alerts when lag exceeds threshold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Get block scanner metrics
MonitoringAPI.getScannerMetrics() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetScannerMetrics200Response**](GetScannerMetrics200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMonitoringAlerts**
```swift
    open class func listMonitoringAlerts(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List monitoring alerts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// List monitoring alerts
MonitoringAPI.listMonitoringAlerts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

