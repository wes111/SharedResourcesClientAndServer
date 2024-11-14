//
//  MembershipAttribute.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/12/24.
//

import Foundation

public enum MembershipAttribute {
    case userId
    
    public var key: String {
        switch self {
        case .userId:
            "userId"
        }
    }
}
