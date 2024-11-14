//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

// The Rule object received from the Appwrite database.
// In Appwrite, a Rule has a 1-way relationship with Community.
public struct RuleDTO: Decodable {
    public let communityId: String
    public let description: String
    public let title: String
    
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case title, description, communityId
        case id = "$id"
    }
}

public extension RuleDTO {
    func toRule() -> Rule {
        .init(
            id: id,
            title: title,
            description: description,
            communityId: communityId
        )
    }
}
