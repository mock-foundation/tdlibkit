//
//  TestSquareInt.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
public struct TestSquareInt: Codable {

    /// Number to square
    public let x: Int?


    public init(x: Int?) {
        self.x = x
    }
}

