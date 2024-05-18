//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/17/24.
//

import Foundation

// The Comment object sent to the Appwrite database.
public struct CommentCreationRequest: Encodable {
    public let parentId: String?
    public let postId: String
    public let userId: String
    public let content: String
    
    public init(parentId: String?, postId: String, userId: String, content: String) {
        self.parentId = parentId
        self.postId = postId
        self.userId = userId
        self.content = content
    }
}
