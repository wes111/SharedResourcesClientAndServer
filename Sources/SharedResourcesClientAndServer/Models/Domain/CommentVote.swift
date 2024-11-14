//
//  CommentVote.swift
//  Democracy
//
//  Created by Wesley Luntsford on 6/20/24.
//

import Foundation

// Domain model
// TODO: This needs a post id...
public struct CommentVote: Identifiable, Hashable, Sendable {
    public let id: String
    public let creationDate: Date
    public let itemId: String
    public let userId: String
    public var vote: VoteType? // nil means the user previosly voted, but has since removed.
    
    public init(id: String, creationDate: Date, itemId: String, userId: String, vote: VoteType? = nil) {
        self.id = id
        self.creationDate = creationDate
        self.itemId = itemId
        self.userId = userId
        self.vote = vote
    }
    
    public static func createTempVote() -> CommentVote {
        .init(id: "temp", creationDate: .now, itemId: "", userId: "")
    }
}
