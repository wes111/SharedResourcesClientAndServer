//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

// Required by Appwrite to be unique for each account.
public enum UniqueAccountField: Codable, Sendable {
    case username(Username)
    case email(Email)
    case phone(PhoneNumber)
    
    public var queryName: String {
        switch self {
        case .username:
            return "username"
        case .email:
            return "email"
        case .phone:
            return "phone"
        }
    }
}

public struct PhoneNumber: Codable, Sendable {
    public let countryCode: Int = 1 // Single digit? What are the possible values here
    public let base: Int // 10 digit number?
    
    public init(base: Int) {
        self.base = base
    }
    
    public var appwriteString: String {
        "+\(countryCode)\(base)"
    }
}

public struct Username: Codable, Sendable {
    public let value: String
    
    public init(value: String) throws { // TODO: should throw if invalid... Add validation logic here...
        self.value = value
    }
    
    public var appwriteString: String {
        value
    }
}

public struct Email: Codable, Sendable {
    public let value: String
    
    public init(value: String) throws { // TODO: should throw if invalid... Add validation logic here...
        self.value = value
    }
    
    public var appwriteString: String {
        "\"\(value)\""
    }
}

public struct Password: Codable, Sendable { // TODO: should throw if invalid... Add validation logic here...
    public let value: String
    
    public init(value: String) throws {
        self.value = value
    }
}
