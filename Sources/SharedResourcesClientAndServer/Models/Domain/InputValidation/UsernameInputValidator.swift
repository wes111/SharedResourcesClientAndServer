//
//  UserNameValidation.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/4/23.
//

import Foundation

public struct UsernameInputValidator: InputValidator {
    public static let fieldName: String = "Username"
    public static let maxCharacterCount: Int = 36
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(Self.maxCharacterCount),
        .beginsWithAlphanumeric,
        .onlyUsernameCharacterSet
    ]
}