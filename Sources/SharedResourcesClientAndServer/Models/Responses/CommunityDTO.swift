//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

// Notes:
// 1.) A community has leaders. For the first 30? days the creator is the leader and can appoint other
//     leaders. After that time is when the voting starts?
// Banned users?

// The Community object received from the Appwrite database.
public struct CommunityDTO: Decodable {
    public var tags: [CommunityTagDTO]
    public let creatorId: String
    public let descriptionText: String
    public let memberCount: Int
    public let name: String
    public var postCategories: [PostCategoryDTO]
    public var resources: [ResourceDTO]
    public var rules: [RuleDTO]
    public var settings: CommunitySettingsDTO
    public var tagline: String
    
    public let creationDate: Date
    public let id: String
    public var alliedCommunities: [CommunityDTO]? // TODO: Add as attribute in Appwrite Database.
    
    
    enum CodingKeys: String, CodingKey {
        case creatorId, name, memberCount, tagline,
             alliedCommunities, settings
        
        case id = "$id"
        case descriptionText = "description"
        case postCategories = "postCategory"
        case creationDate = "$createdAt"
        case rules = "rule"
        case resources = "resource"
        case tags = "communityTag"
    }
}
