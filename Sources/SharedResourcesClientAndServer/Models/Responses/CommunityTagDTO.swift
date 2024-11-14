//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/30/24.
//

import Foundation

public struct CommunityTagDTO: Decodable {
    public let communityId: String
    public let name: String
    
    public let creationDate: Date
    public let id: String
    
    enum CodingKeys: String, CodingKey {
        case communityId, name
        case id = "$id"
        case creationDate = "$createdAt"
    }
}

public extension CommunityTagDTO {
    func toCommunityTag() -> CommunityTag {
        .init(id: id, communityId: communityId, name: name, creationDate: creationDate)
    }
}
