//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 8/16/24.
//

import Foundation

// The attribute names defined in the Appwrite database.
public enum CommentAttribute: String {
    case content
    case downVoteCount
    case parentId
    case postId
    case responseCount
    case score
    case upVoteCount
    case userId
    
    public var queryName: String {
        self.rawValue
    }
}
