//
//  PostDTO.swift
//
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

// The Post object received from the Appwrite database.
public struct PostDTO: Decodable {
    public let id: String
    public let title: String
    public let body: String
    public let link: URL?
    public let categoryName: String
    public let tags: [String]
    public let userId: String
    public let communityId: String
    public let creationDate: Date
    public let approvedDate: Date?
    public let upVoteCount: Int
    public let downVoteCount: Int
    public let commentCount: Int
    
    enum CodingKeys: String, CodingKey {
        case title, body, link, categoryName, tags, userId, communityId, approvedDate, upVoteCount,
             downVoteCount, commentCount
        
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
