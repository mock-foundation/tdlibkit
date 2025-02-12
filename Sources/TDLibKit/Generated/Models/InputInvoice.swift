//
//  InputInvoice.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describe an invoice to process
public enum InputInvoice: Codable, Equatable, Hashable {

    /// An invoice from a message of the type messageInvoice
    case message(InputInvoiceMessage)

    /// An invoice from a link of the type internalLinkTypeInvoice
    case name(InputInvoiceName)


    private enum Kind: String, Codable {
        case inputInvoiceMessage
        case inputInvoiceName
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputInvoiceMessage:
            let value = try InputInvoiceMessage(from: decoder)
            self = .message(value)
        case .inputInvoiceName:
            let value = try InputInvoiceName(from: decoder)
            self = .name(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .message(let value):
            try container.encode(Kind.inputInvoiceMessage, forKey: .type)
            try value.encode(to: encoder)
        case .name(let value):
            try container.encode(Kind.inputInvoiceName, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// An invoice from a message of the type messageInvoice
public struct InputInvoiceMessage: Codable, Equatable, Hashable {

    /// Chat identifier of the message
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

/// An invoice from a link of the type internalLinkTypeInvoice
public struct InputInvoiceName: Codable, Equatable, Hashable {

    /// Name of the invoice
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

