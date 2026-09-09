# ChatAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addParticipant**](ChatAPI.md#addparticipant) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/participants | Add participant to chat
[**addReaction**](ChatAPI.md#addreaction) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId}/reactions | Add reaction to message
[**createChat**](ChatAPI.md#createchat) | **POST** /api/chat/projects/{projectId}/chats | Create new chat
[**deleteMessage**](ChatAPI.md#deletemessage) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId} | Delete message
[**editMessage**](ChatAPI.md#editmessage) | **PATCH** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId} | Edit message
[**getChatDetails**](ChatAPI.md#getchatdetails) | **GET** /api/chat/projects/{projectId}/chats/{chatId} | Get chat details
[**getChatE2eeParticipantKeys**](ChatAPI.md#getchate2eeparticipantkeys) | **GET** /api/chat/projects/{projectId}/chats/{chatId}/e2ee/participant-keys | List participant E2EE public keys
[**getChatMessages**](ChatAPI.md#getchatmessages) | **GET** /api/chat/projects/{projectId}/chats/{chatId}/messages | Get chat messages
[**getUserChats**](ChatAPI.md#getuserchats) | **GET** /api/chat/projects/{projectId}/chats | Get user chats
[**markMessagesAsRead**](ChatAPI.md#markmessagesasread) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages/read | Mark messages as read
[**putChatE2eeKey**](ChatAPI.md#putchate2eekey) | **PUT** /api/chat/projects/{projectId}/me/chat-e2ee-key | Register chat E2EE identity public key
[**removeParticipant**](ChatAPI.md#removeparticipant) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/participants | Remove participant from chat
[**removeReaction**](ChatAPI.md#removereaction) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId}/reactions | Remove reaction from message
[**sendMessage**](ChatAPI.md#sendmessage) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages | Send message


# **addParticipant**
```swift
    open class func addParticipant(projectId: String, chatId: String, addParticipantRequest: AddParticipantRequest, completion: @escaping (_ data: AddParticipant200Response?, _ error: Error?) -> Void)
```

Add participant to chat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let addParticipantRequest = addParticipant_request(userId: "userId_example", role: "role_example") // AddParticipantRequest | 

// Add participant to chat
ChatAPI.addParticipant(projectId: projectId, chatId: chatId, addParticipantRequest: addParticipantRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **addParticipantRequest** | [**AddParticipantRequest**](AddParticipantRequest.md) |  | 

### Return type

[**AddParticipant200Response**](AddParticipant200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addReaction**
```swift
    open class func addReaction(projectId: String, chatId: String, messageId: String, addReactionRequest: AddReactionRequest, completion: @escaping (_ data: AddReaction200Response?, _ error: Error?) -> Void)
```

Add reaction to message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let messageId = "messageId_example" // String | 
let addReactionRequest = addReaction_request(emoji: "emoji_example") // AddReactionRequest | 

// Add reaction to message
ChatAPI.addReaction(projectId: projectId, chatId: chatId, messageId: messageId, addReactionRequest: addReactionRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **messageId** | **String** |  | 
 **addReactionRequest** | [**AddReactionRequest**](AddReactionRequest.md) |  | 

### Return type

[**AddReaction200Response**](AddReaction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChat**
```swift
    open class func createChat(projectId: String, createChatRequest: CreateChatRequest, completion: @escaping (_ data: CreateChat201Response?, _ error: Error?) -> Void)
```

Create new chat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let createChatRequest = createChat_request(name: "name_example", description: "description_example", type: "type_example", participants: ["participants_example"], settings: 123) // CreateChatRequest | 

// Create new chat
ChatAPI.createChat(projectId: projectId, createChatRequest: createChatRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **createChatRequest** | [**CreateChatRequest**](CreateChatRequest.md) |  | 

### Return type

[**CreateChat201Response**](CreateChat201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
```swift
    open class func deleteMessage(projectId: String, chatId: String, messageId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let messageId = "messageId_example" // String | 

// Delete message
ChatAPI.deleteMessage(projectId: projectId, chatId: chatId, messageId: messageId) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **messageId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editMessage**
```swift
    open class func editMessage(projectId: String, chatId: String, messageId: String, editMessageRequest: EditMessageRequest, completion: @escaping (_ data: EditMessage200Response?, _ error: Error?) -> Void)
```

Edit message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let messageId = "messageId_example" // String | 
let editMessageRequest = editMessage_request(content: "content_example", e2ee: editMessage_request_e2ee(version: 123, scheme: "scheme_example", ciphertext: "ciphertext_example", nonce: "nonce_example", ephemeralPublicKey: "ephemeralPublicKey_example", senderKeyId: "senderKeyId_example")) // EditMessageRequest | 

// Edit message
ChatAPI.editMessage(projectId: projectId, chatId: chatId, messageId: messageId, editMessageRequest: editMessageRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **messageId** | **String** |  | 
 **editMessageRequest** | [**EditMessageRequest**](EditMessageRequest.md) |  | 

### Return type

[**EditMessage200Response**](EditMessage200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatDetails**
```swift
    open class func getChatDetails(projectId: String, chatId: String, completion: @escaping (_ data: GetChatDetails200Response?, _ error: Error?) -> Void)
```

Get chat details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 

// Get chat details
ChatAPI.getChatDetails(projectId: projectId, chatId: chatId) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 

### Return type

[**GetChatDetails200Response**](GetChatDetails200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatE2eeParticipantKeys**
```swift
    open class func getChatE2eeParticipantKeys(projectId: String, chatId: String, completion: @escaping (_ data: GetChatE2eeParticipantKeys200Response?, _ error: Error?) -> Void)
```

List participant E2EE public keys

Returns registered identity public keys for users in this chat (for client-side key distribution).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 

// List participant E2EE public keys
ChatAPI.getChatE2eeParticipantKeys(projectId: projectId, chatId: chatId) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 

### Return type

[**GetChatE2eeParticipantKeys200Response**](GetChatE2eeParticipantKeys200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatMessages**
```swift
    open class func getChatMessages(projectId: String, chatId: String, page: Int? = nil, limit: Int? = nil, before: Date? = nil, after: Date? = nil, completion: @escaping (_ data: GetChatMessages200Response?, _ error: Error?) -> Void)
```

Get chat messages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 50)
let before = Date() // Date |  (optional)
let after = Date() // Date |  (optional)

// Get chat messages
ChatAPI.getChatMessages(projectId: projectId, chatId: chatId, page: page, limit: limit, before: before, after: after) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 50]
 **before** | **Date** |  | [optional] 
 **after** | **Date** |  | [optional] 

### Return type

[**GetChatMessages200Response**](GetChatMessages200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserChats**
```swift
    open class func getUserChats(projectId: String, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: GetUserChats200Response?, _ error: Error?) -> Void)
```

Get user chats

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 20)

// Get user chats
ChatAPI.getUserChats(projectId: projectId, page: page, limit: limit) { (response, error) in
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
 **projectId** | **String** |  | 
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 20]

### Return type

[**GetUserChats200Response**](GetUserChats200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markMessagesAsRead**
```swift
    open class func markMessagesAsRead(projectId: String, chatId: String, markMessagesAsReadRequest: MarkMessagesAsReadRequest, completion: @escaping (_ data: MarkMessagesAsRead200Response?, _ error: Error?) -> Void)
```

Mark messages as read

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let markMessagesAsReadRequest = markMessagesAsRead_request(messageIds: ["messageIds_example"]) // MarkMessagesAsReadRequest | 

// Mark messages as read
ChatAPI.markMessagesAsRead(projectId: projectId, chatId: chatId, markMessagesAsReadRequest: markMessagesAsReadRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **markMessagesAsReadRequest** | [**MarkMessagesAsReadRequest**](MarkMessagesAsReadRequest.md) |  | 

### Return type

[**MarkMessagesAsRead200Response**](MarkMessagesAsRead200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putChatE2eeKey**
```swift
    open class func putChatE2eeKey(projectId: String, putChatE2eeKeyRequest: PutChatE2eeKeyRequest, completion: @escaping (_ data: PutChatE2eeKey200Response?, _ error: Error?) -> Void)
```

Register chat E2EE identity public key

Stores your long-term public key for end-to-end encrypted chat (key agreement). Private keys never leave the client. Required for other participants to encrypt to you. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let putChatE2eeKeyRequest = putChatE2eeKey_request(identityPublicKey: "identityPublicKey_example", keyVersion: 123) // PutChatE2eeKeyRequest | 

// Register chat E2EE identity public key
ChatAPI.putChatE2eeKey(projectId: projectId, putChatE2eeKeyRequest: putChatE2eeKeyRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **putChatE2eeKeyRequest** | [**PutChatE2eeKeyRequest**](PutChatE2eeKeyRequest.md) |  | 

### Return type

[**PutChatE2eeKey200Response**](PutChatE2eeKey200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeParticipant**
```swift
    open class func removeParticipant(projectId: String, chatId: String, removeParticipantRequest: RemoveParticipantRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove participant from chat

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let removeParticipantRequest = removeParticipant_request(userId: "userId_example") // RemoveParticipantRequest | 

// Remove participant from chat
ChatAPI.removeParticipant(projectId: projectId, chatId: chatId, removeParticipantRequest: removeParticipantRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **removeParticipantRequest** | [**RemoveParticipantRequest**](RemoveParticipantRequest.md) |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeReaction**
```swift
    open class func removeReaction(projectId: String, chatId: String, messageId: String, addReactionRequest: AddReactionRequest, completion: @escaping (_ data: RemoveReaction200Response?, _ error: Error?) -> Void)
```

Remove reaction from message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let messageId = "messageId_example" // String | 
let addReactionRequest = addReaction_request(emoji: "emoji_example") // AddReactionRequest | 

// Remove reaction from message
ChatAPI.removeReaction(projectId: projectId, chatId: chatId, messageId: messageId, addReactionRequest: addReactionRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **messageId** | **String** |  | 
 **addReactionRequest** | [**AddReactionRequest**](AddReactionRequest.md) |  | 

### Return type

[**RemoveReaction200Response**](RemoveReaction200Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
```swift
    open class func sendMessage(projectId: String, chatId: String, sendMessageRequest: SendMessageRequest, completion: @escaping (_ data: SendMessage201Response?, _ error: Error?) -> Void)
```

Send message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | 
let chatId = "chatId_example" // String | 
let sendMessageRequest = sendMessage_request(type: "type_example", content: "content_example", e2ee: sendMessage_request_e2ee(version: 123, scheme: "scheme_example", ciphertext: "ciphertext_example", nonce: "nonce_example", ephemeralPublicKey: "ephemeralPublicKey_example", senderKeyId: "senderKeyId_example"), replyTo: "replyTo_example", mentions: ["mentions_example"]) // SendMessageRequest | 

// Send message
ChatAPI.sendMessage(projectId: projectId, chatId: chatId, sendMessageRequest: sendMessageRequest) { (response, error) in
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
 **projectId** | **String** |  | 
 **chatId** | **String** |  | 
 **sendMessageRequest** | [**SendMessageRequest**](SendMessageRequest.md) |  | 

### Return type

[**SendMessage201Response**](SendMessage201Response.md)

### Authorization

[OrgBearerAuth](../README.md#OrgBearerAuth), [ProjectBearerAuth](../README.md#ProjectBearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

