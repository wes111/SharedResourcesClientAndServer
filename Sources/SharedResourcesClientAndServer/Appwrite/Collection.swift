//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/18/24.
//

import Foundation

public enum Collection: String {
    case comment
    case commentVote
    case community
    case communitySettings
    case communityTag
    case membership
    case post
    case postCategory
    case postVote
    case resource
    case rule
    
    case none // TODO: Find a better way to handle. Some requests do not have a corresponding table...
    
    public var id: String {
        self.rawValue
    }
}
