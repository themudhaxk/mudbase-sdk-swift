# MUDBASE Swift SDK

Mudbase is a backend platform: authentication, a schema-driven database, file storage, serverless functions, webhooks, and real-time and transactional messaging behind one API. The Swift SDK is a native Swift client for that API, so you can manage users and organizations, define collections and query data, store and serve files, invoke functions, and configure webhooks without hand-rolling HTTP requests.

## Installation

```swift
.package(url: "https://github.com/themudhaxk/mudbase-sdk-swift", from: "1.0.0")
```

## Quickstart

```swift
import MudbaseSDK

MudbaseSDKAPI.customHeaders["X-API-Key"] = "YOUR_API_KEY"

CollectionsAPI.listCollections(projectId: "YOUR_PROJECT_ID") { result, error in
    guard let result = result, error == nil else {
        print(error ?? "unknown error")
        return
    }
    print(result.collections ?? [])
}
```

## What you can do

- **Authentication** - sign-up, sign-in, sessions, and API key management
- **Database** - schema-defined collections with typed CRUD and filtered queries
- **Storage** - buckets and file uploads and downloads
- **Realtime** - WebSocket events and live data subscriptions
- **Functions** - deploy and invoke serverless functions
- **Messaging** - transactional email, SMS, and push notifications
- **Webhooks** - configurable delivery with retry and logs
- **Roles & permissions** - project-level access control

## Documentation

- **Docs & API reference:** https://docs.mudbase.dev
- **Product:** https://mudbase.dev

## Support

Questions or issues: open one at https://github.com/themudhaxk/mudbase-sdk-swift, or reach us at support@mudbase.dev.
