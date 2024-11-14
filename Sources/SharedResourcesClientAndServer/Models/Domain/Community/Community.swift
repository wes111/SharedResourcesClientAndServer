//
//  Community.swift
//  Democracy
//
//  Created by Wesley Luntsford on 2/26/23.
//

import Foundation

// The domain model.
public struct Community: Hashable, Sendable, Identifiable {
    public let id: String
    public let creatorId: String
    public let name: String
    public let descriptionText: String
    public let creationDate: Date
    // var representatives: [Candidate]
    public let memberCount: Int
    public var rules: [Rule]
    public var resources: [Resource]
    public var categories: [PostCategory]
    public var tags: [CommunityTag]
    public var tagline: String
    public var settings: CommunitySettings
    // var alliedCommunities: [Community]
}
