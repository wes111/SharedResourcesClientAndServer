//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 8/2/24.
//

import Foundation

// The attribute names defined in the Appwrite database.
public enum PostAttribute: String {
    case approvedDate
    case archivedDate
    case body
    case categoryName
    case commentCount
    case communityId
    case communityTag
    case communityTagsString
    case downVoteCount
    case link
    case score
    case title
    case upVoteCount
    case userId
    
    public var key: String {
        self.rawValue
    }
}
