//
//  CandidateTag+Preview.swift
//  Democracy
//
//  Created by Wesley Luntsford on 8/20/24.
//

import Foundation

public extension CandidateTag {
    static let preview = Self.previewArray.first!
    
    static let previewArray: [CandidateTag] = [
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Democrat",
            creationDate: .now
        ),
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Republican",
            creationDate: .now
        ),
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Communist",
            creationDate: .now
        ),
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Libertarian",
            creationDate: .now
        ),
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Anarchist",
            creationDate: .now
        ),
        .init(
            id: UUID().uuidString,
            communityId: "",
            name: "Environmentalist",
            creationDate: .now
        ),
    ]
}
