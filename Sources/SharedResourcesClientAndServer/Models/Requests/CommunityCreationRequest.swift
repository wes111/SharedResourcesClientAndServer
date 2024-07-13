//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

// The Community object sent to the Appwrite database.
// Note that 'id', 'creationDate', 'representatives' are not part of this object.
public struct CommunityCreationRequest: Encodable {
    public let creatorId: String
    public let name: String // Name is the same as Id.
    public let descriptionText: String
    public let rules: [RuleCreationRequest]
    public let resources: [ResourceCreationRequest]
    public let categories: [PostCategoryCreationRequest]
    public let tags: [String]
    public let tagline: String
    public let settings: CommunitySettingsCreationRequest
    
    public init(
        creatorId: String,
        name: String,
        descriptionText: String,
        rules: [RuleCreationRequest],
        resources: [ResourceCreationRequest],
        categories: [PostCategoryCreationRequest],
        tags: [String],
        tagline: String,
        settings: CommunitySettingsCreationRequest
    ) {
        self.creatorId = creatorId
        self.name = name
        self.descriptionText = descriptionText
        self.rules = rules
        self.resources = resources
        self.categories = categories
        self.tags = tags
        self.tagline = tagline
        self.settings = settings
    }
    
    enum CodingKeys: String, CodingKey {
        case creatorId, name, categories, tags, tagline, settings
        
        case rules = "rule"
        case resources = "resource"
        case descriptionText = "description"
    }
}