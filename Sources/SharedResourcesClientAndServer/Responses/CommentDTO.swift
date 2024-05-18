//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 5/17/24.
//

import Foundation

// The Comment object received from the Appwrite database.
public struct CommentDTO: Decodable {
    public let id: String
    public let parentId: String?
    public let postId: String
    public let userId: String
    public let creationDate: DateWrapper
    public let content: String
    public let upVoteCount: Int // Note: This value is only an estimate. Could change in the future...
    public let downVoteCount: Int // Note: This value is only an estimate. Could change in the future...
    
    enum CodingKeys: String, CodingKey {
        case parentId, postId, userId, content, upVoteCount, downVoteCount
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
