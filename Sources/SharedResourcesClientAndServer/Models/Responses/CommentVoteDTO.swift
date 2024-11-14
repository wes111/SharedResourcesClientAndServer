//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/20/24.
//

import Foundation

// The CommentVote object received from the Appwrite database.
// The server function needs this type to be Encodable (see `voteComment` func).
public struct CommentVoteDTO: Codable {
    public let commentId: String
    public let userId: String
    public let vote: VoteType?
    
    public let id: String
    public let creationDate: Date
    
    enum CodingKeys: String, CodingKey {
        case userId, commentId, vote
        case id = "$id"
        case creationDate = "$createdAt"
    }
}

extension CommentVoteDTO: DomainConvertible {
    public static var collection: Collection {
        .commentVote
    }
    
    public func toDomain() -> CommentVote {
        .init(
            id: id,
            creationDate: creationDate,
            itemId: commentId,
            userId: userId,
            vote: vote
        )
    }
}
