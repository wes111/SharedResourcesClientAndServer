//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/20/24.
//

import Foundation

public struct CommentVoteRequest: Codable {
    public let commentId: String
    public let userId: String
    public let vote: VoteType?
    
    public init(commentId: String, userId: String, vote: VoteType?) {
        self.commentId = commentId
        self.userId = userId
        self.vote = vote
    }
}
