//
//  Resource.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/4/24.
//

import Foundation

// Domain Object.
public struct Resource: Hashable, Codable, Identifiable, Sendable {
    public let id: String
    public let title: String
    public let description: String?
    public let link: URL?
    public let category: ResourceCategory
    public let communityId: String
    
    public init(id: String, title: String, description: String?, link: URL?, category: ResourceCategory, communityId: String) {
        self.id = id
        self.title = title
        self.description = description
        self.link = link
        self.category = category
        self.communityId = communityId
    }
    
    public func toCreationRequest() -> ResourceCreationRequest {
        .init(
            title: title,
            description: description,
            link: link,
            category: category,
            communityId: communityId
        )
    }
}
