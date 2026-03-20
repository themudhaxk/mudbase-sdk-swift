# HealthAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthCheck**](HealthAPI.md#healthcheck) | **GET** /health | Health check
[**healthSystemStatus**](HealthAPI.md#healthsystemstatus) | **GET** /api/status | System status


# **healthCheck**
```swift
    open class func healthCheck(completion: @escaping (_ data: HealthResponse?, _ error: Error?) -> Void)
```

Health check

Liveness/readiness probe for load balancers and orchestrators. Returns status of core services (database, redis, storage, email, sms). No authentication required. Use for uptime checks and deployment health gates. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// Health check
HealthAPI.healthCheck() { (response, error) in
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

[**HealthResponse**](HealthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthSystemStatus**
```swift
    open class func healthSystemStatus(completion: @escaping (_ data: SystemStatusResponse?, _ error: Error?) -> Void)
```

System status

Returns detailed system status (uptime, memory, CPU, service health). Requires project JWT or API key. Used for admin or monitoring dashboards.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK


// System status
HealthAPI.healthSystemStatus() { (response, error) in
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

[**SystemStatusResponse**](SystemStatusResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

