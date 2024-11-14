//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 7/11/24.
//

import Foundation

public enum CommunityPostApproval: String, Codable, CaseIterable, Sendable {
    case automatic
    case mod
}

extension CommunityPostApproval: Identifiable {
    public var id: String {
        switch self {
        case .automatic:
            "Automatic"
        case .mod:
            "Mod Approval"
        }
    }
}
