//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

public enum CommunityContent: String, Codable, CaseIterable, Sendable {
    case familyFriendly
    case adultContent
}

extension CommunityContent: Identifiable {
    public var id: String {
        switch self {
        case .familyFriendly:
            "Family Friendly"
        case .adultContent:
            "Adult Content Allowed"
        }
    }
}
