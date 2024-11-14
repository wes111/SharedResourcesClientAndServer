//
//  MembershipDTO.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 10/23/24.
//

import Foundation

// The Membership object received from the Appwrite database.
public struct MembershipDTO: Decodable {
    public let id: String
    public let joinDate: Date
    public let community: CommunityDTO
    public let userId: String
    
    enum CodingKeys: String, CodingKey {
        case community, userId
        case id = "$id"
        case joinDate = "$createdAt"
    }
}

extension MembershipDTO: DomainConvertible {
    public static let collection: Collection = .membership
    
    public func toDomain() -> Membership {
        .init(
            id: id,
            joinDate: joinDate,
            community: community.toDomain(),
            userId: userId
        )
    }
}
