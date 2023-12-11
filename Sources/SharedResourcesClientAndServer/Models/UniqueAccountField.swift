//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/10/23.
//

import Foundation

// Required by Appwrite to be unique for each account.
public enum UniqueAccountField {
    case username, email, phone
    
    public var queryName: String {
        switch self {
        case .username:
            "username"
        case .email:
            "email"
        case .phone:
            "phone"
        }
    }
}
