//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

// The CommunitySettings object sent to the Appwrite database.
public struct CommunitySettingsCreationRequest: Encodable {
    public let government: CommunityGovernment
    public let content: CommunityContent
    public let visibility: CommunityVisibility
    public let poster: CommunityPoster
    public let commenter: CommunityCommenter
    public let postApproval: CommunityPostApproval
    
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
