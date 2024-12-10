//
//  RepresentativeType.swift
//  Democracy
//
//  Created by Wesley Luntsford on 4/24/23.
//

import Foundation

public enum RepresentativeType: String, Codable, CaseIterable, CustomStringConvertible, Identifiable, Sendable {

    case mod, legislator, creator
    
    public var description: String {
        self.rawValue
    }
    
    public var id: String {
        description
    }
}
