//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

// The PostVote object received from the Appwrite database.
// The server function needs this type to be Encodable (see `voteComment` func).
public struct PostVoteDTO: Codable {
    public let postId: String
    public let userId: String
    public let vote: VoteType?
    
    public let creationDate: Date
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case userId, postId, vote
        case id = "$id"
        case creationDate = "$createdAt"
    }
}

extension PostVoteDTO: DomainConvertible {
    public static let collection: Collection = .postVote
    
    public func toDomain() -> PostVote {
        .init(
            id: id,
            creationDate: creationDate,
            itemId: postId,
            userId: userId,
            vote: vote
        )
    }
}
