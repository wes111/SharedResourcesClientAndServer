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
    public let id: String
    public let creationDate: DateWrapper
    public let userId: String
    public let commentId: String
    public let vote: VoteType?
    
    enum CodingKeys: String, CodingKey {
        case userId, commentId, vote
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
