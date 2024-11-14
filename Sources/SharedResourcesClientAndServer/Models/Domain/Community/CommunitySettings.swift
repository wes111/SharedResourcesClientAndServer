//
//  CommunitySettings.swift
//  Democracy
//
//  Created by Wesley Luntsford on 2/5/24.
//

import Foundation

public struct CommunitySettings: Hashable, Codable, Sendable {
    public var government: CommunityGovernment
    public var content: CommunityContent
    public var visibility: CommunityVisibility
    public var poster: CommunityPoster
    public var commenter: CommunityCommenter
    public var postApproval: CommunityPostApproval
    
    public init(
        government: CommunityGovernment = .democracy,
        content: CommunityContent = .familyFriendly,
        visibility: CommunityVisibility = .all,
        poster: CommunityPoster = .all,
        commenter: CommunityCommenter = .all,
        postApproval: CommunityPostApproval = .automatic
    ) {
        self.government = government
        self.content = content
        self.visibility = visibility
        self.poster = poster
        self.commenter = commenter
        self.postApproval = postApproval
    }
    
    public func toCreationRequest() -> CommunitySettingsCreationRequest {
        .init(
            government: government,
            content: content,
            visibility: visibility,
            poster: poster,
            commenter: commenter,
            postApproval: postApproval
        )
    }
}

extension CommunitySettingsDTO {
    func toCommunitySettings() -> CommunitySettings {
        .init(
            government: government,
            content: content,
            visibility: visibility,
            poster: poster,
            commenter: commenter,
            postApproval: postApproval
        )
    }
}

enum CommunitySetting: Identifiable {
    case governmentType, allowsAdultContent, visibility, poster, commenter, postApproval
    
    var id: Int {
        switch self {
        case .governmentType: 1
        case .allowsAdultContent: 2
        case .visibility: 3
        case .poster: 4
        case .commenter: 5
        case .postApproval: 6
        }
    }
}
