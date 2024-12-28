//
//  PasswordValidation.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/4/23.
//

import Foundation

public enum PasswordField: InputField {
    public typealias Validator = PasswordInputValidator
    public static let fieldName: String = "Password"
    public static let maxCharacterCount: Int = 128
    public static var shouldTrimWhileTapping: Bool = true
}

public enum PasswordInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .containsUppercaseLetter,
        .containsLowercaseLetter,
        .containsDigit,
        .containsSpecialCharacter,
        .minLength(8),
        .maxLength(PasswordField.maxCharacterCount),
        .onlyCommonCharacterSet
    ]
}
