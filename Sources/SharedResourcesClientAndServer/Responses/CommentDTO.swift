//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/17/24.
//

import Foundation

// The Comment object received from the Appwrite database.
struct CommentDTO: Decodable {
    let id: String
    let parentId: String?
    let postId: String
    let userId: String
    let creationDate: DateWrapper
    let content: String
    let upVoteCount: Int // Note: This value is only an estimate. Could change in the future...
    let downVoteCount: Int // Note: This value is only an estimate. Could change in the future...
    
    enum CodingKeys: String, CodingKey {
        case parentId, postId, userId, content, upVoteCount, downVoteCount
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
