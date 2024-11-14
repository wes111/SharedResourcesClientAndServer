//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

public enum CommunityCommenter: String, Codable, CaseIterable, Sendable {
    case all
    case leadership
    case experts
}

extension CommunityCommenter: Identifiable {
    public var id: String {
        switch self {
        case .all:
            "Anyone"
        case .leadership:
            "Community Leadership"
        case .experts:
            "Community Experts"
        }
    }
}
