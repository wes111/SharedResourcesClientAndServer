//
//  CommunitiesCategory.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

// On the `CommunitiesTabMainView`, these represent the categories that
// a user can select to view a list of communities
public enum CommunitiesCategory: String, CaseIterable {
    case isMemberOf
    case isLeaderOf
    case topCommunities
    case random
    case recommendations
}

extension CommunitiesCategory: Identifiable {
    public var id: String {
        switch self {
        case .isMemberOf: "Member"
        case .isLeaderOf: "Leader"
        case .topCommunities: "Top"
        case .random: "Discover"
        case .recommendations: "Recommendations"
        }
    }
}
