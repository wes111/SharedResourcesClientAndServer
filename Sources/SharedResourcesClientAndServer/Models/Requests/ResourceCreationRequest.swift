//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

// The Resource object sent to the Appwrite database.
// Note that 'id', is not part of this object.
public struct ResourceCreationRequest: Encodable {
    public let title: String
    public let description: String?
    public let link: URL?
    public let category: ResourceCategory
    public let communityId: String
    
    public init(title: String, description: String?, link: URL?, category: ResourceCategory, communityId: String) {
        self.title = title
        self.description = description
        self.link = link
        self.category = category
        self.communityId = communityId
    }
}
