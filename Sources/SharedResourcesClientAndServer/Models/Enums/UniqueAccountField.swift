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
