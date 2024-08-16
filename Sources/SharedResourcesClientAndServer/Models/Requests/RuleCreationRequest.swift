//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

// The Rule object sent to the Appwrite database.
// Note that 'id', is not part of this object.
public struct RuleCreationRequest: Encodable {
    public let communityId: String
    public let description: String
    public let title: String
    
    public init(communityId: String, title: String, description: String) {
        self.communityId = communityId
        self.title = title
        self.description = description
    }
}
