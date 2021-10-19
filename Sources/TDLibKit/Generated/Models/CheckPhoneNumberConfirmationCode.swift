//
//  CheckPhoneNumberConfirmationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Checks phone number confirmation code
public struct CheckPhoneNumberConfirmationCode: Codable {

    /// The phone number confirmation code
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

