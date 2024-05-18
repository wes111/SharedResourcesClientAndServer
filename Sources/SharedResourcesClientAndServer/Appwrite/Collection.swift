//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/18/24.
//

import Foundation

public enum Collection {
    case comment
    case community
    case membership
    case post
    case resource
    case rule
    
    public var id: String {
        switch self {
        case .comment: "659981128cbf2c92a2d1"
        case .community: "65980c47b96a51cbd280"
        case .membership: "66009a851fea59c9dcbc"
        case .post: "6595636e9fae941f4374"
        case .resource: "65dff72cc6125ac4e70d"
        case .rule: "65dff7263f1bb5046e03"
        }
    }
}
