//
//  PostVote.swift
//  Democracy
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

public struct PostVote: Identifiable, Hashable, Sendable {
    public let id: String
    public let creationDate: Date
    public let itemId: String
    public let userId: String
    public var vote: VoteType? // nil means the user previosly voted, but has since removed.
    
    public static func createTempVote() -> PostVote {
        .init(id: "temp", creationDate: .now, itemId: "", userId: "")
    }
}
