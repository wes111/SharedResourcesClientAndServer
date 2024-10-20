//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/13/24.
//

import Foundation

// The PostCategory object sent to the Appwrite database.
// Note that 'id' and 'postCount', are not part of this object.
public struct PostCategoryCreationRequest: Encodable, Sendable {
    public let communityId: String
    public let imageUrl: URL?
    public let name: String

    public init(name: String, imageUrl: URL?, communityId: String) {
        self.name = name
        self.imageUrl = imageUrl
        self.communityId = communityId
    }
}
