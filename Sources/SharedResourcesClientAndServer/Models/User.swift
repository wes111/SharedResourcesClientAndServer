//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/9/23.
//

import Foundation

public struct User: Codable, Identifiable {
    public let accessedAt: Date?
    public let createdAt: Date?
    public let email: String
    public let emailVerification: Bool
    public let id: String
    public let labels: [String]
    public let name: String
    public let passwordUpdate: Date?
    public let phone: String
    public let phoneVerification: Bool
    public let prefs: [String] // TODO: ...
    public let registration: Date?
    public let status: Bool
    public let updatedAt: Date?
    
    public init(
        accessedAt: Date?,
        createdAt: Date?,
        email: String,
        emailVerification: Bool,
        id: String,
        labels: [String],
        name: String,
        passwordUpdate: Date?,
        phone: String,
        phoneVerification: Bool,
        prefs: [String],
        registration: Date?,
        status: Bool,
        updatedAt: Date?
    ) {
        self.accessedAt = accessedAt
        self.createdAt = createdAt
        self.email = email
        self.emailVerification = emailVerification
        self.id = id
        self.labels = labels
        self.name = name
        self.passwordUpdate = passwordUpdate
        self.phone = phone
        self.phoneVerification = phoneVerification
        self.prefs = prefs
        self.registration = registration
        self.status = status
        self.updatedAt = updatedAt
    }
}
