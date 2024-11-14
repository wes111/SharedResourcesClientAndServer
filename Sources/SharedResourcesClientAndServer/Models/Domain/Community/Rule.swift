//
//  Rule.swift
//  Democracy
//
//  Created by Wesley Luntsford on 2/27/24.
//

import Foundation

public struct Rule: Equatable, Hashable, Codable, Identifiable, Sendable {
    public let id: String
    public let title: String
    public let description: String
    public let communityId: String
    
    public init(id: String, title: String, description: String, communityId: String) {
        self.id = id
        self.title = title
        self.description = description
        self.communityId = communityId
    }
    
    public func toCreationRequest() -> RuleCreationRequest {
        .init(communityId: communityId, title: title, description: description)
    }
}
