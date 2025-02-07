//
//  MaskPoint.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Part of the face, relative to which a mask is placed
public enum MaskPoint: Codable, Equatable, Hashable {

    /// The mask is placed relatively to the forehead
    case forehead

    /// The mask is placed relatively to the eyes
    case eyes

    /// The mask is placed relatively to the mouth
    case mouth

    /// The mask is placed relatively to the chin
    case chin


    private enum Kind: String, Codable {
        case maskPointForehead
        case maskPointEyes
        case maskPointMouth
        case maskPointChin
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .maskPointForehead:
            self = .forehead
        case .maskPointEyes:
            self = .eyes
        case .maskPointMouth:
            self = .mouth
        case .maskPointChin:
            self = .chin
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .forehead:
            try container.encode(Kind.maskPointForehead, forKey: .type)
        case .eyes:
            try container.encode(Kind.maskPointEyes, forKey: .type)
        case .mouth:
            try container.encode(Kind.maskPointMouth, forKey: .type)
        case .chin:
            try container.encode(Kind.maskPointChin, forKey: .type)
        }
    }
}

