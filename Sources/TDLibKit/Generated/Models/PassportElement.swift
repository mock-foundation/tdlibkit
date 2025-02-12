//
//  PassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a Telegram Passport element
public enum PassportElement: Codable, Equatable, Hashable {

    /// A Telegram Passport element containing the user's personal details
    case personalDetails(PassportElementPersonalDetails)

    /// A Telegram Passport element containing the user's passport
    case passport(PassportElementPassport)

    /// A Telegram Passport element containing the user's driver license
    case driverLicense(PassportElementDriverLicense)

    /// A Telegram Passport element containing the user's identity card
    case identityCard(PassportElementIdentityCard)

    /// A Telegram Passport element containing the user's internal passport
    case internalPassport(PassportElementInternalPassport)

    /// A Telegram Passport element containing the user's address
    case address(PassportElementAddress)

    /// A Telegram Passport element containing the user's utility bill
    case utilityBill(PassportElementUtilityBill)

    /// A Telegram Passport element containing the user's bank statement
    case bankStatement(PassportElementBankStatement)

    /// A Telegram Passport element containing the user's rental agreement
    case rentalAgreement(PassportElementRentalAgreement)

    /// A Telegram Passport element containing the user's passport registration pages
    case passportRegistration(PassportElementPassportRegistration)

    /// A Telegram Passport element containing the user's temporary registration
    case temporaryRegistration(PassportElementTemporaryRegistration)

    /// A Telegram Passport element containing the user's phone number
    case phoneNumber(PassportElementPhoneNumber)

    /// A Telegram Passport element containing the user's email address
    case emailAddress(PassportElementEmailAddress)


    private enum Kind: String, Codable {
        case passportElementPersonalDetails
        case passportElementPassport
        case passportElementDriverLicense
        case passportElementIdentityCard
        case passportElementInternalPassport
        case passportElementAddress
        case passportElementUtilityBill
        case passportElementBankStatement
        case passportElementRentalAgreement
        case passportElementPassportRegistration
        case passportElementTemporaryRegistration
        case passportElementPhoneNumber
        case passportElementEmailAddress
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .passportElementPersonalDetails:
            let value = try PassportElementPersonalDetails(from: decoder)
            self = .personalDetails(value)
        case .passportElementPassport:
            let value = try PassportElementPassport(from: decoder)
            self = .passport(value)
        case .passportElementDriverLicense:
            let value = try PassportElementDriverLicense(from: decoder)
            self = .driverLicense(value)
        case .passportElementIdentityCard:
            let value = try PassportElementIdentityCard(from: decoder)
            self = .identityCard(value)
        case .passportElementInternalPassport:
            let value = try PassportElementInternalPassport(from: decoder)
            self = .internalPassport(value)
        case .passportElementAddress:
            let value = try PassportElementAddress(from: decoder)
            self = .address(value)
        case .passportElementUtilityBill:
            let value = try PassportElementUtilityBill(from: decoder)
            self = .utilityBill(value)
        case .passportElementBankStatement:
            let value = try PassportElementBankStatement(from: decoder)
            self = .bankStatement(value)
        case .passportElementRentalAgreement:
            let value = try PassportElementRentalAgreement(from: decoder)
            self = .rentalAgreement(value)
        case .passportElementPassportRegistration:
            let value = try PassportElementPassportRegistration(from: decoder)
            self = .passportRegistration(value)
        case .passportElementTemporaryRegistration:
            let value = try PassportElementTemporaryRegistration(from: decoder)
            self = .temporaryRegistration(value)
        case .passportElementPhoneNumber:
            let value = try PassportElementPhoneNumber(from: decoder)
            self = .phoneNumber(value)
        case .passportElementEmailAddress:
            let value = try PassportElementEmailAddress(from: decoder)
            self = .emailAddress(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .personalDetails(let value):
            try container.encode(Kind.passportElementPersonalDetails, forKey: .type)
            try value.encode(to: encoder)
        case .passport(let value):
            try container.encode(Kind.passportElementPassport, forKey: .type)
            try value.encode(to: encoder)
        case .driverLicense(let value):
            try container.encode(Kind.passportElementDriverLicense, forKey: .type)
            try value.encode(to: encoder)
        case .identityCard(let value):
            try container.encode(Kind.passportElementIdentityCard, forKey: .type)
            try value.encode(to: encoder)
        case .internalPassport(let value):
            try container.encode(Kind.passportElementInternalPassport, forKey: .type)
            try value.encode(to: encoder)
        case .address(let value):
            try container.encode(Kind.passportElementAddress, forKey: .type)
            try value.encode(to: encoder)
        case .utilityBill(let value):
            try container.encode(Kind.passportElementUtilityBill, forKey: .type)
            try value.encode(to: encoder)
        case .bankStatement(let value):
            try container.encode(Kind.passportElementBankStatement, forKey: .type)
            try value.encode(to: encoder)
        case .rentalAgreement(let value):
            try container.encode(Kind.passportElementRentalAgreement, forKey: .type)
            try value.encode(to: encoder)
        case .passportRegistration(let value):
            try container.encode(Kind.passportElementPassportRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .temporaryRegistration(let value):
            try container.encode(Kind.passportElementTemporaryRegistration, forKey: .type)
            try value.encode(to: encoder)
        case .phoneNumber(let value):
            try container.encode(Kind.passportElementPhoneNumber, forKey: .type)
            try value.encode(to: encoder)
        case .emailAddress(let value):
            try container.encode(Kind.passportElementEmailAddress, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A Telegram Passport element containing the user's personal details
public struct PassportElementPersonalDetails: Codable, Equatable, Hashable {

    /// Personal details of the user
    public let personalDetails: PersonalDetails


    public init(personalDetails: PersonalDetails) {
        self.personalDetails = personalDetails
    }
}

/// A Telegram Passport element containing the user's passport
public struct PassportElementPassport: Codable, Equatable, Hashable {

    /// Passport
    public let passport: IdentityDocument


    public init(passport: IdentityDocument) {
        self.passport = passport
    }
}

/// A Telegram Passport element containing the user's driver license
public struct PassportElementDriverLicense: Codable, Equatable, Hashable {

    /// Driver license
    public let driverLicense: IdentityDocument


    public init(driverLicense: IdentityDocument) {
        self.driverLicense = driverLicense
    }
}

/// A Telegram Passport element containing the user's identity card
public struct PassportElementIdentityCard: Codable, Equatable, Hashable {

    /// Identity card
    public let identityCard: IdentityDocument


    public init(identityCard: IdentityDocument) {
        self.identityCard = identityCard
    }
}

/// A Telegram Passport element containing the user's internal passport
public struct PassportElementInternalPassport: Codable, Equatable, Hashable {

    /// Internal passport
    public let internalPassport: IdentityDocument


    public init(internalPassport: IdentityDocument) {
        self.internalPassport = internalPassport
    }
}

/// A Telegram Passport element containing the user's address
public struct PassportElementAddress: Codable, Equatable, Hashable {

    /// Address
    public let address: Address


    public init(address: Address) {
        self.address = address
    }
}

/// A Telegram Passport element containing the user's utility bill
public struct PassportElementUtilityBill: Codable, Equatable, Hashable {

    /// Utility bill
    public let utilityBill: PersonalDocument


    public init(utilityBill: PersonalDocument) {
        self.utilityBill = utilityBill
    }
}

/// A Telegram Passport element containing the user's bank statement
public struct PassportElementBankStatement: Codable, Equatable, Hashable {

    /// Bank statement
    public let bankStatement: PersonalDocument


    public init(bankStatement: PersonalDocument) {
        self.bankStatement = bankStatement
    }
}

/// A Telegram Passport element containing the user's rental agreement
public struct PassportElementRentalAgreement: Codable, Equatable, Hashable {

    /// Rental agreement
    public let rentalAgreement: PersonalDocument


    public init(rentalAgreement: PersonalDocument) {
        self.rentalAgreement = rentalAgreement
    }
}

/// A Telegram Passport element containing the user's passport registration pages
public struct PassportElementPassportRegistration: Codable, Equatable, Hashable {

    /// Passport registration pages
    public let passportRegistration: PersonalDocument


    public init(passportRegistration: PersonalDocument) {
        self.passportRegistration = passportRegistration
    }
}

/// A Telegram Passport element containing the user's temporary registration
public struct PassportElementTemporaryRegistration: Codable, Equatable, Hashable {

    /// Temporary registration
    public let temporaryRegistration: PersonalDocument


    public init(temporaryRegistration: PersonalDocument) {
        self.temporaryRegistration = temporaryRegistration
    }
}

/// A Telegram Passport element containing the user's phone number
public struct PassportElementPhoneNumber: Codable, Equatable, Hashable {

    /// Phone number
    public let phoneNumber: String


    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
}

/// A Telegram Passport element containing the user's email address
public struct PassportElementEmailAddress: Codable, Equatable, Hashable {

    /// Email address
    public let emailAddress: String


    public init(emailAddress: String) {
        self.emailAddress = emailAddress
    }
}

