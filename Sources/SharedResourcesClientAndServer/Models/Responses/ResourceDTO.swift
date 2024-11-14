//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

// The Resource object received from the Appwrite database.
public struct ResourceDTO: Decodable {
    public let category: ResourceCategory
    public let communityId: String
    public let description: String?
    public let link: URL?
    public let title: String
    
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case title, description, link, category, communityId
        case id = "$id"
    }
}

public extension ResourceDTO {
    func toResource() -> Resource {
        .init(
            id: id,
            title: title,
            description: description,
            link: link,
            category: category,
            communityId: communityId
        )
    }
}
