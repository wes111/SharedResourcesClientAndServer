//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

// The CommunitySettings object received from the Appwrite database.
public struct CommunitySettingsDTO: Decodable {
    public var commenter: CommunityCommenter // Who can comment.
    public var content: CommunityContent // Adult or family content.
    public var government: CommunityGovernment // Elected or self-appointed.
    public var postApproval: CommunityPostApproval // Requires mod approval or automatic?
    public var poster: CommunityPoster // Who can post.
    public var visibility: CommunityVisibility // Who can view posts.
}
