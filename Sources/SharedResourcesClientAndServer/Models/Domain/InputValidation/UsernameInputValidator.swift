//
//  UserNameValidation.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/4/23.
//

import Foundation

public enum UsernameField: InputField {
    public typealias Validator = UsernameInputValidator
    public static let fieldName: String = "Username"
    public static let maxCharacterCount: Int = 36
    public static var shouldTrimWhileTapping: Bool = true
}

public enum UsernameInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(UsernameField.maxCharacterCount),
        .beginsWithAlphanumeric,
        .onlyUsernameCharacterSet
    ]
}
