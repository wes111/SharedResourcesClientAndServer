//
//  CommunityTag+Preview.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

import Foundation

public extension CommunityTag {
    static var previewArray: [CommunityTag] {
        [
            .init(id: "", communityId: "", name: "Dog", creationDate: .now),
            .init(id: "", communityId: "", name: "Chicken", creationDate: .now),
            .init(id: "", communityId: "", name: "Cat", creationDate: .now),
            .init(id: "", communityId: "", name: "Elephant", creationDate: .now),
            .init(id: "", communityId: "", name: "Zebra", creationDate: .now),
            .init(id: "", communityId: "", name: "Mouse", creationDate: .now),
        ]
    }
}
