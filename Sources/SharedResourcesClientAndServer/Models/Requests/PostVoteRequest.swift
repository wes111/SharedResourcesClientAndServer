//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

// The Post vote sent to the Appwrite database.
public struct PostVoteRequest: Codable {
    public let postId: String
    public let userId: String
    public let vote: VoteType
    
    public init(postId: String, userId: String, vote: VoteType) {
        self.postId = postId
        self.userId = userId
        self.vote = vote
    }
}

extension PostVoteRequest: FunctionCreatable {
    public var function: AppwriteFunction {
        .votePost
    }
    
    public typealias ResponseModel = PostVoteDTO
    
    public var creationId: String? {
        nil
    }
}
