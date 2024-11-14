//
//  Comment.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/9/23.
//

import Foundation

// Domain model
public struct Comment: Identifiable, Hashable, Sendable {
    public let id: String
    public let parentId: String?
    public let postId: String
    public let userId: String
    public let creationDate: Date
    public let content: String
    public var upVoteCount: Int
    public var downVoteCount: Int
    public var score: Int
    public let responseCount: Int
    public var userVote: CommentVote?
    
    public init(
        id: String,
        parentId: String?,
        postId: String,
        userId: String,
        creationDate: Date,
        content: String,
        upVoteCount: Int,
        downVoteCount: Int,
        responseCount: Int,
        score: Int
    ) {
        self.id = id
        self.parentId = parentId
        self.postId = postId
        self.userId = userId
        self.creationDate = creationDate
        self.content = content
        self.upVoteCount = upVoteCount
        self.downVoteCount = downVoteCount
        self.responseCount = responseCount
        self.score = score
    }
}
