//
//  ResourceCategory.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 10/23/24.
//

import Foundation

public enum ResourceCategory: String, Codable, CaseIterable, Sendable { // TODO: Add more categories?
    case book
    case website
    case magazine
    case movie
}

extension ResourceCategory: Identifiable {
    public var id: String {
        switch self {
        case .book:
            "Book"
        case .website:
            "Website"
        case .magazine:
            "Magazine"
        case .movie:
            "Movie"
        }
    }
}
