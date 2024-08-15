//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 8/2/24.
//

import Foundation

// The attribute names defined in the Appwrite database.
public enum PostAttributes: String {
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
    case title
    case upVoteCount
    case userId
    
    public var queryName: String {
        self.rawValue
    }
}
