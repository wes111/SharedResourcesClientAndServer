//
//  CommentVote+Preview.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/20/24.
//

import Foundation

public extension CommentVote {
    
    static var preview: CommentVote {
        .init(
            id: UUID().uuidString,
            creationDate: .now,
            itemId: "",
            userId: "123"
        )
    }
}
