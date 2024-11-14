//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

public enum CommunityGovernment: String, Codable, CaseIterable, Sendable {
    case autocracy
    case democracy
}

extension CommunityGovernment: Identifiable {
    public var id: String {
        switch self {
        case .autocracy:
            "Autocracy"
        case .democracy:
            "Democracy"
        }
    }
}
