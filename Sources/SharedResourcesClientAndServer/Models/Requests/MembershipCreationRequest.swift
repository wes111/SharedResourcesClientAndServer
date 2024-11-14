//
//  MembershipCreationRequest.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 10/23/24.
//

// The Membership object sent to the Appwrite database.
// Note that id, joinDate, and
public struct MembershipCreationRequest: Encodable {
    public let community: String // TODO: Is this right?
    public let userId: String
    public let communityId: String
    
    public init(userId: String, communityId: String) {
        self.community = communityId
        self.userId = userId
        self.communityId = communityId
    }
}

extension MembershipCreationRequest: Creatable {
    public typealias ResponseModel = MembershipDTO
    
    public var creationId: String? {
        nil
    }
}
