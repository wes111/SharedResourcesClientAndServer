//
//  SortOrder.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/21/24.
//

import Foundation

public enum SortOrderOption: CaseIterable, Sendable {
    case newest
    case oldest
    case topRated
    case lowRated
}

extension SortOrderOption: Identifiable {
    public var id: String {
        switch self {
        case .newest:
            "Newest"
        case .oldest:
            "Oldest"
        case .topRated:
            "Top Rated"
        case .lowRated:
            "Lowest Rated"
        }
    }
}
