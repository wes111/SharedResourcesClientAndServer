//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

public struct PostCategoryDTO: Decodable {
    public let id: String
    public let name: String
    public let imageUrl: URL?
    public let postCount: Int
    public let communityId: String
    public let creationDate: Date
    
    enum CodingKeys: String, CodingKey {
        case name, imageUrl, postCount, communityId
        
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
