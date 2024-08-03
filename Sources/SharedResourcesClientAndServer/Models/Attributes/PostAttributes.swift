//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 8/2/24.
//

import Foundation

// The attribute names defined in the Appwrite database.
public enum PostAttributes: String {
    case title
    case body
    case link
    case userId
    case communityId
    case approvedDate
    case upVoteCount
    case downVoteCount
    case commentCount
    case categoryName
    case archivedDate
    case communityTag
    case communityTagsString
    
    public var queryName: String {
        self.rawValue
    }
}
