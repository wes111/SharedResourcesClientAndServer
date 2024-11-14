//
//  PostCategory.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

public struct PostCategory: Hashable, Codable, Identifiable, Sendable {
    public let id: String
    public let name: String
    public let imageUrl: URL?
    public let postCount: Int
    public let communityId: String
    public let creationDate: Date
}
