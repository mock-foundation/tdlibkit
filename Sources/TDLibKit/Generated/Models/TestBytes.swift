//
//  TestBytes.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// A simple object containing a sequence of bytes; for testing only
public struct TestBytes: Codable {

    /// Bytes
    public let value: Data


    public init(value: Data) {
        self.value = value
    }
}

