//
//  CommunityTagCreationRequest.swift
//  
//
//  Created by Wesley Luntsford on 7/30/24.
//

import Foundation

// The CommunityTag object sent to the Appwrite database.
// Note that 'id', is not part of this object.
public struct CommunityTagCreationRequest: Encodable, Sendable {
    public let communityId: String
    public let name: String
    
    public init(communityId: String, name: String) {
        self.communityId = communityId
        self.name = name
    }
}
