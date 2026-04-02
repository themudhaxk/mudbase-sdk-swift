# ChatAPI

All URIs are relative to *https://cloud.mudbase.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatAddParticipant**](ChatAPI.md#chataddparticipant) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/participants | Add participant to chat
[**chatAddReaction**](ChatAPI.md#chataddreaction) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId}/reactions | Add reaction to message
[**chatCreate**](ChatAPI.md#chatcreate) | **POST** /api/chat/projects/{projectId}/chats | Create new chat
[**chatDeleteMessage**](ChatAPI.md#chatdeletemessage) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId} | Delete message
[**chatEditMessage**](ChatAPI.md#chateditmessage) | **PATCH** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId} | Edit message
[**chatGet**](ChatAPI.md#chatget) | **GET** /api/chat/projects/{projectId}/chats/{chatId} | Get chat details
[**chatGetChatE2eeParticipantKeys**](ChatAPI.md#chatgetchate2eeparticipantkeys) | **GET** /api/chat/projects/{projectId}/chats/{chatId}/e2ee/participant-keys | List participant E2EE public keys
[**chatGetMessages**](ChatAPI.md#chatgetmessages) | **GET** /api/chat/projects/{projectId}/chats/{chatId}/messages | Get chat messages
[**chatList**](ChatAPI.md#chatlist) | **GET** /api/chat/projects/{projectId}/chats | Get user chats
[**chatMarkAsRead**](ChatAPI.md#chatmarkasread) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages/read | Mark messages as read
[**chatPutChatE2eeKey**](ChatAPI.md#chatputchate2eekey) | **PUT** /api/chat/projects/{projectId}/me/chat-e2ee-key | Register chat E2EE identity public key
[**chatRemoveParticipant**](ChatAPI.md#chatremoveparticipant) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/participants | Remove participant from chat
[**chatRemoveReaction**](ChatAPI.md#chatremovereaction) | **DELETE** /api/chat/projects/{projectId}/chats/{chatId}/messages/{messageId}/reactions | Remove reaction from message
[**chatSendMessage**](ChatAPI.md#chatsendmessage) | **POST** /api/chat/projects/{projectId}/chats/{chatId}/messages | Send message


# **chatAddParticipant**
```swift
    open class func chatAddParticipant(projectId: String, chatId: String, chatAddParticipantRequest: ChatAddParticipantRequest, completion: @escaping (_ data: ChatAddParticipant200Response?, _ error: Error?) -> Void)
```

Add participant to chat

Add a user to the chat with an optional role (admin or member).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let chatAddParticipantRequest = chat_addParticipant_request(userId: "userId_example", role: "role_example") // ChatAddParticipantRequest | User ID to add and optional role (admin, member).

// Add participant to chat
ChatAPI.chatAddParticipant(projectId: projectId, chatId: chatId, chatAddParticipantRequest: chatAddParticipantRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **chatAddParticipantRequest** | [**ChatAddParticipantRequest**](ChatAddParticipantRequest.md) | User ID to add and optional role (admin, member). | 

### Return type

[**ChatAddParticipant200Response**](ChatAddParticipant200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatAddReaction**
```swift
    open class func chatAddReaction(projectId: String, chatId: String, messageId: String, chatAddReactionRequest: ChatAddReactionRequest, completion: @escaping (_ data: ChatAddReaction200Response?, _ error: Error?) -> Void)
```

Add reaction to message

Add an emoji reaction to a message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let messageId = "messageId_example" // String | Message ID.
let chatAddReactionRequest = chat_addReaction_request(emoji: "emoji_example") // ChatAddReactionRequest | Emoji reaction (e.g. 👍, ❤️).

// Add reaction to message
ChatAPI.chatAddReaction(projectId: projectId, chatId: chatId, messageId: messageId, chatAddReactionRequest: chatAddReactionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **messageId** | **String** | Message ID. | 
 **chatAddReactionRequest** | [**ChatAddReactionRequest**](ChatAddReactionRequest.md) | Emoji reaction (e.g. 👍, ❤️). | 

### Return type

[**ChatAddReaction200Response**](ChatAddReaction200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatCreate**
```swift
    open class func chatCreate(projectId: String, chatCreateRequest: ChatCreateRequest, completion: @escaping (_ data: ChatCreate201Response?, _ error: Error?) -> Void)
```

Create new chat

Create a new chat (direct, group, channel, or broadcast) with name, type, participants, and optional settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatCreateRequest = chat_create_request(name: "name_example", description: "description_example", type: "type_example", participants: ["participants_example"], settings: 123) // ChatCreateRequest | Chat name, type (direct/group/channel/broadcast), participants array, optional description and settings.

// Create new chat
ChatAPI.chatCreate(projectId: projectId, chatCreateRequest: chatCreateRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatCreateRequest** | [**ChatCreateRequest**](ChatCreateRequest.md) | Chat name, type (direct/group/channel/broadcast), participants array, optional description and settings. | 

### Return type

[**ChatCreate201Response**](ChatCreate201Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatDeleteMessage**
```swift
    open class func chatDeleteMessage(projectId: String, chatId: String, messageId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete message

Delete a message from the chat (sender or admin). May be soft-delete or permanent depending on implementation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let messageId = "messageId_example" // String | Message ID.

// Delete message
ChatAPI.chatDeleteMessage(projectId: projectId, chatId: chatId, messageId: messageId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **messageId** | **String** | Message ID. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatEditMessage**
```swift
    open class func chatEditMessage(projectId: String, chatId: String, messageId: String, chatEditMessageRequest: ChatEditMessageRequest, completion: @escaping (_ data: ChatEditMessage200Response?, _ error: Error?) -> Void)
```

Edit message

Update the content of a message (sender only; supports edit history).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let messageId = "messageId_example" // String | Message ID.
let chatEditMessageRequest = chat_editMessage_request(content: "content_example", e2ee: chat_editMessage_request_e2ee(version: 123, scheme: "scheme_example", ciphertext: "ciphertext_example", nonce: "nonce_example", ephemeralPublicKey: "ephemeralPublicKey_example", senderKeyId: "senderKeyId_example")) // ChatEditMessageRequest | New plaintext content (non-E2EE messages) or new e2ee ciphertext (E2EE messages). One of content or e2ee.ciphertext is required.

// Edit message
ChatAPI.chatEditMessage(projectId: projectId, chatId: chatId, messageId: messageId, chatEditMessageRequest: chatEditMessageRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **messageId** | **String** | Message ID. | 
 **chatEditMessageRequest** | [**ChatEditMessageRequest**](ChatEditMessageRequest.md) | New plaintext content (non-E2EE messages) or new e2ee ciphertext (E2EE messages). One of content or e2ee.ciphertext is required. | 

### Return type

[**ChatEditMessage200Response**](ChatEditMessage200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatGet**
```swift
    open class func chatGet(projectId: String, chatId: String, completion: @escaping (_ data: ChatGet200Response?, _ error: Error?) -> Void)
```

Get chat details

Returns full chat metadata including participants and roles for a single chat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.

// Get chat details
ChatAPI.chatGet(projectId: projectId, chatId: chatId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 

### Return type

[**ChatGet200Response**](ChatGet200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatGetChatE2eeParticipantKeys**
```swift
    open class func chatGetChatE2eeParticipantKeys(projectId: String, chatId: String, completion: @escaping (_ data: ChatGetChatE2eeParticipantKeys200Response?, _ error: Error?) -> Void)
```

List participant E2EE public keys

Returns registered identity public keys for users in this chat (for client-side key distribution and encryption).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.

// List participant E2EE public keys
ChatAPI.chatGetChatE2eeParticipantKeys(projectId: projectId, chatId: chatId) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 

### Return type

[**ChatGetChatE2eeParticipantKeys200Response**](ChatGetChatE2eeParticipantKeys200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatGetMessages**
```swift
    open class func chatGetMessages(projectId: String, chatId: String, page: Int? = nil, limit: Int? = nil, before: Date? = nil, after: Date? = nil, completion: @escaping (_ data: ChatGetMessages200Response?, _ error: Error?) -> Void)
```

Get chat messages

Returns paginated messages for a chat with optional before/after cursor for time-based pagination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of messages per page. (optional) (default to 50)
let before = Date() // Date | Return messages before this timestamp (cursor). (optional)
let after = Date() // Date | Return messages after this timestamp (cursor). (optional)

// Get chat messages
ChatAPI.chatGetMessages(projectId: projectId, chatId: chatId, page: page, limit: limit, before: before, after: after) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of messages per page. | [optional] [default to 50]
 **before** | **Date** | Return messages before this timestamp (cursor). | [optional] 
 **after** | **Date** | Return messages after this timestamp (cursor). | [optional] 

### Return type

[**ChatGetMessages200Response**](ChatGetMessages200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatList**
```swift
    open class func chatList(projectId: String, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ChatList200Response?, _ error: Error?) -> Void)
```

Get user chats

Returns paginated list of chats for the current user in the project, with last message and unread count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let page = 987 // Int | Page number (1-based). (optional) (default to 1)
let limit = 987 // Int | Number of chats per page. (optional) (default to 20)

// Get user chats
ChatAPI.chatList(projectId: projectId, page: page, limit: limit) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **page** | **Int** | Page number (1-based). | [optional] [default to 1]
 **limit** | **Int** | Number of chats per page. | [optional] [default to 20]

### Return type

[**ChatList200Response**](ChatList200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatMarkAsRead**
```swift
    open class func chatMarkAsRead(projectId: String, chatId: String, chatMarkAsReadRequest: ChatMarkAsReadRequest, completion: @escaping (_ data: ChatMarkAsRead200Response?, _ error: Error?) -> Void)
```

Mark messages as read

Mark one or more messages as read for the current user in the chat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let chatMarkAsReadRequest = chat_markAsRead_request(messageIds: ["messageIds_example"]) // ChatMarkAsReadRequest | Array of message IDs to mark as read.

// Mark messages as read
ChatAPI.chatMarkAsRead(projectId: projectId, chatId: chatId, chatMarkAsReadRequest: chatMarkAsReadRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **chatMarkAsReadRequest** | [**ChatMarkAsReadRequest**](ChatMarkAsReadRequest.md) | Array of message IDs to mark as read. | 

### Return type

[**ChatMarkAsRead200Response**](ChatMarkAsRead200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatPutChatE2eeKey**
```swift
    open class func chatPutChatE2eeKey(projectId: String, chatPutChatE2eeKeyRequest: ChatPutChatE2eeKeyRequest, completion: @escaping (_ data: ChatPutChatE2eeKey200Response?, _ error: Error?) -> Void)
```

Register chat E2EE identity public key

Stores your long-term public key for end-to-end encrypted chat (key agreement). Private keys never leave the client. Other participants use this to encrypt messages to you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatPutChatE2eeKeyRequest = chat_putChatE2eeKey_request(identityPublicKey: "identityPublicKey_example", keyVersion: 123) // ChatPutChatE2eeKeyRequest | Identity public key material for E2EE chat (base64). Private keys stay on the client.

// Register chat E2EE identity public key
ChatAPI.chatPutChatE2eeKey(projectId: projectId, chatPutChatE2eeKeyRequest: chatPutChatE2eeKeyRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatPutChatE2eeKeyRequest** | [**ChatPutChatE2eeKeyRequest**](ChatPutChatE2eeKeyRequest.md) | Identity public key material for E2EE chat (base64). Private keys stay on the client. | 

### Return type

[**ChatPutChatE2eeKey200Response**](ChatPutChatE2eeKey200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRemoveParticipant**
```swift
    open class func chatRemoveParticipant(projectId: String, chatId: String, chatRemoveParticipantRequest: ChatRemoveParticipantRequest, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove participant from chat

Remove a user from the chat by userId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let chatRemoveParticipantRequest = chat_removeParticipant_request(userId: "userId_example") // ChatRemoveParticipantRequest | User ID of the participant to remove.

// Remove participant from chat
ChatAPI.chatRemoveParticipant(projectId: projectId, chatId: chatId, chatRemoveParticipantRequest: chatRemoveParticipantRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **chatRemoveParticipantRequest** | [**ChatRemoveParticipantRequest**](ChatRemoveParticipantRequest.md) | User ID of the participant to remove. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatRemoveReaction**
```swift
    open class func chatRemoveReaction(projectId: String, chatId: String, messageId: String, chatAddReactionRequest: ChatAddReactionRequest, completion: @escaping (_ data: ChatRemoveReaction200Response?, _ error: Error?) -> Void)
```

Remove reaction from message

Remove the current user's emoji reaction from a message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let messageId = "messageId_example" // String | Message ID.
let chatAddReactionRequest = chat_addReaction_request(emoji: "emoji_example") // ChatAddReactionRequest | Emoji to remove (must match the reaction added by the user).

// Remove reaction from message
ChatAPI.chatRemoveReaction(projectId: projectId, chatId: chatId, messageId: messageId, chatAddReactionRequest: chatAddReactionRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **messageId** | **String** | Message ID. | 
 **chatAddReactionRequest** | [**ChatAddReactionRequest**](ChatAddReactionRequest.md) | Emoji to remove (must match the reaction added by the user). | 

### Return type

[**ChatRemoveReaction200Response**](ChatRemoveReaction200Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chatSendMessage**
```swift
    open class func chatSendMessage(projectId: String, chatId: String, chatSendMessageRequest: ChatSendMessageRequest, completion: @escaping (_ data: ChatSendMessage201Response?, _ error: Error?) -> Void)
```

Send message

Send a message (text, image, video, audio, file, location, contact) to a chat with optional replyTo and mentions. For end-to-end encryption, use type=text with e2ee.ciphertext (base64) instead of plaintext content; server stores ciphertext only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MudbaseSDK

let projectId = "projectId_example" // String | Project ID.
let chatId = "chatId_example" // String | Chat ID.
let chatSendMessageRequest = chat_sendMessage_request(type: "type_example", content: "content_example", e2ee: chat_sendMessage_request_e2ee(version: 123, scheme: "scheme_example", ciphertext: "ciphertext_example", nonce: "nonce_example", ephemeralPublicKey: "ephemeralPublicKey_example", senderKeyId: "senderKeyId_example"), replyTo: "replyTo_example", mentions: ["mentions_example"]) // ChatSendMessageRequest | Message type and content, or E2EE ciphertext for text messages. Plaintext requires content; E2EE requires type=text and e2ee.ciphertext (omit plaintext content).

// Send message
ChatAPI.chatSendMessage(projectId: projectId, chatId: chatId, chatSendMessageRequest: chatSendMessageRequest) { (response, error) in
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
 **projectId** | **String** | Project ID. | 
 **chatId** | **String** | Chat ID. | 
 **chatSendMessageRequest** | [**ChatSendMessageRequest**](ChatSendMessageRequest.md) | Message type and content, or E2EE ciphertext for text messages. Plaintext requires content; E2EE requires type&#x3D;text and e2ee.ciphertext (omit plaintext content). | 

### Return type

[**ChatSendMessage201Response**](ChatSendMessage201Response.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

