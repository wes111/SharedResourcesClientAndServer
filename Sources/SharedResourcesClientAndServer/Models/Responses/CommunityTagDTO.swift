//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/30/24.
//

import Foundation

public struct CommunityTagDTO: Decodable {
    public let id: String
    public let communityId: String
    public let name: String
    public let creationDate: Date
    
    enum CodingKeys: String, CodingKey {
        case communityId, name
        case id = "$id"
        case creationDate = "$createdAt"
    }
}
