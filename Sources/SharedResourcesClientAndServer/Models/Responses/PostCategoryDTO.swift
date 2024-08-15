//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

public struct PostCategoryDTO: Decodable {
    public let communityId: String
    public let imageUrl: URL?
    public let name: String
    public let postCount: Int
    
    public let creationDate: Date
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case name, imageUrl, postCount, communityId
        
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
