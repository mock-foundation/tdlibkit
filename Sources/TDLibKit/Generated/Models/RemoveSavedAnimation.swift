//
//  RemoveSavedAnimation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-505fed00
//  https://github.com/tdlib/td/tree/505fed00
//

import Foundation


/// Removes an animation from the list of saved animations
public struct RemoveSavedAnimation: Codable {

    /// Animation file to be removed
    public let animation: InputFile?


    public init(animation: InputFile?) {
        self.animation = animation
    }
}

