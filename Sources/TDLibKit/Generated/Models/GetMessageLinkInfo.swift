//
//  GetMessageLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
public struct GetMessageLinkInfo: Codable {

    /// The message link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

