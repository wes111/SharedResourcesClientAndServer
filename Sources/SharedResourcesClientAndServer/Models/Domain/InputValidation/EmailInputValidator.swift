//
//  EmailValidation.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/4/23.
//

import Foundation

public enum EmailField: InputField {
    public typealias Validator = EmailInputValidator
    public static let fieldName: String = "Email"
    public static let maxCharacterCount: Int = 128
    public static var shouldTrimWhileTapping: Bool = true
}

public enum EmailInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .maxLength(EmailField.maxCharacterCount),
        .emailFormat
    ]
}
