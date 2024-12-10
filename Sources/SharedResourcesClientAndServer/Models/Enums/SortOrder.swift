//
//  SortOrder.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/21/24.
//

import Foundation

public enum SortOrder: CaseIterable, Sendable {
    case newest
    case oldest
    case topRated
    case lowRated
}

extension SortOrder: Identifiable {
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
