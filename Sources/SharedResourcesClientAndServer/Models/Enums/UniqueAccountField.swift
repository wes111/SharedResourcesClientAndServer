//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

// Required by Appwrite to be unique for each account.
public enum UniqueAccountField: Codable {
    case username
    case email
    case phone
    
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
