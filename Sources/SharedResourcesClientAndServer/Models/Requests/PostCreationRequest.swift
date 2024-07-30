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
    public let categoryName: String
    public let tagIds: [String]
    public let userId: String
    public let communityId: String
    
    public init(
        title: String,
        body: String,
        link: String?,
        categoryName: String,
        tagIds: [String],
        userId: String,
        communityId: String
    ) {
        self.title = title
        self.body = body
        self.link = link
        self.categoryName = categoryName
        self.tagIds = tagIds
        self.userId = userId
        self.communityId = communityId
    }
    
    enum CodingKeys: String, CodingKey {
        case title, body, link, categoryName, userId, communityId
        
        case tagIds = "communityTag"
    }
}
