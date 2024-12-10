//
//  CandidateBadge.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/2/24.
//

public enum CandidateBadge: Codable, Identifiable, Sendable {
    public var id: CandidateBadge {
        self
    }
    
    case currentRep
    case pastRep
    case founder
    case candidate
    case topContributer
    case popular
    case oneYearMember
}
