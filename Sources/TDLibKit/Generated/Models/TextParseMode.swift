//
//  TextParseMode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes the way the text needs to be parsed for TextEntities
public enum TextParseMode: Codable, Equatable, Hashable {

    /// The text uses Markdown-style formatting
    case markdown(TextParseModeMarkdown)

    /// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode
    case hTML


    private enum Kind: String, Codable {
        case textParseModeMarkdown
        case textParseModeHTML
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .textParseModeMarkdown:
            let value = try TextParseModeMarkdown(from: decoder)
            self = .markdown(value)
        case .textParseModeHTML:
            self = .hTML
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .markdown(let value):
            try container.encode(Kind.textParseModeMarkdown, forKey: .type)
            try value.encode(to: encoder)
        case .hTML:
            try container.encode(Kind.textParseModeHTML, forKey: .type)
        }
    }
}

/// The text uses Markdown-style formatting
public struct TextParseModeMarkdown: Codable, Equatable, Hashable {

    /// Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
    public let version: Int


    public init(version: Int) {
        self.version = version
    }
}

