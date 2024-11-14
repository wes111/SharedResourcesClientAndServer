//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

public enum CommunityVisibility: String, Codable, CaseIterable, Sendable {
    case all
    case member
}

extension CommunityVisibility: Identifiable {
    public var id: String {
        switch self {
        case .all:
            "Anyone"
        case .member:
            "Members"
        }
    }
}
