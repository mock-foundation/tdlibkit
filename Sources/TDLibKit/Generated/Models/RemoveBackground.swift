//
//  RemoveBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveBackground: Codable {

    /// The background identifier
    public let backgroundId: TdInt64?


    public init(backgroundId: TdInt64?) {
        self.backgroundId = backgroundId
    }
}

