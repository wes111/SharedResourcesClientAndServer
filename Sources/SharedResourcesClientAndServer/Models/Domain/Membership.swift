//
//  Membership.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/24/24.
//

import Foundation

// The domain model.
public struct Membership: Hashable, Sendable {
    public let id: String
    public let joinDate: Date
    public let community: Community
    public let userId: String
}
