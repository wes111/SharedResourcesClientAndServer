//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/9/23.
//

import Foundation

struct User: Codable, Identifiable {
    let accessedAt: Date?
    let createdAt: Date?
    let email: String
    let emailVerification: Bool
    let id: String
    let labels: [String]
    let name: String
    let passwordUpdate: Date?
    let phone: String
    let phoneVerification: Bool
    let prefs: [String] // TODO: ...
    let registration: Date?
    let status: Bool
    let updatedAt: Date?
    
    init(
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
