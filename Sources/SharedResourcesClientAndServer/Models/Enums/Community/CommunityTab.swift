//
//  CommunityTab.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

public enum CommunityTab: String, CaseIterable {
    case feed
    case info
    case archive
    case vote
    case manage
}

extension CommunityTab: Identifiable {
    public var id: String {
        switch self {
        case .feed: "Feed"
        case .info: "Info"
        case .archive: "Archive"
        case .vote: "Vote"
        case .manage: "Manage"
        }
    }
}
