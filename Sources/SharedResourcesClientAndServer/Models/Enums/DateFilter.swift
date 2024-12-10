//
//  DateFilter.swift
//  Democracy
//
//  Created by Wesley Luntsford on 7/21/24.
//

import Foundation

public enum DateFilter: CaseIterable, Sendable {
    case day
    case week
    case month
    case year
    case noFilter
}

extension DateFilter: Identifiable {
    public var id: String {
        switch self {
        case .day:
            "Day"
        case .week:
            "Week"
        case .month:
            "Month"
        case .year:
            "Year"
        case .noFilter:
            "All Time"
        }
    }
}
