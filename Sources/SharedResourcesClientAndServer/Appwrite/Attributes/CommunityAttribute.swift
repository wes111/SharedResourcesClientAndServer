//
//  CommunityAttribute.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/12/24.
//

import Foundation

public enum CommunityAttribute {
    case id
    
    public var key: String {
        switch self {
        case .id:
            "$id"
        }
    }
}
