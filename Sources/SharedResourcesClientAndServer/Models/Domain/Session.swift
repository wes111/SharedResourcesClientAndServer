//
//  Session.swift
//  Democracy
//
//  Created by Wesley Luntsford on 11/7/23.
//

import Foundation

public struct Session: Codable, Identifiable, Sendable {
    public let id: String
    public let createdAt: Date?
    public let userId: String
    public let expirationDate: Date
    public let provider: String // TODO: This should be an enum: "email", etc..
    public let providerUid: String
    public let providerAccessToken: String
    public let providerAccessTokenExpirationDate: Date?
    public let providerRefreshToken: String
    public let countryCode: String // TODO: Should be enum.
    public let current: Bool // Returns true if this is the current user session.
    
    public init(id: String, createdAt: Date?, userId: String, expirationDate: Date, provider: String, providerUid: String, providerAccessToken: String, providerAccessTokenExpirationDate: Date?, providerRefreshToken: String, countryCode: String, current: Bool) {
        self.id = id
        self.createdAt = createdAt
        self.userId = userId
        self.expirationDate = expirationDate
        self.provider = provider
        self.providerUid = providerUid
        self.providerAccessToken = providerAccessToken
        self.providerAccessTokenExpirationDate = providerAccessTokenExpirationDate
        self.providerRefreshToken = providerRefreshToken
        self.countryCode = countryCode
        self.current = current
    }
}
