//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/17/24.
//

import Foundation

// The Comment object sent to the Appwrite database.
struct CommentCreationRequest: Encodable {
    let parentId: String?
    let postId: String
    let userId: String
    let content: String
}
