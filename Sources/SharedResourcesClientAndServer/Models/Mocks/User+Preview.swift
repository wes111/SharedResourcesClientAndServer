//
//  User+Preview.swift
//  Democracy
//
//  Created by Wesley Luntsford on 4/1/23.
//

import Foundation

public extension User {
    static var preview: User {
        User(
            accessedAt: Date.now,
            createdAt: Date.now,
            email: "bernie@gmail.com",
            emailVerification: true,
            id: "123",
            labels: [],
            name: "Bernie_Sanders",
            passwordUpdate: Date.now,
            phone: "",
            phoneVerification: false,
            prefs: [],
            registration: Date.now,
            status: true,
            updatedAt: Date.now
        )
    }
}
