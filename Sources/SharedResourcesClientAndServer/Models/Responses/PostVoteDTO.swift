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
    public let id: String
    public let creationDate: Date
    public let userId: String
    public let postId: String
    public let vote: VoteType?
    
    enum CodingKeys: String, CodingKey {
        case userId, postId, vote
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
