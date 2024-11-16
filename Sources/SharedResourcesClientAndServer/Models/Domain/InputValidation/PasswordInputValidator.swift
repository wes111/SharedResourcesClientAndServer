//
//  PasswordValidation.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/4/23.
//

import Foundation

public struct PasswordInputValidator: InputValidator {
    public static let fieldName: String = "Password"
    
    public static let validationRules: [InputValidationRule] = [
        .containsUppercaseLetter,
        .containsLowercaseLetter,
        .containsDigit,
        .containsSpecialCharacter,
        .minLength(8),
        .maxLength(128)
    ]
}
