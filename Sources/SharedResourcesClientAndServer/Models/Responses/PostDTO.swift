//
//  PostDTO.swift
//
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

// The Post object received from the Appwrite database.
public struct PostDTO: Decodable {
    public let approvedDate: Date?
    public let archivedDate: Date?
    public let body: String
    public let categoryName: String
    public let commentCount: Int
    public let communityId: String
    public let tags: [CommunityTagDTO]
    public let downVoteCount: Int
    public let link: URL?
    public let title: String
    public let upVoteCount: Int
    public let userId: String
    public let score: Int
    
    public let creationDate: Date
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case title, body, link, categoryName, userId, communityId, approvedDate, upVoteCount,
             downVoteCount, commentCount, archivedDate, score
        
        case id = "$id"
        case creationDate = "$createdAt"
        case tags = "communityTag"
    }
}

extension PostDTO: DomainConvertible {
    public static var collection: Collection {
        .post
    }
    
    public func toDomain() -> Post {
        .init(
            id: id,
            title: title,
            body: body,
            link: link,
            categoryName: categoryName,
            tags: tags.map { $0.toCommunityTag() },
            userId: userId,
            communityId: communityId,
            creationDate: creationDate,
            approvedDate: approvedDate,
            archivedDate: archivedDate,
            upVoteCount: upVoteCount,
            downVoteCount: downVoteCount,
            commentCount: commentCount,
            score: score
        )
    }
}
