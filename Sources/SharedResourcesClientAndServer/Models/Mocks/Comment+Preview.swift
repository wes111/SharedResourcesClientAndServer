//
//  Comment+Preview.swift
//  Democracy
//
//  Created by Wesley Luntsford on 5/3/24.
//

import Foundation

public extension Comment {
    
    static var preview: Comment {
        Comment(
            id: "",
            parentId: "",
            postId: "",
            userId: "",
            creationDate: .now,
            content: "Post body Content - Hello World!",
            upVoteCount: 10,
            downVoteCount: 5,
            responseCount: 11,
            score: 10 - 5
        )
    }
}
