//
//  CandidateTag.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

import Foundation

// The domain model.
public struct CandidateTag: Hashable, Codable, Identifiable, Sendable {
    public let id: String // TODO: `id` and `name` should be the same, b/c names must be unique
    public let communityId: String
    public let name: String
    public let creationDate: Date
}
