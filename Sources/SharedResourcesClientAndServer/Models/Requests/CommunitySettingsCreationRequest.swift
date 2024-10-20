//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

// The CommunitySettings object sent to the Appwrite database.
public struct CommunitySettingsCreationRequest: Encodable, Sendable {
    public var commenter: CommunityCommenter
    public var content: CommunityContent
    public var government: CommunityGovernment
    public var postApproval: CommunityPostApproval
    public var poster: CommunityPoster
    public var visibility: CommunityVisibility
    
    public init(
        government: CommunityGovernment,
        content: CommunityContent,
        visibility: CommunityVisibility,
        poster: CommunityPoster,
        commenter: CommunityCommenter,
        postApproval: CommunityPostApproval
    ) {
        self.government = government
        self.content = content
        self.visibility = visibility
        self.poster = poster
        self.commenter = commenter
        self.postApproval = postApproval
    }
}
