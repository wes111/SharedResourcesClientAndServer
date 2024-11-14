//
//  Candidate.swift
//  Democracy
//
//  Created by Wesley Luntsford on 3/20/23.
//

import Foundation

//struct Candidate: Hashable, Identifiable, Codable {
//    let id: String // <-- link to user.
//    let userName: String
//    let firstName: String?
//    let lastName: String?
//    let imageName: String?
//    var upVotes: Int
//    var downVotes: Int
//    var score: Int {
//        upVotes - downVotes
//    }
//    let communityId: String
//    let isRepresentative: Bool // This will be determined by server?
//    let summary: String
//    let externalLink: String?
//    let repType: RepresentativeType
//    let badges: [CandidateBadge]
//}

// Each Candidate belongs to one community, so a user can have multiple candid..
// We probably need to add a User object and have that embedded in here.
public struct Candidate: Hashable, Identifiable, Codable, Sendable {
    public let id: String // <-- link to user.
    public let campaignSlogan: String
    public let userName: String
    public let candidateName: String
    public let imageName: String?
    public var upVotes: Int
    public var downVotes: Int
    public var score: Int
    public let communityId: String
    public let isRepresentative: Bool // This will be determined by server?
    public let summary: String
    public let externalLink: URL?
    public let repType: RepresentativeType
    public let badges: [CandidateBadge]
}
