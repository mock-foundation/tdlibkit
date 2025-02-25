//
//  Update.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains notifications about data changes
public enum Update: Codable, Equatable, Hashable {

    /// The user authorization state has changed
    case authorizationState(UpdateAuthorizationState)

    /// A new message was received; can also be an outgoing message
    case newMessage(UpdateNewMessage)

    /// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
    case messageSendAcknowledged(UpdateMessageSendAcknowledged)

    /// A message has been successfully sent
    case messageSendSucceeded(UpdateMessageSendSucceeded)

    /// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
    case messageSendFailed(UpdateMessageSendFailed)

    /// The message content has changed
    case messageContent(UpdateMessageContent)

    /// A message was edited. Changes in the message content will come in a separate updateMessageContent
    case messageEdited(UpdateMessageEdited)

    /// The message pinned state was changed
    case messageIsPinned(UpdateMessageIsPinned)

    /// The information about interactions with a message has changed
    case messageInteractionInfo(UpdateMessageInteractionInfo)

    /// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
    case messageContentOpened(UpdateMessageContentOpened)

    /// A message with an unread mention was read
    case messageMentionRead(UpdateMessageMentionRead)

    /// The list of unread reactions added to a message was changed
    case messageUnreadReactions(UpdateMessageUnreadReactions)

    /// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
    case messageLiveLocationViewed(UpdateMessageLiveLocationViewed)

    /// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
    case newChat(UpdateNewChat)

    /// The title of a chat was changed
    case chatTitle(UpdateChatTitle)

    /// A chat photo was changed
    case chatPhoto(UpdateChatPhoto)

    /// Chat permissions was changed
    case chatPermissions(UpdateChatPermissions)

    /// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
    case chatLastMessage(UpdateChatLastMessage)

    /// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
    case chatPosition(UpdateChatPosition)

    /// Incoming messages were read or the number of unread messages has been changed
    case chatReadInbox(UpdateChatReadInbox)

    /// Outgoing messages were read
    case chatReadOutbox(UpdateChatReadOutbox)

    /// The chat action bar was changed
    case chatActionBar(UpdateChatActionBar)

    /// The chat available reactions were changed
    case chatAvailableReactions(UpdateChatAvailableReactions)

    /// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
    case chatDraftMessage(UpdateChatDraftMessage)

    /// The message sender that is selected to send messages in a chat has changed
    case chatMessageSender(UpdateChatMessageSender)

    /// The message Time To Live setting for a chat was changed
    case chatMessageTtl(UpdateChatMessageTtl)

    /// Notification settings for a chat were changed
    case chatNotificationSettings(UpdateChatNotificationSettings)

    /// The chat pending join requests were changed
    case chatPendingJoinRequests(UpdateChatPendingJoinRequests)

    /// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
    case chatReplyMarkup(UpdateChatReplyMarkup)

    /// The chat theme was changed
    case chatTheme(UpdateChatTheme)

    /// The chat unread_mention_count has changed
    case chatUnreadMentionCount(UpdateChatUnreadMentionCount)

    /// The chat unread_reaction_count has changed
    case chatUnreadReactionCount(UpdateChatUnreadReactionCount)

    /// A chat video chat state has changed
    case chatVideoChat(UpdateChatVideoChat)

    /// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
    case chatDefaultDisableNotification(UpdateChatDefaultDisableNotification)

    /// A chat content was allowed or restricted for saving
    case chatHasProtectedContent(UpdateChatHasProtectedContent)

    /// A chat's has_scheduled_messages field has changed
    case chatHasScheduledMessages(UpdateChatHasScheduledMessages)

    /// A chat was blocked or unblocked
    case chatIsBlocked(UpdateChatIsBlocked)

    /// A chat was marked as unread or was read
    case chatIsMarkedAsUnread(UpdateChatIsMarkedAsUnread)

    /// The list of chat filters or a chat filter has changed
    case chatFilters(UpdateChatFilters)

    /// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it will be sent just after the number of online users has changed
    case chatOnlineMemberCount(UpdateChatOnlineMemberCount)

    /// Notification settings for some type of chats were updated
    case scopeNotificationSettings(UpdateScopeNotificationSettings)

    /// A notification was changed
    case notification(UpdateNotification)

    /// A list of active notifications in a notification group has changed
    case notificationGroup(UpdateNotificationGroup)

    /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
    case activeNotifications(UpdateActiveNotifications)

    /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
    case havePendingNotifications(UpdateHavePendingNotifications)

    /// Some messages were deleted
    case deleteMessages(UpdateDeleteMessages)

    /// A message sender activity in the chat has changed
    case chatAction(UpdateChatAction)

    /// The user went online or offline
    case userStatus(UpdateUserStatus)

    /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
    case user(UpdateUser)

    /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
    case basicGroup(UpdateBasicGroup)

    /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
    case supergroup(UpdateSupergroup)

    /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
    case secretChat(UpdateSecretChat)

    /// Some data in userFullInfo has been changed
    case userFullInfo(UpdateUserFullInfo)

    /// Some data in basicGroupFullInfo has been changed
    case basicGroupFullInfo(UpdateBasicGroupFullInfo)

    /// Some data in supergroupFullInfo has been changed
    case supergroupFullInfo(UpdateSupergroupFullInfo)

    /// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
    case serviceNotification(UpdateServiceNotification)

    /// Information about a file was updated
    case file(UpdateFile)

    /// The file generation process needs to be started by the application
    case fileGenerationStart(UpdateFileGenerationStart)

    /// File generation is no longer needed
    case fileGenerationStop(UpdateFileGenerationStop)

    /// The state of the file download list has changed
    case fileDownloads(UpdateFileDownloads)

    /// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
    case fileAddedToDownloads(UpdateFileAddedToDownloads)

    /// A file download was changed. This update is sent only after file download list is loaded for the first time
    case fileDownload(UpdateFileDownload)

    /// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
    case fileRemovedFromDownloads(UpdateFileRemovedFromDownloads)

    /// New call was created or information about a call was updated
    case call(UpdateCall)

    /// Information about a group call was updated
    case groupCall(UpdateGroupCall)

    /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
    case groupCallParticipant(UpdateGroupCallParticipant)

    /// New call signaling data arrived
    case newCallSignalingData(UpdateNewCallSignalingData)

    /// Some privacy setting rules have been changed
    case userPrivacySettingRules(UpdateUserPrivacySettingRules)

    /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
    case unreadMessageCount(UpdateUnreadMessageCount)

    /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
    case unreadChatCount(UpdateUnreadChatCount)

    /// An option changed its value
    case option(UpdateOption)

    /// A sticker set has changed
    case stickerSet(UpdateStickerSet)

    /// The list of installed sticker sets was updated
    case installedStickerSets(UpdateInstalledStickerSets)

    /// The list of trending sticker sets was updated or some of them were viewed
    case trendingStickerSets(UpdateTrendingStickerSets)

    /// The list of recently used stickers was updated
    case recentStickers(UpdateRecentStickers)

    /// The list of favorite stickers was updated
    case favoriteStickers(UpdateFavoriteStickers)

    /// The list of saved animations was updated
    case savedAnimations(UpdateSavedAnimations)

    /// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
    case savedNotificationSounds(UpdateSavedNotificationSounds)

    /// The selected background has changed
    case selectedBackground(UpdateSelectedBackground)

    /// The list of available chat themes has changed
    case chatThemes(UpdateChatThemes)

    /// Some language pack strings have been updated
    case languagePackStrings(UpdateLanguagePackStrings)

    /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
    case connectionState(UpdateConnectionState)

    /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
    case termsOfService(UpdateTermsOfService)

    /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
    case usersNearby(UpdateUsersNearby)

    /// The list of bots added to attachment menu has changed
    case attachmentMenuBots(UpdateAttachmentMenuBots)

    /// A message was sent by an opened Web App, so the Web App needs to be closed
    case webAppMessageSent(UpdateWebAppMessageSent)

    /// The list of supported reactions has changed
    case reactions(UpdateReactions)

    /// The list of supported dice emojis has changed
    case diceEmojis(UpdateDiceEmojis)

    /// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
    case animatedEmojiMessageClicked(UpdateAnimatedEmojiMessageClicked)

    /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
    case animationSearchParameters(UpdateAnimationSearchParameters)

    /// The list of suggested to the user actions has changed
    case suggestedActions(UpdateSuggestedActions)

    /// A new incoming inline query; for bots only
    case newInlineQuery(UpdateNewInlineQuery)

    /// The user has chosen a result of an inline query; for bots only
    case newChosenInlineResult(UpdateNewChosenInlineResult)

    /// A new incoming callback query; for bots only
    case newCallbackQuery(UpdateNewCallbackQuery)

    /// A new incoming callback query from a message sent via a bot; for bots only
    case newInlineCallbackQuery(UpdateNewInlineCallbackQuery)

    /// A new incoming shipping query; for bots only. Only for invoices with flexible price
    case newShippingQuery(UpdateNewShippingQuery)

    /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
    case newPreCheckoutQuery(UpdateNewPreCheckoutQuery)

    /// A new incoming event; for bots only
    case newCustomEvent(UpdateNewCustomEvent)

    /// A new incoming query; for bots only
    case newCustomQuery(UpdateNewCustomQuery)

    /// A poll was updated; for bots only
    case poll(UpdatePoll)

    /// A user changed the answer to a poll; for bots only
    case pollAnswer(UpdatePollAnswer)

    /// User rights changed in a chat; for bots only
    case chatMember(UpdateChatMember)

    /// A user sent a join request to a chat; for bots only
    case newChatJoinRequest(UpdateNewChatJoinRequest)


    private enum Kind: String, Codable {
        case updateAuthorizationState
        case updateNewMessage
        case updateMessageSendAcknowledged
        case updateMessageSendSucceeded
        case updateMessageSendFailed
        case updateMessageContent
        case updateMessageEdited
        case updateMessageIsPinned
        case updateMessageInteractionInfo
        case updateMessageContentOpened
        case updateMessageMentionRead
        case updateMessageUnreadReactions
        case updateMessageLiveLocationViewed
        case updateNewChat
        case updateChatTitle
        case updateChatPhoto
        case updateChatPermissions
        case updateChatLastMessage
        case updateChatPosition
        case updateChatReadInbox
        case updateChatReadOutbox
        case updateChatActionBar
        case updateChatAvailableReactions
        case updateChatDraftMessage
        case updateChatMessageSender
        case updateChatMessageTtl
        case updateChatNotificationSettings
        case updateChatPendingJoinRequests
        case updateChatReplyMarkup
        case updateChatTheme
        case updateChatUnreadMentionCount
        case updateChatUnreadReactionCount
        case updateChatVideoChat
        case updateChatDefaultDisableNotification
        case updateChatHasProtectedContent
        case updateChatHasScheduledMessages
        case updateChatIsBlocked
        case updateChatIsMarkedAsUnread
        case updateChatFilters
        case updateChatOnlineMemberCount
        case updateScopeNotificationSettings
        case updateNotification
        case updateNotificationGroup
        case updateActiveNotifications
        case updateHavePendingNotifications
        case updateDeleteMessages
        case updateChatAction
        case updateUserStatus
        case updateUser
        case updateBasicGroup
        case updateSupergroup
        case updateSecretChat
        case updateUserFullInfo
        case updateBasicGroupFullInfo
        case updateSupergroupFullInfo
        case updateServiceNotification
        case updateFile
        case updateFileGenerationStart
        case updateFileGenerationStop
        case updateFileDownloads
        case updateFileAddedToDownloads
        case updateFileDownload
        case updateFileRemovedFromDownloads
        case updateCall
        case updateGroupCall
        case updateGroupCallParticipant
        case updateNewCallSignalingData
        case updateUserPrivacySettingRules
        case updateUnreadMessageCount
        case updateUnreadChatCount
        case updateOption
        case updateStickerSet
        case updateInstalledStickerSets
        case updateTrendingStickerSets
        case updateRecentStickers
        case updateFavoriteStickers
        case updateSavedAnimations
        case updateSavedNotificationSounds
        case updateSelectedBackground
        case updateChatThemes
        case updateLanguagePackStrings
        case updateConnectionState
        case updateTermsOfService
        case updateUsersNearby
        case updateAttachmentMenuBots
        case updateWebAppMessageSent
        case updateReactions
        case updateDiceEmojis
        case updateAnimatedEmojiMessageClicked
        case updateAnimationSearchParameters
        case updateSuggestedActions
        case updateNewInlineQuery
        case updateNewChosenInlineResult
        case updateNewCallbackQuery
        case updateNewInlineCallbackQuery
        case updateNewShippingQuery
        case updateNewPreCheckoutQuery
        case updateNewCustomEvent
        case updateNewCustomQuery
        case updatePoll
        case updatePollAnswer
        case updateChatMember
        case updateNewChatJoinRequest
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .updateAuthorizationState:
            let value = try UpdateAuthorizationState(from: decoder)
            self = .authorizationState(value)
        case .updateNewMessage:
            let value = try UpdateNewMessage(from: decoder)
            self = .newMessage(value)
        case .updateMessageSendAcknowledged:
            let value = try UpdateMessageSendAcknowledged(from: decoder)
            self = .messageSendAcknowledged(value)
        case .updateMessageSendSucceeded:
            let value = try UpdateMessageSendSucceeded(from: decoder)
            self = .messageSendSucceeded(value)
        case .updateMessageSendFailed:
            let value = try UpdateMessageSendFailed(from: decoder)
            self = .messageSendFailed(value)
        case .updateMessageContent:
            let value = try UpdateMessageContent(from: decoder)
            self = .messageContent(value)
        case .updateMessageEdited:
            let value = try UpdateMessageEdited(from: decoder)
            self = .messageEdited(value)
        case .updateMessageIsPinned:
            let value = try UpdateMessageIsPinned(from: decoder)
            self = .messageIsPinned(value)
        case .updateMessageInteractionInfo:
            let value = try UpdateMessageInteractionInfo(from: decoder)
            self = .messageInteractionInfo(value)
        case .updateMessageContentOpened:
            let value = try UpdateMessageContentOpened(from: decoder)
            self = .messageContentOpened(value)
        case .updateMessageMentionRead:
            let value = try UpdateMessageMentionRead(from: decoder)
            self = .messageMentionRead(value)
        case .updateMessageUnreadReactions:
            let value = try UpdateMessageUnreadReactions(from: decoder)
            self = .messageUnreadReactions(value)
        case .updateMessageLiveLocationViewed:
            let value = try UpdateMessageLiveLocationViewed(from: decoder)
            self = .messageLiveLocationViewed(value)
        case .updateNewChat:
            let value = try UpdateNewChat(from: decoder)
            self = .newChat(value)
        case .updateChatTitle:
            let value = try UpdateChatTitle(from: decoder)
            self = .chatTitle(value)
        case .updateChatPhoto:
            let value = try UpdateChatPhoto(from: decoder)
            self = .chatPhoto(value)
        case .updateChatPermissions:
            let value = try UpdateChatPermissions(from: decoder)
            self = .chatPermissions(value)
        case .updateChatLastMessage:
            let value = try UpdateChatLastMessage(from: decoder)
            self = .chatLastMessage(value)
        case .updateChatPosition:
            let value = try UpdateChatPosition(from: decoder)
            self = .chatPosition(value)
        case .updateChatReadInbox:
            let value = try UpdateChatReadInbox(from: decoder)
            self = .chatReadInbox(value)
        case .updateChatReadOutbox:
            let value = try UpdateChatReadOutbox(from: decoder)
            self = .chatReadOutbox(value)
        case .updateChatActionBar:
            let value = try UpdateChatActionBar(from: decoder)
            self = .chatActionBar(value)
        case .updateChatAvailableReactions:
            let value = try UpdateChatAvailableReactions(from: decoder)
            self = .chatAvailableReactions(value)
        case .updateChatDraftMessage:
            let value = try UpdateChatDraftMessage(from: decoder)
            self = .chatDraftMessage(value)
        case .updateChatMessageSender:
            let value = try UpdateChatMessageSender(from: decoder)
            self = .chatMessageSender(value)
        case .updateChatMessageTtl:
            let value = try UpdateChatMessageTtl(from: decoder)
            self = .chatMessageTtl(value)
        case .updateChatNotificationSettings:
            let value = try UpdateChatNotificationSettings(from: decoder)
            self = .chatNotificationSettings(value)
        case .updateChatPendingJoinRequests:
            let value = try UpdateChatPendingJoinRequests(from: decoder)
            self = .chatPendingJoinRequests(value)
        case .updateChatReplyMarkup:
            let value = try UpdateChatReplyMarkup(from: decoder)
            self = .chatReplyMarkup(value)
        case .updateChatTheme:
            let value = try UpdateChatTheme(from: decoder)
            self = .chatTheme(value)
        case .updateChatUnreadMentionCount:
            let value = try UpdateChatUnreadMentionCount(from: decoder)
            self = .chatUnreadMentionCount(value)
        case .updateChatUnreadReactionCount:
            let value = try UpdateChatUnreadReactionCount(from: decoder)
            self = .chatUnreadReactionCount(value)
        case .updateChatVideoChat:
            let value = try UpdateChatVideoChat(from: decoder)
            self = .chatVideoChat(value)
        case .updateChatDefaultDisableNotification:
            let value = try UpdateChatDefaultDisableNotification(from: decoder)
            self = .chatDefaultDisableNotification(value)
        case .updateChatHasProtectedContent:
            let value = try UpdateChatHasProtectedContent(from: decoder)
            self = .chatHasProtectedContent(value)
        case .updateChatHasScheduledMessages:
            let value = try UpdateChatHasScheduledMessages(from: decoder)
            self = .chatHasScheduledMessages(value)
        case .updateChatIsBlocked:
            let value = try UpdateChatIsBlocked(from: decoder)
            self = .chatIsBlocked(value)
        case .updateChatIsMarkedAsUnread:
            let value = try UpdateChatIsMarkedAsUnread(from: decoder)
            self = .chatIsMarkedAsUnread(value)
        case .updateChatFilters:
            let value = try UpdateChatFilters(from: decoder)
            self = .chatFilters(value)
        case .updateChatOnlineMemberCount:
            let value = try UpdateChatOnlineMemberCount(from: decoder)
            self = .chatOnlineMemberCount(value)
        case .updateScopeNotificationSettings:
            let value = try UpdateScopeNotificationSettings(from: decoder)
            self = .scopeNotificationSettings(value)
        case .updateNotification:
            let value = try UpdateNotification(from: decoder)
            self = .notification(value)
        case .updateNotificationGroup:
            let value = try UpdateNotificationGroup(from: decoder)
            self = .notificationGroup(value)
        case .updateActiveNotifications:
            let value = try UpdateActiveNotifications(from: decoder)
            self = .activeNotifications(value)
        case .updateHavePendingNotifications:
            let value = try UpdateHavePendingNotifications(from: decoder)
            self = .havePendingNotifications(value)
        case .updateDeleteMessages:
            let value = try UpdateDeleteMessages(from: decoder)
            self = .deleteMessages(value)
        case .updateChatAction:
            let value = try UpdateChatAction(from: decoder)
            self = .chatAction(value)
        case .updateUserStatus:
            let value = try UpdateUserStatus(from: decoder)
            self = .userStatus(value)
        case .updateUser:
            let value = try UpdateUser(from: decoder)
            self = .user(value)
        case .updateBasicGroup:
            let value = try UpdateBasicGroup(from: decoder)
            self = .basicGroup(value)
        case .updateSupergroup:
            let value = try UpdateSupergroup(from: decoder)
            self = .supergroup(value)
        case .updateSecretChat:
            let value = try UpdateSecretChat(from: decoder)
            self = .secretChat(value)
        case .updateUserFullInfo:
            let value = try UpdateUserFullInfo(from: decoder)
            self = .userFullInfo(value)
        case .updateBasicGroupFullInfo:
            let value = try UpdateBasicGroupFullInfo(from: decoder)
            self = .basicGroupFullInfo(value)
        case .updateSupergroupFullInfo:
            let value = try UpdateSupergroupFullInfo(from: decoder)
            self = .supergroupFullInfo(value)
        case .updateServiceNotification:
            let value = try UpdateServiceNotification(from: decoder)
            self = .serviceNotification(value)
        case .updateFile:
            let value = try UpdateFile(from: decoder)
            self = .file(value)
        case .updateFileGenerationStart:
            let value = try UpdateFileGenerationStart(from: decoder)
            self = .fileGenerationStart(value)
        case .updateFileGenerationStop:
            let value = try UpdateFileGenerationStop(from: decoder)
            self = .fileGenerationStop(value)
        case .updateFileDownloads:
            let value = try UpdateFileDownloads(from: decoder)
            self = .fileDownloads(value)
        case .updateFileAddedToDownloads:
            let value = try UpdateFileAddedToDownloads(from: decoder)
            self = .fileAddedToDownloads(value)
        case .updateFileDownload:
            let value = try UpdateFileDownload(from: decoder)
            self = .fileDownload(value)
        case .updateFileRemovedFromDownloads:
            let value = try UpdateFileRemovedFromDownloads(from: decoder)
            self = .fileRemovedFromDownloads(value)
        case .updateCall:
            let value = try UpdateCall(from: decoder)
            self = .call(value)
        case .updateGroupCall:
            let value = try UpdateGroupCall(from: decoder)
            self = .groupCall(value)
        case .updateGroupCallParticipant:
            let value = try UpdateGroupCallParticipant(from: decoder)
            self = .groupCallParticipant(value)
        case .updateNewCallSignalingData:
            let value = try UpdateNewCallSignalingData(from: decoder)
            self = .newCallSignalingData(value)
        case .updateUserPrivacySettingRules:
            let value = try UpdateUserPrivacySettingRules(from: decoder)
            self = .userPrivacySettingRules(value)
        case .updateUnreadMessageCount:
            let value = try UpdateUnreadMessageCount(from: decoder)
            self = .unreadMessageCount(value)
        case .updateUnreadChatCount:
            let value = try UpdateUnreadChatCount(from: decoder)
            self = .unreadChatCount(value)
        case .updateOption:
            let value = try UpdateOption(from: decoder)
            self = .option(value)
        case .updateStickerSet:
            let value = try UpdateStickerSet(from: decoder)
            self = .stickerSet(value)
        case .updateInstalledStickerSets:
            let value = try UpdateInstalledStickerSets(from: decoder)
            self = .installedStickerSets(value)
        case .updateTrendingStickerSets:
            let value = try UpdateTrendingStickerSets(from: decoder)
            self = .trendingStickerSets(value)
        case .updateRecentStickers:
            let value = try UpdateRecentStickers(from: decoder)
            self = .recentStickers(value)
        case .updateFavoriteStickers:
            let value = try UpdateFavoriteStickers(from: decoder)
            self = .favoriteStickers(value)
        case .updateSavedAnimations:
            let value = try UpdateSavedAnimations(from: decoder)
            self = .savedAnimations(value)
        case .updateSavedNotificationSounds:
            let value = try UpdateSavedNotificationSounds(from: decoder)
            self = .savedNotificationSounds(value)
        case .updateSelectedBackground:
            let value = try UpdateSelectedBackground(from: decoder)
            self = .selectedBackground(value)
        case .updateChatThemes:
            let value = try UpdateChatThemes(from: decoder)
            self = .chatThemes(value)
        case .updateLanguagePackStrings:
            let value = try UpdateLanguagePackStrings(from: decoder)
            self = .languagePackStrings(value)
        case .updateConnectionState:
            let value = try UpdateConnectionState(from: decoder)
            self = .connectionState(value)
        case .updateTermsOfService:
            let value = try UpdateTermsOfService(from: decoder)
            self = .termsOfService(value)
        case .updateUsersNearby:
            let value = try UpdateUsersNearby(from: decoder)
            self = .usersNearby(value)
        case .updateAttachmentMenuBots:
            let value = try UpdateAttachmentMenuBots(from: decoder)
            self = .attachmentMenuBots(value)
        case .updateWebAppMessageSent:
            let value = try UpdateWebAppMessageSent(from: decoder)
            self = .webAppMessageSent(value)
        case .updateReactions:
            let value = try UpdateReactions(from: decoder)
            self = .reactions(value)
        case .updateDiceEmojis:
            let value = try UpdateDiceEmojis(from: decoder)
            self = .diceEmojis(value)
        case .updateAnimatedEmojiMessageClicked:
            let value = try UpdateAnimatedEmojiMessageClicked(from: decoder)
            self = .animatedEmojiMessageClicked(value)
        case .updateAnimationSearchParameters:
            let value = try UpdateAnimationSearchParameters(from: decoder)
            self = .animationSearchParameters(value)
        case .updateSuggestedActions:
            let value = try UpdateSuggestedActions(from: decoder)
            self = .suggestedActions(value)
        case .updateNewInlineQuery:
            let value = try UpdateNewInlineQuery(from: decoder)
            self = .newInlineQuery(value)
        case .updateNewChosenInlineResult:
            let value = try UpdateNewChosenInlineResult(from: decoder)
            self = .newChosenInlineResult(value)
        case .updateNewCallbackQuery:
            let value = try UpdateNewCallbackQuery(from: decoder)
            self = .newCallbackQuery(value)
        case .updateNewInlineCallbackQuery:
            let value = try UpdateNewInlineCallbackQuery(from: decoder)
            self = .newInlineCallbackQuery(value)
        case .updateNewShippingQuery:
            let value = try UpdateNewShippingQuery(from: decoder)
            self = .newShippingQuery(value)
        case .updateNewPreCheckoutQuery:
            let value = try UpdateNewPreCheckoutQuery(from: decoder)
            self = .newPreCheckoutQuery(value)
        case .updateNewCustomEvent:
            let value = try UpdateNewCustomEvent(from: decoder)
            self = .newCustomEvent(value)
        case .updateNewCustomQuery:
            let value = try UpdateNewCustomQuery(from: decoder)
            self = .newCustomQuery(value)
        case .updatePoll:
            let value = try UpdatePoll(from: decoder)
            self = .poll(value)
        case .updatePollAnswer:
            let value = try UpdatePollAnswer(from: decoder)
            self = .pollAnswer(value)
        case .updateChatMember:
            let value = try UpdateChatMember(from: decoder)
            self = .chatMember(value)
        case .updateNewChatJoinRequest:
            let value = try UpdateNewChatJoinRequest(from: decoder)
            self = .newChatJoinRequest(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .authorizationState(let value):
            try container.encode(Kind.updateAuthorizationState, forKey: .type)
            try value.encode(to: encoder)
        case .newMessage(let value):
            try container.encode(Kind.updateNewMessage, forKey: .type)
            try value.encode(to: encoder)
        case .messageSendAcknowledged(let value):
            try container.encode(Kind.updateMessageSendAcknowledged, forKey: .type)
            try value.encode(to: encoder)
        case .messageSendSucceeded(let value):
            try container.encode(Kind.updateMessageSendSucceeded, forKey: .type)
            try value.encode(to: encoder)
        case .messageSendFailed(let value):
            try container.encode(Kind.updateMessageSendFailed, forKey: .type)
            try value.encode(to: encoder)
        case .messageContent(let value):
            try container.encode(Kind.updateMessageContent, forKey: .type)
            try value.encode(to: encoder)
        case .messageEdited(let value):
            try container.encode(Kind.updateMessageEdited, forKey: .type)
            try value.encode(to: encoder)
        case .messageIsPinned(let value):
            try container.encode(Kind.updateMessageIsPinned, forKey: .type)
            try value.encode(to: encoder)
        case .messageInteractionInfo(let value):
            try container.encode(Kind.updateMessageInteractionInfo, forKey: .type)
            try value.encode(to: encoder)
        case .messageContentOpened(let value):
            try container.encode(Kind.updateMessageContentOpened, forKey: .type)
            try value.encode(to: encoder)
        case .messageMentionRead(let value):
            try container.encode(Kind.updateMessageMentionRead, forKey: .type)
            try value.encode(to: encoder)
        case .messageUnreadReactions(let value):
            try container.encode(Kind.updateMessageUnreadReactions, forKey: .type)
            try value.encode(to: encoder)
        case .messageLiveLocationViewed(let value):
            try container.encode(Kind.updateMessageLiveLocationViewed, forKey: .type)
            try value.encode(to: encoder)
        case .newChat(let value):
            try container.encode(Kind.updateNewChat, forKey: .type)
            try value.encode(to: encoder)
        case .chatTitle(let value):
            try container.encode(Kind.updateChatTitle, forKey: .type)
            try value.encode(to: encoder)
        case .chatPhoto(let value):
            try container.encode(Kind.updateChatPhoto, forKey: .type)
            try value.encode(to: encoder)
        case .chatPermissions(let value):
            try container.encode(Kind.updateChatPermissions, forKey: .type)
            try value.encode(to: encoder)
        case .chatLastMessage(let value):
            try container.encode(Kind.updateChatLastMessage, forKey: .type)
            try value.encode(to: encoder)
        case .chatPosition(let value):
            try container.encode(Kind.updateChatPosition, forKey: .type)
            try value.encode(to: encoder)
        case .chatReadInbox(let value):
            try container.encode(Kind.updateChatReadInbox, forKey: .type)
            try value.encode(to: encoder)
        case .chatReadOutbox(let value):
            try container.encode(Kind.updateChatReadOutbox, forKey: .type)
            try value.encode(to: encoder)
        case .chatActionBar(let value):
            try container.encode(Kind.updateChatActionBar, forKey: .type)
            try value.encode(to: encoder)
        case .chatAvailableReactions(let value):
            try container.encode(Kind.updateChatAvailableReactions, forKey: .type)
            try value.encode(to: encoder)
        case .chatDraftMessage(let value):
            try container.encode(Kind.updateChatDraftMessage, forKey: .type)
            try value.encode(to: encoder)
        case .chatMessageSender(let value):
            try container.encode(Kind.updateChatMessageSender, forKey: .type)
            try value.encode(to: encoder)
        case .chatMessageTtl(let value):
            try container.encode(Kind.updateChatMessageTtl, forKey: .type)
            try value.encode(to: encoder)
        case .chatNotificationSettings(let value):
            try container.encode(Kind.updateChatNotificationSettings, forKey: .type)
            try value.encode(to: encoder)
        case .chatPendingJoinRequests(let value):
            try container.encode(Kind.updateChatPendingJoinRequests, forKey: .type)
            try value.encode(to: encoder)
        case .chatReplyMarkup(let value):
            try container.encode(Kind.updateChatReplyMarkup, forKey: .type)
            try value.encode(to: encoder)
        case .chatTheme(let value):
            try container.encode(Kind.updateChatTheme, forKey: .type)
            try value.encode(to: encoder)
        case .chatUnreadMentionCount(let value):
            try container.encode(Kind.updateChatUnreadMentionCount, forKey: .type)
            try value.encode(to: encoder)
        case .chatUnreadReactionCount(let value):
            try container.encode(Kind.updateChatUnreadReactionCount, forKey: .type)
            try value.encode(to: encoder)
        case .chatVideoChat(let value):
            try container.encode(Kind.updateChatVideoChat, forKey: .type)
            try value.encode(to: encoder)
        case .chatDefaultDisableNotification(let value):
            try container.encode(Kind.updateChatDefaultDisableNotification, forKey: .type)
            try value.encode(to: encoder)
        case .chatHasProtectedContent(let value):
            try container.encode(Kind.updateChatHasProtectedContent, forKey: .type)
            try value.encode(to: encoder)
        case .chatHasScheduledMessages(let value):
            try container.encode(Kind.updateChatHasScheduledMessages, forKey: .type)
            try value.encode(to: encoder)
        case .chatIsBlocked(let value):
            try container.encode(Kind.updateChatIsBlocked, forKey: .type)
            try value.encode(to: encoder)
        case .chatIsMarkedAsUnread(let value):
            try container.encode(Kind.updateChatIsMarkedAsUnread, forKey: .type)
            try value.encode(to: encoder)
        case .chatFilters(let value):
            try container.encode(Kind.updateChatFilters, forKey: .type)
            try value.encode(to: encoder)
        case .chatOnlineMemberCount(let value):
            try container.encode(Kind.updateChatOnlineMemberCount, forKey: .type)
            try value.encode(to: encoder)
        case .scopeNotificationSettings(let value):
            try container.encode(Kind.updateScopeNotificationSettings, forKey: .type)
            try value.encode(to: encoder)
        case .notification(let value):
            try container.encode(Kind.updateNotification, forKey: .type)
            try value.encode(to: encoder)
        case .notificationGroup(let value):
            try container.encode(Kind.updateNotificationGroup, forKey: .type)
            try value.encode(to: encoder)
        case .activeNotifications(let value):
            try container.encode(Kind.updateActiveNotifications, forKey: .type)
            try value.encode(to: encoder)
        case .havePendingNotifications(let value):
            try container.encode(Kind.updateHavePendingNotifications, forKey: .type)
            try value.encode(to: encoder)
        case .deleteMessages(let value):
            try container.encode(Kind.updateDeleteMessages, forKey: .type)
            try value.encode(to: encoder)
        case .chatAction(let value):
            try container.encode(Kind.updateChatAction, forKey: .type)
            try value.encode(to: encoder)
        case .userStatus(let value):
            try container.encode(Kind.updateUserStatus, forKey: .type)
            try value.encode(to: encoder)
        case .user(let value):
            try container.encode(Kind.updateUser, forKey: .type)
            try value.encode(to: encoder)
        case .basicGroup(let value):
            try container.encode(Kind.updateBasicGroup, forKey: .type)
            try value.encode(to: encoder)
        case .supergroup(let value):
            try container.encode(Kind.updateSupergroup, forKey: .type)
            try value.encode(to: encoder)
        case .secretChat(let value):
            try container.encode(Kind.updateSecretChat, forKey: .type)
            try value.encode(to: encoder)
        case .userFullInfo(let value):
            try container.encode(Kind.updateUserFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .basicGroupFullInfo(let value):
            try container.encode(Kind.updateBasicGroupFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .supergroupFullInfo(let value):
            try container.encode(Kind.updateSupergroupFullInfo, forKey: .type)
            try value.encode(to: encoder)
        case .serviceNotification(let value):
            try container.encode(Kind.updateServiceNotification, forKey: .type)
            try value.encode(to: encoder)
        case .file(let value):
            try container.encode(Kind.updateFile, forKey: .type)
            try value.encode(to: encoder)
        case .fileGenerationStart(let value):
            try container.encode(Kind.updateFileGenerationStart, forKey: .type)
            try value.encode(to: encoder)
        case .fileGenerationStop(let value):
            try container.encode(Kind.updateFileGenerationStop, forKey: .type)
            try value.encode(to: encoder)
        case .fileDownloads(let value):
            try container.encode(Kind.updateFileDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .fileAddedToDownloads(let value):
            try container.encode(Kind.updateFileAddedToDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .fileDownload(let value):
            try container.encode(Kind.updateFileDownload, forKey: .type)
            try value.encode(to: encoder)
        case .fileRemovedFromDownloads(let value):
            try container.encode(Kind.updateFileRemovedFromDownloads, forKey: .type)
            try value.encode(to: encoder)
        case .call(let value):
            try container.encode(Kind.updateCall, forKey: .type)
            try value.encode(to: encoder)
        case .groupCall(let value):
            try container.encode(Kind.updateGroupCall, forKey: .type)
            try value.encode(to: encoder)
        case .groupCallParticipant(let value):
            try container.encode(Kind.updateGroupCallParticipant, forKey: .type)
            try value.encode(to: encoder)
        case .newCallSignalingData(let value):
            try container.encode(Kind.updateNewCallSignalingData, forKey: .type)
            try value.encode(to: encoder)
        case .userPrivacySettingRules(let value):
            try container.encode(Kind.updateUserPrivacySettingRules, forKey: .type)
            try value.encode(to: encoder)
        case .unreadMessageCount(let value):
            try container.encode(Kind.updateUnreadMessageCount, forKey: .type)
            try value.encode(to: encoder)
        case .unreadChatCount(let value):
            try container.encode(Kind.updateUnreadChatCount, forKey: .type)
            try value.encode(to: encoder)
        case .option(let value):
            try container.encode(Kind.updateOption, forKey: .type)
            try value.encode(to: encoder)
        case .stickerSet(let value):
            try container.encode(Kind.updateStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .installedStickerSets(let value):
            try container.encode(Kind.updateInstalledStickerSets, forKey: .type)
            try value.encode(to: encoder)
        case .trendingStickerSets(let value):
            try container.encode(Kind.updateTrendingStickerSets, forKey: .type)
            try value.encode(to: encoder)
        case .recentStickers(let value):
            try container.encode(Kind.updateRecentStickers, forKey: .type)
            try value.encode(to: encoder)
        case .favoriteStickers(let value):
            try container.encode(Kind.updateFavoriteStickers, forKey: .type)
            try value.encode(to: encoder)
        case .savedAnimations(let value):
            try container.encode(Kind.updateSavedAnimations, forKey: .type)
            try value.encode(to: encoder)
        case .savedNotificationSounds(let value):
            try container.encode(Kind.updateSavedNotificationSounds, forKey: .type)
            try value.encode(to: encoder)
        case .selectedBackground(let value):
            try container.encode(Kind.updateSelectedBackground, forKey: .type)
            try value.encode(to: encoder)
        case .chatThemes(let value):
            try container.encode(Kind.updateChatThemes, forKey: .type)
            try value.encode(to: encoder)
        case .languagePackStrings(let value):
            try container.encode(Kind.updateLanguagePackStrings, forKey: .type)
            try value.encode(to: encoder)
        case .connectionState(let value):
            try container.encode(Kind.updateConnectionState, forKey: .type)
            try value.encode(to: encoder)
        case .termsOfService(let value):
            try container.encode(Kind.updateTermsOfService, forKey: .type)
            try value.encode(to: encoder)
        case .usersNearby(let value):
            try container.encode(Kind.updateUsersNearby, forKey: .type)
            try value.encode(to: encoder)
        case .attachmentMenuBots(let value):
            try container.encode(Kind.updateAttachmentMenuBots, forKey: .type)
            try value.encode(to: encoder)
        case .webAppMessageSent(let value):
            try container.encode(Kind.updateWebAppMessageSent, forKey: .type)
            try value.encode(to: encoder)
        case .reactions(let value):
            try container.encode(Kind.updateReactions, forKey: .type)
            try value.encode(to: encoder)
        case .diceEmojis(let value):
            try container.encode(Kind.updateDiceEmojis, forKey: .type)
            try value.encode(to: encoder)
        case .animatedEmojiMessageClicked(let value):
            try container.encode(Kind.updateAnimatedEmojiMessageClicked, forKey: .type)
            try value.encode(to: encoder)
        case .animationSearchParameters(let value):
            try container.encode(Kind.updateAnimationSearchParameters, forKey: .type)
            try value.encode(to: encoder)
        case .suggestedActions(let value):
            try container.encode(Kind.updateSuggestedActions, forKey: .type)
            try value.encode(to: encoder)
        case .newInlineQuery(let value):
            try container.encode(Kind.updateNewInlineQuery, forKey: .type)
            try value.encode(to: encoder)
        case .newChosenInlineResult(let value):
            try container.encode(Kind.updateNewChosenInlineResult, forKey: .type)
            try value.encode(to: encoder)
        case .newCallbackQuery(let value):
            try container.encode(Kind.updateNewCallbackQuery, forKey: .type)
            try value.encode(to: encoder)
        case .newInlineCallbackQuery(let value):
            try container.encode(Kind.updateNewInlineCallbackQuery, forKey: .type)
            try value.encode(to: encoder)
        case .newShippingQuery(let value):
            try container.encode(Kind.updateNewShippingQuery, forKey: .type)
            try value.encode(to: encoder)
        case .newPreCheckoutQuery(let value):
            try container.encode(Kind.updateNewPreCheckoutQuery, forKey: .type)
            try value.encode(to: encoder)
        case .newCustomEvent(let value):
            try container.encode(Kind.updateNewCustomEvent, forKey: .type)
            try value.encode(to: encoder)
        case .newCustomQuery(let value):
            try container.encode(Kind.updateNewCustomQuery, forKey: .type)
            try value.encode(to: encoder)
        case .poll(let value):
            try container.encode(Kind.updatePoll, forKey: .type)
            try value.encode(to: encoder)
        case .pollAnswer(let value):
            try container.encode(Kind.updatePollAnswer, forKey: .type)
            try value.encode(to: encoder)
        case .chatMember(let value):
            try container.encode(Kind.updateChatMember, forKey: .type)
            try value.encode(to: encoder)
        case .newChatJoinRequest(let value):
            try container.encode(Kind.updateNewChatJoinRequest, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The user authorization state has changed
public struct UpdateAuthorizationState: Codable, Equatable, Hashable {

    /// New authorization state
    public let authorizationState: AuthorizationState


    public init(authorizationState: AuthorizationState) {
        self.authorizationState = authorizationState
    }
}

/// A new message was received; can also be an outgoing message
public struct UpdateNewMessage: Codable, Equatable, Hashable {

    /// The new message
    public let message: Message


    public init(message: Message) {
        self.message = message
    }
}

/// A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message
public struct UpdateMessageSendAcknowledged: Codable, Equatable, Hashable {

    /// The chat identifier of the sent message
    public let chatId: Int64

    /// A temporary message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A message has been successfully sent
public struct UpdateMessageSendSucceeded: Codable, Equatable, Hashable {

    /// The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change
    public let message: Message

    /// The previous temporary message identifier
    public let oldMessageId: Int64


    public init(
        message: Message,
        oldMessageId: Int64
    ) {
        self.message = message
        self.oldMessageId = oldMessageId
    }
}

/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update
public struct UpdateMessageSendFailed: Codable, Equatable, Hashable {

    /// An error code
    public let errorCode: Int

    /// Error message
    public let errorMessage: String

    /// The failed to send message
    public let message: Message

    /// The previous temporary message identifier
    public let oldMessageId: Int64


    public init(
        errorCode: Int,
        errorMessage: String,
        message: Message,
        oldMessageId: Int64
    ) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.message = message
        self.oldMessageId = oldMessageId
    }
}

/// The message content has changed
public struct UpdateMessageContent: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// New message content
    public let newContent: MessageContent


    public init(
        chatId: Int64,
        messageId: Int64,
        newContent: MessageContent
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.newContent = newContent
    }
}

/// A message was edited. Changes in the message content will come in a separate updateMessageContent
public struct UpdateMessageEdited: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the message was edited
    public let editDate: Int

    /// Message identifier
    public let messageId: Int64

    /// New message reply markup; may be null
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64,
        editDate: Int,
        messageId: Int64,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.editDate = editDate
        self.messageId = messageId
        self.replyMarkup = replyMarkup
    }
}

/// The message pinned state was changed
public struct UpdateMessageIsPinned: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// True, if the message is pinned
    public let isPinned: Bool

    /// The message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        isPinned: Bool,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.isPinned = isPinned
        self.messageId = messageId
    }
}

/// The information about interactions with a message has changed
public struct UpdateMessageInteractionInfo: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New information about interactions with the message; may be null
    public let interactionInfo: MessageInteractionInfo?

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        interactionInfo: MessageInteractionInfo?,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.interactionInfo = interactionInfo
        self.messageId = messageId
    }
}

/// The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
public struct UpdateMessageContentOpened: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A message with an unread mention was read
public struct UpdateMessageMentionRead: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The new number of unread mention messages left in the chat
    public let unreadMentionCount: Int


    public init(
        chatId: Int64,
        messageId: Int64,
        unreadMentionCount: Int
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.unreadMentionCount = unreadMentionCount
    }
}

/// The list of unread reactions added to a message was changed
public struct UpdateMessageUnreadReactions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The new number of messages with unread reactions left in the chat
    public let unreadReactionCount: Int

    /// The new list of unread reactions
    public let unreadReactions: [UnreadReaction]


    public init(
        chatId: Int64,
        messageId: Int64,
        unreadReactionCount: Int,
        unreadReactions: [UnreadReaction]
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.unreadReactionCount = unreadReactionCount
        self.unreadReactions = unreadReactions
    }
}

/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
public struct UpdateMessageLiveLocationViewed: Codable, Equatable, Hashable {

    /// Identifier of the chat with the live location message
    public let chatId: Int64

    /// Identifier of the message with live location
    public let messageId: Int64


    public init(
        chatId: Int64,
        messageId: Int64
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

/// A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates
public struct UpdateNewChat: Codable, Equatable, Hashable {

    /// The chat
    public let chat: Chat


    public init(chat: Chat) {
        self.chat = chat
    }
}

/// The title of a chat was changed
public struct UpdateChatTitle: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat title
    public let title: String


    public init(
        chatId: Int64,
        title: String
    ) {
        self.chatId = chatId
        self.title = title
    }
}

/// A chat photo was changed
public struct UpdateChatPhoto: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat photo; may be null
    public let photo: ChatPhotoInfo?


    public init(
        chatId: Int64,
        photo: ChatPhotoInfo?
    ) {
        self.chatId = chatId
        self.photo = photo
    }
}

/// Chat permissions was changed
public struct UpdateChatPermissions: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new chat permissions
    public let permissions: ChatPermissions


    public init(
        chatId: Int64,
        permissions: ChatPermissions
    ) {
        self.chatId = chatId
        self.permissions = permissions
    }
}

/// The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case
public struct UpdateChatLastMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new last message in the chat; may be null
    public let lastMessage: Message?

    /// The new chat positions in the chat lists
    public let positions: [ChatPosition]


    public init(
        chatId: Int64,
        lastMessage: Message?,
        positions: [ChatPosition]
    ) {
        self.chatId = chatId
        self.lastMessage = lastMessage
        self.positions = positions
    }
}

/// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
public struct UpdateChatPosition: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New chat position. If new order is 0, then the chat needs to be removed from the list
    public let position: ChatPosition


    public init(
        chatId: Int64,
        position: ChatPosition
    ) {
        self.chatId = chatId
        self.position = position
    }
}

/// Incoming messages were read or the number of unread messages has been changed
public struct UpdateChatReadInbox: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the last read incoming message
    public let lastReadInboxMessageId: Int64

    /// The number of unread messages left in the chat
    public let unreadCount: Int


    public init(
        chatId: Int64,
        lastReadInboxMessageId: Int64,
        unreadCount: Int
    ) {
        self.chatId = chatId
        self.lastReadInboxMessageId = lastReadInboxMessageId
        self.unreadCount = unreadCount
    }
}

/// Outgoing messages were read
public struct UpdateChatReadOutbox: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of last read outgoing message
    public let lastReadOutboxMessageId: Int64


    public init(
        chatId: Int64,
        lastReadOutboxMessageId: Int64
    ) {
        self.chatId = chatId
        self.lastReadOutboxMessageId = lastReadOutboxMessageId
    }
}

/// The chat action bar was changed
public struct UpdateChatActionBar: Codable, Equatable, Hashable {

    /// The new value of the action bar; may be null
    public let actionBar: ChatActionBar?

    /// Chat identifier
    public let chatId: Int64


    public init(
        actionBar: ChatActionBar?,
        chatId: Int64
    ) {
        self.actionBar = actionBar
        self.chatId = chatId
    }
}

/// The chat available reactions were changed
public struct UpdateChatAvailableReactions: Codable, Equatable, Hashable {

    /// The new list of reactions, available in the chat
    public let availableReactions: [String]

    /// Chat identifier
    public let chatId: Int64


    public init(
        availableReactions: [String],
        chatId: Int64
    ) {
        self.availableReactions = availableReactions
        self.chatId = chatId
    }
}

/// A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied
public struct UpdateChatDraftMessage: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new draft message; may be null
    public let draftMessage: DraftMessage?

    /// The new chat positions in the chat lists
    public let positions: [ChatPosition]


    public init(
        chatId: Int64,
        draftMessage: DraftMessage?,
        positions: [ChatPosition]
    ) {
        self.chatId = chatId
        self.draftMessage = draftMessage
        self.positions = positions
    }
}

/// The message sender that is selected to send messages in a chat has changed
public struct UpdateChatMessageSender: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of message_sender_id; may be null if the user can't change message sender
    public let messageSenderId: MessageSender?


    public init(
        chatId: Int64,
        messageSenderId: MessageSender?
    ) {
        self.chatId = chatId
        self.messageSenderId = messageSenderId
    }
}

/// The message Time To Live setting for a chat was changed
public struct UpdateChatMessageTtl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of message_ttl
    public let messageTtl: Int


    public init(
        chatId: Int64,
        messageTtl: Int
    ) {
        self.chatId = chatId
        self.messageTtl = messageTtl
    }
}

/// Notification settings for a chat were changed
public struct UpdateChatNotificationSettings: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new notification settings
    public let notificationSettings: ChatNotificationSettings


    public init(
        chatId: Int64,
        notificationSettings: ChatNotificationSettings
    ) {
        self.chatId = chatId
        self.notificationSettings = notificationSettings
    }
}

/// The chat pending join requests were changed
public struct UpdateChatPendingJoinRequests: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new data about pending join requests; may be null
    public let pendingJoinRequests: ChatJoinRequestsInfo?


    public init(
        chatId: Int64,
        pendingJoinRequests: ChatJoinRequestsInfo?
    ) {
        self.chatId = chatId
        self.pendingJoinRequests = pendingJoinRequests
    }
}

/// The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
public struct UpdateChatReplyMarkup: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat
    public let replyMarkupMessageId: Int64


    public init(
        chatId: Int64,
        replyMarkupMessageId: Int64
    ) {
        self.chatId = chatId
        self.replyMarkupMessageId = replyMarkupMessageId
    }
}

/// The chat theme was changed
public struct UpdateChatTheme: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new name of the chat theme; may be empty if theme was reset to default
    public let themeName: String


    public init(
        chatId: Int64,
        themeName: String
    ) {
        self.chatId = chatId
        self.themeName = themeName
    }
}

/// The chat unread_mention_count has changed
public struct UpdateChatUnreadMentionCount: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of unread mention messages left in the chat
    public let unreadMentionCount: Int


    public init(
        chatId: Int64,
        unreadMentionCount: Int
    ) {
        self.chatId = chatId
        self.unreadMentionCount = unreadMentionCount
    }
}

/// The chat unread_reaction_count has changed
public struct UpdateChatUnreadReactionCount: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The number of messages with unread reactions left in the chat
    public let unreadReactionCount: Int


    public init(
        chatId: Int64,
        unreadReactionCount: Int
    ) {
        self.chatId = chatId
        self.unreadReactionCount = unreadReactionCount
    }
}

/// A chat video chat state has changed
public struct UpdateChatVideoChat: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of video_chat
    public let videoChat: VideoChat


    public init(
        chatId: Int64,
        videoChat: VideoChat
    ) {
        self.chatId = chatId
        self.videoChat = videoChat
    }
}

/// The value of the default disable_notification parameter, used when a message is sent to the chat, was changed
public struct UpdateChatDefaultDisableNotification: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The new default_disable_notification value
    public let defaultDisableNotification: Bool


    public init(
        chatId: Int64,
        defaultDisableNotification: Bool
    ) {
        self.chatId = chatId
        self.defaultDisableNotification = defaultDisableNotification
    }
}

/// A chat content was allowed or restricted for saving
public struct UpdateChatHasProtectedContent: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of has_protected_content
    public let hasProtectedContent: Bool


    public init(
        chatId: Int64,
        hasProtectedContent: Bool
    ) {
        self.chatId = chatId
        self.hasProtectedContent = hasProtectedContent
    }
}

/// A chat's has_scheduled_messages field has changed
public struct UpdateChatHasScheduledMessages: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of has_scheduled_messages
    public let hasScheduledMessages: Bool


    public init(
        chatId: Int64,
        hasScheduledMessages: Bool
    ) {
        self.chatId = chatId
        self.hasScheduledMessages = hasScheduledMessages
    }
}

/// A chat was blocked or unblocked
public struct UpdateChatIsBlocked: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_blocked
    public let isBlocked: Bool


    public init(
        chatId: Int64,
        isBlocked: Bool
    ) {
        self.chatId = chatId
        self.isBlocked = isBlocked
    }
}

/// A chat was marked as unread or was read
public struct UpdateChatIsMarkedAsUnread: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of is_marked_as_unread
    public let isMarkedAsUnread: Bool


    public init(
        chatId: Int64,
        isMarkedAsUnread: Bool
    ) {
        self.chatId = chatId
        self.isMarkedAsUnread = isMarkedAsUnread
    }
}

/// The list of chat filters or a chat filter has changed
public struct UpdateChatFilters: Codable, Equatable, Hashable {

    /// The new list of chat filters
    public let chatFilters: [ChatFilterInfo]

    /// Position of the main chat list among chat filters, 0-based
    public let mainChatListPosition: Int


    public init(
        chatFilters: [ChatFilterInfo],
        mainChatListPosition: Int
    ) {
        self.chatFilters = chatFilters
        self.mainChatListPosition = mainChatListPosition
    }
}

/// The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it will be sent just after the number of online users has changed
public struct UpdateChatOnlineMemberCount: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64

    /// New number of online members in the chat, or 0 if unknown
    public let onlineMemberCount: Int


    public init(
        chatId: Int64,
        onlineMemberCount: Int
    ) {
        self.chatId = chatId
        self.onlineMemberCount = onlineMemberCount
    }
}

/// Notification settings for some type of chats were updated
public struct UpdateScopeNotificationSettings: Codable, Equatable, Hashable {

    /// The new notification settings
    public let notificationSettings: ScopeNotificationSettings

    /// Types of chats for which notification settings were updated
    public let scope: NotificationSettingsScope


    public init(
        notificationSettings: ScopeNotificationSettings,
        scope: NotificationSettingsScope
    ) {
        self.notificationSettings = notificationSettings
        self.scope = scope
    }
}

/// A notification was changed
public struct UpdateNotification: Codable, Equatable, Hashable {

    /// Changed notification
    public let notification: Notification

    /// Unique notification group identifier
    public let notificationGroupId: Int


    public init(
        notification: Notification,
        notificationGroupId: Int
    ) {
        self.notification = notification
        self.notificationGroupId = notificationGroupId
    }
}

/// A list of active notifications in a notification group has changed
public struct UpdateNotificationGroup: Codable, Equatable, Hashable {

    /// List of added group notifications, sorted by notification ID
    public let addedNotifications: [Notification]

    /// Identifier of a chat to which all notifications in the group belong
    public let chatId: Int64

    /// Unique notification group identifier
    public let notificationGroupId: Int

    /// Chat identifier, which notification settings must be applied to the added notifications
    public let notificationSettingsChatId: Int64

    /// Identifier of the notification sound to be played; 0 if sound is disabled
    public let notificationSoundId: TdInt64

    /// Identifiers of removed group notifications, sorted by notification ID
    public let removedNotificationIds: [Int]

    /// Total number of unread notifications in the group, can be bigger than number of active notifications
    public let totalCount: Int

    /// New type of the notification group
    public let type: NotificationGroupType


    public init(
        addedNotifications: [Notification],
        chatId: Int64,
        notificationGroupId: Int,
        notificationSettingsChatId: Int64,
        notificationSoundId: TdInt64,
        removedNotificationIds: [Int],
        totalCount: Int,
        type: NotificationGroupType
    ) {
        self.addedNotifications = addedNotifications
        self.chatId = chatId
        self.notificationGroupId = notificationGroupId
        self.notificationSettingsChatId = notificationSettingsChatId
        self.notificationSoundId = notificationSoundId
        self.removedNotificationIds = removedNotificationIds
        self.totalCount = totalCount
        self.type = type
    }
}

/// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
public struct UpdateActiveNotifications: Codable, Equatable, Hashable {

    /// Lists of active notification groups
    public let groups: [NotificationGroup]


    public init(groups: [NotificationGroup]) {
        self.groups = groups
    }
}

/// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
public struct UpdateHavePendingNotifications: Codable, Equatable, Hashable {

    /// True, if there are some delayed notification updates, which will be sent soon
    public let haveDelayedNotifications: Bool

    /// True, if there can be some yet unreceived notifications, which are being fetched from the server
    public let haveUnreceivedNotifications: Bool


    public init(
        haveDelayedNotifications: Bool,
        haveUnreceivedNotifications: Bool
    ) {
        self.haveDelayedNotifications = haveDelayedNotifications
        self.haveUnreceivedNotifications = haveUnreceivedNotifications
    }
}

/// Some messages were deleted
public struct UpdateDeleteMessages: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
    public let fromCache: Bool

    /// True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
    public let isPermanent: Bool

    /// Identifiers of the deleted messages
    public let messageIds: [Int64]


    public init(
        chatId: Int64,
        fromCache: Bool,
        isPermanent: Bool,
        messageIds: [Int64]
    ) {
        self.chatId = chatId
        self.fromCache = fromCache
        self.isPermanent = isPermanent
        self.messageIds = messageIds
    }
}

/// A message sender activity in the chat has changed
public struct UpdateChatAction: Codable, Equatable, Hashable {

    /// The action
    public let action: ChatAction

    /// Chat identifier
    public let chatId: Int64

    /// If not 0, a message thread identifier in which the action was performed
    public let messageThreadId: Int64

    /// Identifier of a message sender performing the action
    public let senderId: MessageSender


    public init(
        action: ChatAction,
        chatId: Int64,
        messageThreadId: Int64,
        senderId: MessageSender
    ) {
        self.action = action
        self.chatId = chatId
        self.messageThreadId = messageThreadId
        self.senderId = senderId
    }
}

/// The user went online or offline
public struct UpdateUserStatus: Codable, Equatable, Hashable {

    /// New status of the user
    public let status: UserStatus

    /// User identifier
    public let userId: Int64


    public init(
        status: UserStatus,
        userId: Int64
    ) {
        self.status = status
        self.userId = userId
    }
}

/// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
public struct UpdateUser: Codable, Equatable, Hashable {

    /// New data about the user
    public let user: User


    public init(user: User) {
        self.user = user
    }
}

/// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
public struct UpdateBasicGroup: Codable, Equatable, Hashable {

    /// New data about the group
    public let basicGroup: BasicGroup


    public init(basicGroup: BasicGroup) {
        self.basicGroup = basicGroup
    }
}

/// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
public struct UpdateSupergroup: Codable, Equatable, Hashable {

    /// New data about the supergroup
    public let supergroup: Supergroup


    public init(supergroup: Supergroup) {
        self.supergroup = supergroup
    }
}

/// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
public struct UpdateSecretChat: Codable, Equatable, Hashable {

    /// New data about the secret chat
    public let secretChat: SecretChat


    public init(secretChat: SecretChat) {
        self.secretChat = secretChat
    }
}

/// Some data in userFullInfo has been changed
public struct UpdateUserFullInfo: Codable, Equatable, Hashable {

    /// New full information about the user
    public let userFullInfo: UserFullInfo

    /// User identifier
    public let userId: Int64


    public init(
        userFullInfo: UserFullInfo,
        userId: Int64
    ) {
        self.userFullInfo = userFullInfo
        self.userId = userId
    }
}

/// Some data in basicGroupFullInfo has been changed
public struct UpdateBasicGroupFullInfo: Codable, Equatable, Hashable {

    /// New full information about the group
    public let basicGroupFullInfo: BasicGroupFullInfo

    /// Identifier of a basic group
    public let basicGroupId: Int64


    public init(
        basicGroupFullInfo: BasicGroupFullInfo,
        basicGroupId: Int64
    ) {
        self.basicGroupFullInfo = basicGroupFullInfo
        self.basicGroupId = basicGroupId
    }
}

/// Some data in supergroupFullInfo has been changed
public struct UpdateSupergroupFullInfo: Codable, Equatable, Hashable {

    /// New full information about the supergroup
    public let supergroupFullInfo: SupergroupFullInfo

    /// Identifier of the supergroup or channel
    public let supergroupId: Int64


    public init(
        supergroupFullInfo: SupergroupFullInfo,
        supergroupId: Int64
    ) {
        self.supergroupFullInfo = supergroupFullInfo
        self.supergroupId = supergroupId
    }
}

/// A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification
public struct UpdateServiceNotification: Codable, Equatable, Hashable {

    /// Notification content
    public let content: MessageContent

    /// Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method
    public let type: String


    public init(
        content: MessageContent,
        type: String
    ) {
        self.content = content
        self.type = type
    }
}

/// Information about a file was updated
public struct UpdateFile: Codable, Equatable, Hashable {

    /// New data about the file
    public let file: File


    public init(file: File) {
        self.file = file
    }
}

/// The file generation process needs to be started by the application
public struct UpdateFileGenerationStart: Codable, Equatable, Hashable {

    /// String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application
    public let conversion: String

    /// The path to a file that must be created and where the new file is generated
    public let destinationPath: String

    /// Unique identifier for the generation process
    public let generationId: TdInt64

    /// The path to a file from which a new file is generated; may be empty
    public let originalPath: String


    public init(
        conversion: String,
        destinationPath: String,
        generationId: TdInt64,
        originalPath: String
    ) {
        self.conversion = conversion
        self.destinationPath = destinationPath
        self.generationId = generationId
        self.originalPath = originalPath
    }
}

/// File generation is no longer needed
public struct UpdateFileGenerationStop: Codable, Equatable, Hashable {

    /// Unique identifier for the generation process
    public let generationId: TdInt64


    public init(generationId: TdInt64) {
        self.generationId = generationId
    }
}

/// The state of the file download list has changed
public struct UpdateFileDownloads: Codable, Equatable, Hashable {

    /// Total downloaded size of files in the file download list, in bytes
    public let downloadedSize: Int64

    /// Total number of files in the file download list
    public let totalCount: Int

    /// Total size of files in the file download list, in bytes
    public let totalSize: Int64


    public init(
        downloadedSize: Int64,
        totalCount: Int,
        totalSize: Int64
    ) {
        self.downloadedSize = downloadedSize
        self.totalCount = totalCount
        self.totalSize = totalSize
    }
}

/// A file was added to the file download list. This update is sent only after file download list is loaded for the first time
public struct UpdateFileAddedToDownloads: Codable, Equatable, Hashable {

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// The added file download
    public let fileDownload: FileDownload


    public init(
        counts: DownloadedFileCounts,
        fileDownload: FileDownload
    ) {
        self.counts = counts
        self.fileDownload = fileDownload
    }
}

/// A file download was changed. This update is sent only after file download list is loaded for the first time
public struct UpdateFileDownload: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed
    public let completeDate: Int

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// File identifier
    public let fileId: Int

    /// True, if downloading of the file is paused
    public let isPaused: Bool


    public init(
        completeDate: Int,
        counts: DownloadedFileCounts,
        fileId: Int,
        isPaused: Bool
    ) {
        self.completeDate = completeDate
        self.counts = counts
        self.fileId = fileId
        self.isPaused = isPaused
    }
}

/// A file was removed from the file download list. This update is sent only after file download list is loaded for the first time
public struct UpdateFileRemovedFromDownloads: Codable, Equatable, Hashable {

    /// New number of being downloaded and recently downloaded files found
    public let counts: DownloadedFileCounts

    /// File identifier
    public let fileId: Int


    public init(
        counts: DownloadedFileCounts,
        fileId: Int
    ) {
        self.counts = counts
        self.fileId = fileId
    }
}

/// New call was created or information about a call was updated
public struct UpdateCall: Codable, Equatable, Hashable {

    /// New data about a call
    public let call: Call


    public init(call: Call) {
        self.call = call
    }
}

/// Information about a group call was updated
public struct UpdateGroupCall: Codable, Equatable, Hashable {

    /// New data about a group call
    public let groupCall: GroupCall


    public init(groupCall: GroupCall) {
        self.groupCall = groupCall
    }
}

/// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
public struct UpdateGroupCallParticipant: Codable, Equatable, Hashable {

    /// Identifier of group call
    public let groupCallId: Int

    /// New data about a participant
    public let participant: GroupCallParticipant


    public init(
        groupCallId: Int,
        participant: GroupCallParticipant
    ) {
        self.groupCallId = groupCallId
        self.participant = participant
    }
}

/// New call signaling data arrived
public struct UpdateNewCallSignalingData: Codable, Equatable, Hashable {

    /// The call identifier
    public let callId: Int

    /// The data
    public let data: Data


    public init(
        callId: Int,
        data: Data
    ) {
        self.callId = callId
        self.data = data
    }
}

/// Some privacy setting rules have been changed
public struct UpdateUserPrivacySettingRules: Codable, Equatable, Hashable {

    /// New privacy rules
    public let rules: UserPrivacySettingRules

    /// The privacy setting
    public let setting: UserPrivacySetting


    public init(
        rules: UserPrivacySettingRules,
        setting: UserPrivacySetting
    ) {
        self.rules = rules
        self.setting = setting
    }
}

/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
public struct UpdateUnreadMessageCount: Codable, Equatable, Hashable {

    /// The chat list with changed number of unread messages
    public let chatList: ChatList

    /// Total number of unread messages
    public let unreadCount: Int

    /// Total number of unread messages in unmuted chats
    public let unreadUnmutedCount: Int


    public init(
        chatList: ChatList,
        unreadCount: Int,
        unreadUnmutedCount: Int
    ) {
        self.chatList = chatList
        self.unreadCount = unreadCount
        self.unreadUnmutedCount = unreadUnmutedCount
    }
}

/// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
public struct UpdateUnreadChatCount: Codable, Equatable, Hashable {

    /// The chat list with changed number of unread messages
    public let chatList: ChatList

    /// Total number of chats marked as unread
    public let markedAsUnreadCount: Int

    /// Total number of unmuted chats marked as unread
    public let markedAsUnreadUnmutedCount: Int

    /// Approximate total number of chats in the chat list
    public let totalCount: Int

    /// Total number of unread chats
    public let unreadCount: Int

    /// Total number of unread unmuted chats
    public let unreadUnmutedCount: Int


    public init(
        chatList: ChatList,
        markedAsUnreadCount: Int,
        markedAsUnreadUnmutedCount: Int,
        totalCount: Int,
        unreadCount: Int,
        unreadUnmutedCount: Int
    ) {
        self.chatList = chatList
        self.markedAsUnreadCount = markedAsUnreadCount
        self.markedAsUnreadUnmutedCount = markedAsUnreadUnmutedCount
        self.totalCount = totalCount
        self.unreadCount = unreadCount
        self.unreadUnmutedCount = unreadUnmutedCount
    }
}

/// An option changed its value
public struct UpdateOption: Codable, Equatable, Hashable {

    /// The option name
    public let name: String

    /// The new option value
    public let value: OptionValue


    public init(
        name: String,
        value: OptionValue
    ) {
        self.name = name
        self.value = value
    }
}

/// A sticker set has changed
public struct UpdateStickerSet: Codable, Equatable, Hashable {

    /// The sticker set
    public let stickerSet: StickerSet


    public init(stickerSet: StickerSet) {
        self.stickerSet = stickerSet
    }
}

/// The list of installed sticker sets was updated
public struct UpdateInstalledStickerSets: Codable, Equatable, Hashable {

    /// True, if the list of installed mask sticker sets was updated
    public let isMasks: Bool

    /// The new list of installed ordinary sticker sets
    public let stickerSetIds: [TdInt64]


    public init(
        isMasks: Bool,
        stickerSetIds: [TdInt64]
    ) {
        self.isMasks = isMasks
        self.stickerSetIds = stickerSetIds
    }
}

/// The list of trending sticker sets was updated or some of them were viewed
public struct UpdateTrendingStickerSets: Codable, Equatable, Hashable {

    /// The prefix of the list of trending sticker sets with the newest trending sticker sets
    public let stickerSets: TrendingStickerSets


    public init(stickerSets: TrendingStickerSets) {
        self.stickerSets = stickerSets
    }
}

/// The list of recently used stickers was updated
public struct UpdateRecentStickers: Codable, Equatable, Hashable {

    /// True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
    public let isAttached: Bool

    /// The new list of file identifiers of recently used stickers
    public let stickerIds: [Int]


    public init(
        isAttached: Bool,
        stickerIds: [Int]
    ) {
        self.isAttached = isAttached
        self.stickerIds = stickerIds
    }
}

/// The list of favorite stickers was updated
public struct UpdateFavoriteStickers: Codable, Equatable, Hashable {

    /// The new list of file identifiers of favorite stickers
    public let stickerIds: [Int]


    public init(stickerIds: [Int]) {
        self.stickerIds = stickerIds
    }
}

/// The list of saved animations was updated
public struct UpdateSavedAnimations: Codable, Equatable, Hashable {

    /// The new list of file identifiers of saved animations
    public let animationIds: [Int]


    public init(animationIds: [Int]) {
        self.animationIds = animationIds
    }
}

/// The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time
public struct UpdateSavedNotificationSounds: Codable, Equatable, Hashable {

    /// The new list of identifiers of saved notification sounds
    public let notificationSoundIds: [TdInt64]


    public init(notificationSoundIds: [TdInt64]) {
        self.notificationSoundIds = notificationSoundIds
    }
}

/// The selected background has changed
public struct UpdateSelectedBackground: Codable, Equatable, Hashable {

    /// The new selected background; may be null
    public let background: Background?

    /// True, if background for dark theme has changed
    public let forDarkTheme: Bool


    public init(
        background: Background?,
        forDarkTheme: Bool
    ) {
        self.background = background
        self.forDarkTheme = forDarkTheme
    }
}

/// The list of available chat themes has changed
public struct UpdateChatThemes: Codable, Equatable, Hashable {

    /// The new list of chat themes
    public let chatThemes: [ChatTheme]


    public init(chatThemes: [ChatTheme]) {
        self.chatThemes = chatThemes
    }
}

/// Some language pack strings have been updated
public struct UpdateLanguagePackStrings: Codable, Equatable, Hashable {

    /// Identifier of the updated language pack
    public let languagePackId: String

    /// Localization target to which the language pack belongs
    public let localizationTarget: String

    /// List of changed language pack strings
    public let strings: [LanguagePackString]


    public init(
        languagePackId: String,
        localizationTarget: String,
        strings: [LanguagePackString]
    ) {
        self.languagePackId = languagePackId
        self.localizationTarget = localizationTarget
        self.strings = strings
    }
}

/// The connection state has changed. This update must be used only to show a human-readable description of the connection state
public struct UpdateConnectionState: Codable, Equatable, Hashable {

    /// The new connection state
    public let state: ConnectionState


    public init(state: ConnectionState) {
        self.state = state
    }
}

/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update"
public struct UpdateTermsOfService: Codable, Equatable, Hashable {

    /// The new terms of service
    public let termsOfService: TermsOfService

    /// Identifier of the terms of service
    public let termsOfServiceId: String


    public init(
        termsOfService: TermsOfService,
        termsOfServiceId: String
    ) {
        self.termsOfService = termsOfService
        self.termsOfServiceId = termsOfServiceId
    }
}

/// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
public struct UpdateUsersNearby: Codable, Equatable, Hashable {

    /// The new list of users nearby
    public let usersNearby: [ChatNearby]


    public init(usersNearby: [ChatNearby]) {
        self.usersNearby = usersNearby
    }
}

/// The list of bots added to attachment menu has changed
public struct UpdateAttachmentMenuBots: Codable, Equatable, Hashable {

    /// The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen
    public let bots: [AttachmentMenuBot]


    public init(bots: [AttachmentMenuBot]) {
        self.bots = bots
    }
}

/// A message was sent by an opened Web App, so the Web App needs to be closed
public struct UpdateWebAppMessageSent: Codable, Equatable, Hashable {

    /// Identifier of Web App launch
    public let webAppLaunchId: TdInt64


    public init(webAppLaunchId: TdInt64) {
        self.webAppLaunchId = webAppLaunchId
    }
}

/// The list of supported reactions has changed
public struct UpdateReactions: Codable, Equatable, Hashable {

    /// The new list of supported reactions
    public let reactions: [Reaction]


    public init(reactions: [Reaction]) {
        self.reactions = reactions
    }
}

/// The list of supported dice emojis has changed
public struct UpdateDiceEmojis: Codable, Equatable, Hashable {

    /// The new list of supported dice emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

/// Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played
public struct UpdateAnimatedEmojiMessageClicked: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// Message identifier
    public let messageId: Int64

    /// The animated sticker to be played
    public let sticker: Sticker


    public init(
        chatId: Int64,
        messageId: Int64,
        sticker: Sticker
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.sticker = sticker
    }
}

/// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
public struct UpdateAnimationSearchParameters: Codable, Equatable, Hashable {

    /// The new list of emojis suggested for searching
    public let emojis: [String]

    /// Name of the animation search provider
    public let provider: String


    public init(
        emojis: [String],
        provider: String
    ) {
        self.emojis = emojis
        self.provider = provider
    }
}

/// The list of suggested to the user actions has changed
public struct UpdateSuggestedActions: Codable, Equatable, Hashable {

    /// Added suggested actions
    public let addedActions: [SuggestedAction]

    /// Removed suggested actions
    public let removedActions: [SuggestedAction]


    public init(
        addedActions: [SuggestedAction],
        removedActions: [SuggestedAction]
    ) {
        self.addedActions = addedActions
        self.removedActions = removedActions
    }
}

/// A new incoming inline query; for bots only
public struct UpdateNewInlineQuery: Codable, Equatable, Hashable {

    /// The type of the chat from which the query originated; may be null if unknown
    public let chatType: ChatType?

    /// Unique query identifier
    public let id: TdInt64

    /// Offset of the first entry to return
    public let offset: String

    /// Text of the query
    public let query: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User location; may be null
    public let userLocation: Location?


    public init(
        chatType: ChatType?,
        id: TdInt64,
        offset: String,
        query: String,
        senderUserId: Int64,
        userLocation: Location?
    ) {
        self.chatType = chatType
        self.id = id
        self.offset = offset
        self.query = query
        self.senderUserId = senderUserId
        self.userLocation = userLocation
    }
}

/// The user has chosen a result of an inline query; for bots only
public struct UpdateNewChosenInlineResult: Codable, Equatable, Hashable {

    /// Identifier of the sent inline message, if known
    public let inlineMessageId: String

    /// Text of the query
    public let query: String

    /// Identifier of the chosen result
    public let resultId: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User location; may be null
    public let userLocation: Location?


    public init(
        inlineMessageId: String,
        query: String,
        resultId: String,
        senderUserId: Int64,
        userLocation: Location?
    ) {
        self.inlineMessageId = inlineMessageId
        self.query = query
        self.resultId = resultId
        self.senderUserId = senderUserId
        self.userLocation = userLocation
    }
}

/// A new incoming callback query; for bots only
public struct UpdateNewCallbackQuery: Codable, Equatable, Hashable {

    /// Identifier of the chat where the query was sent
    public let chatId: Int64

    /// Identifier that uniquely corresponds to the chat to which the message was sent
    public let chatInstance: TdInt64

    /// Unique query identifier
    public let id: TdInt64

    /// Identifier of the message from which the query originated
    public let messageId: Int64

    /// Query payload
    public let payload: CallbackQueryPayload

    /// Identifier of the user who sent the query
    public let senderUserId: Int64


    public init(
        chatId: Int64,
        chatInstance: TdInt64,
        id: TdInt64,
        messageId: Int64,
        payload: CallbackQueryPayload,
        senderUserId: Int64
    ) {
        self.chatId = chatId
        self.chatInstance = chatInstance
        self.id = id
        self.messageId = messageId
        self.payload = payload
        self.senderUserId = senderUserId
    }
}

/// A new incoming callback query from a message sent via a bot; for bots only
public struct UpdateNewInlineCallbackQuery: Codable, Equatable, Hashable {

    /// An identifier uniquely corresponding to the chat a message was sent to
    public let chatInstance: TdInt64

    /// Unique query identifier
    public let id: TdInt64

    /// Identifier of the inline message from which the query originated
    public let inlineMessageId: String

    /// Query payload
    public let payload: CallbackQueryPayload

    /// Identifier of the user who sent the query
    public let senderUserId: Int64


    public init(
        chatInstance: TdInt64,
        id: TdInt64,
        inlineMessageId: String,
        payload: CallbackQueryPayload,
        senderUserId: Int64
    ) {
        self.chatInstance = chatInstance
        self.id = id
        self.inlineMessageId = inlineMessageId
        self.payload = payload
        self.senderUserId = senderUserId
    }
}

/// A new incoming shipping query; for bots only. Only for invoices with flexible price
public struct UpdateNewShippingQuery: Codable, Equatable, Hashable {

    /// Unique query identifier
    public let id: TdInt64

    /// Invoice payload
    public let invoicePayload: String

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// User shipping address
    public let shippingAddress: Address


    public init(
        id: TdInt64,
        invoicePayload: String,
        senderUserId: Int64,
        shippingAddress: Address
    ) {
        self.id = id
        self.invoicePayload = invoicePayload
        self.senderUserId = senderUserId
        self.shippingAddress = shippingAddress
    }
}

/// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
public struct UpdateNewPreCheckoutQuery: Codable, Equatable, Hashable {

    /// Currency for the product price
    public let currency: String

    /// Unique query identifier
    public let id: TdInt64

    /// Invoice payload
    public let invoicePayload: Data

    /// Information about the order; may be null
    public let orderInfo: OrderInfo?

    /// Identifier of the user who sent the query
    public let senderUserId: Int64

    /// Identifier of a shipping option chosen by the user; may be empty if not applicable
    public let shippingOptionId: String

    /// Total price for the product, in the smallest units of the currency
    public let totalAmount: Int64


    public init(
        currency: String,
        id: TdInt64,
        invoicePayload: Data,
        orderInfo: OrderInfo?,
        senderUserId: Int64,
        shippingOptionId: String,
        totalAmount: Int64
    ) {
        self.currency = currency
        self.id = id
        self.invoicePayload = invoicePayload
        self.orderInfo = orderInfo
        self.senderUserId = senderUserId
        self.shippingOptionId = shippingOptionId
        self.totalAmount = totalAmount
    }
}

/// A new incoming event; for bots only
public struct UpdateNewCustomEvent: Codable, Equatable, Hashable {

    /// A JSON-serialized event
    public let event: String


    public init(event: String) {
        self.event = event
    }
}

/// A new incoming query; for bots only
public struct UpdateNewCustomQuery: Codable, Equatable, Hashable {

    /// JSON-serialized query data
    public let data: String

    /// The query identifier
    public let id: TdInt64

    /// Query timeout
    public let timeout: Int


    public init(
        data: String,
        id: TdInt64,
        timeout: Int
    ) {
        self.data = data
        self.id = id
        self.timeout = timeout
    }
}

/// A poll was updated; for bots only
public struct UpdatePoll: Codable, Equatable, Hashable {

    /// New data about the poll
    public let poll: Poll


    public init(poll: Poll) {
        self.poll = poll
    }
}

/// A user changed the answer to a poll; for bots only
public struct UpdatePollAnswer: Codable, Equatable, Hashable {

    /// 0-based identifiers of answer options, chosen by the user
    public let optionIds: [Int]

    /// Unique poll identifier
    public let pollId: TdInt64

    /// The user, who changed the answer to the poll
    public let userId: Int64


    public init(
        optionIds: [Int],
        pollId: TdInt64,
        userId: Int64
    ) {
        self.optionIds = optionIds
        self.pollId = pollId
        self.userId = userId
    }
}

/// User rights changed in a chat; for bots only
public struct UpdateChatMember: Codable, Equatable, Hashable {

    /// Identifier of the user, changing the rights
    public let actorUserId: Int64

    /// Chat identifier
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the user rights was changed
    public let date: Int

    /// If user has joined the chat using an invite link, the invite link; may be null
    public let inviteLink: ChatInviteLink?

    /// New chat member
    public let newChatMember: ChatMember

    /// Previous chat member
    public let oldChatMember: ChatMember


    public init(
        actorUserId: Int64,
        chatId: Int64,
        date: Int,
        inviteLink: ChatInviteLink?,
        newChatMember: ChatMember,
        oldChatMember: ChatMember
    ) {
        self.actorUserId = actorUserId
        self.chatId = chatId
        self.date = date
        self.inviteLink = inviteLink
        self.newChatMember = newChatMember
        self.oldChatMember = oldChatMember
    }
}

/// A user sent a join request to a chat; for bots only
public struct UpdateNewChatJoinRequest: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64

    /// The invite link, which was used to send join request; may be null
    public let inviteLink: ChatInviteLink?

    /// Join request
    public let request: ChatJoinRequest


    public init(
        chatId: Int64,
        inviteLink: ChatInviteLink?,
        request: ChatJoinRequest
    ) {
        self.chatId = chatId
        self.inviteLink = inviteLink
        self.request = request
    }
}

