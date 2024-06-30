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
    public let title: String
    public let body: String
    public let link: String?
    public let category: String
    public let tags: [String]
    public let userId: String
    public let communityId: String
    
    public init(
        title: String,
        body: String,
        link: String?,
        category: String,
        tags: [String],
        userId: String,
        communityId: String
    ) {
        self.title = title
        self.body = body
        self.link = link
        self.category = category
        self.tags = tags
        self.userId = userId
        self.communityId = communityId
    }
    
    enum CodingKeys: String, CodingKey {
        case title, body, link, category, tags, userId, communityId
    }
}
