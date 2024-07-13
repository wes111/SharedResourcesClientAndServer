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
    public let id: String
    public let creatorId: String
    public let name: String
    public let descriptionText: String
    public let creationDate: Date
    //public var representatives: [Candidate]? // TODO: Add as attribute in Appwrite Database.
    public let memberCount: Int
    public var rules: [RuleDTO]
    public var resources: [ResourceDTO]
    public var postCategories: [PostCategoryDTO]
    public var tags: [String]
    public var tagline: String
    public var alliedCommunities: [CommunityDTO]? // TODO: Add as attribute in Appwrite Database.
    public var settings: CommunitySettingsDTO
    
    enum CodingKeys: String, CodingKey {
        case creatorId, name, memberCount, postCategories, tags, tagline,
             alliedCommunities, settings
        
        case id = "$id"
        case descriptionText = "description"
        case creationDate = "$createdAt"
        case rules = "rule"
        case resources = "resource"
    }
}
