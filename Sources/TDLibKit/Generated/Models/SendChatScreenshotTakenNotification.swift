//
//  SendChatScreenshotTakenNotification.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats
public struct SendChatScreenshotTakenNotification: Codable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

