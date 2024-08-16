//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

// The Post object sent to the Appwrite database.
// Note that 'id', 'creationDate', and 'approvedDate' are not part of this object.
public struct PostCreationRequest: Encodable {
    public let body: String
    public let categoryName: String
    public let communityId: String
    
    // Work-around for Appwrite not supporting queries on relationships:
    // https://appwrite.io/threads/1187964833228927016
    public let communityTagsString: String // TODO: Backend should create this String in a func, not client.
    public let tagIds: [String]
    public let link: String?
    public let title: String
    public let userId: String
    
    public init(
        title: String,
        body: String,
        link: String?,
        categoryName: String,
        tagIds: [String],
        communityTagsString: String,
        userId: String,
        communityId: String
    ) {
        self.title = title
        self.body = body
        self.link = link
        self.categoryName = categoryName
        self.tagIds = tagIds
        self.communityTagsString = communityTagsString
        self.userId = userId
        self.communityId = communityId
    }
    
    enum CodingKeys: String, CodingKey {
        case title, body, link, categoryName, userId, communityId, communityTagsString
        
        case tagIds = "communityTag"
    }
}
