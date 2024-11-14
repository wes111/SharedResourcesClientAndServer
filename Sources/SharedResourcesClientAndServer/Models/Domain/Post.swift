//
//  Post.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/7/23.
//

import Foundation

// The domain model.
public struct Post: Identifiable, Hashable, Sendable {
    public let id: String
    public let title: String
    public let body: String
    public let link: URL?
    public let categoryName: String
    public let tags: [CommunityTag]
    public let userId: String
    public let communityId: String
    public let creationDate: Date
    public let approvedDate: Date?
    public let archivedDate: Date?
    public var upVoteCount: Int
    public var downVoteCount: Int
    public var commentCount: Int
    public var userVote: PostVote?
    public var score: Int
    
    public init(
        id: String,
        title: String,
        body: String,
        link: URL?,
        categoryName: String,
        tags: [CommunityTag],
        userId: String,
        communityId: String,
        creationDate: Date,
        approvedDate: Date?,
        archivedDate: Date?,
        upVoteCount: Int,
        downVoteCount: Int,
        commentCount: Int,
        score: Int
    ) {
        self.id = id
        self.title = title
        self.body = body
        self.link = link
        self.categoryName = categoryName
        self.tags = tags
        self.userId = userId
        self.communityId = communityId
        self.creationDate = creationDate
        self.approvedDate = approvedDate
        self.archivedDate = archivedDate
        self.upVoteCount = upVoteCount
        self.downVoteCount = downVoteCount
        self.commentCount = commentCount
        self.score = score
    }
}
