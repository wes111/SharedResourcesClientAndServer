//
//  CommunityTag.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/30/24.
//

import Foundation

// The domain model.
public struct CommunityTag: Hashable, Codable, Identifiable, Sendable {
    public let id: String // TODO: `id` and `name` should be the same, b/c names must be unique
    public let communityId: String
    public let name: String
    public let creationDate: Date
}
