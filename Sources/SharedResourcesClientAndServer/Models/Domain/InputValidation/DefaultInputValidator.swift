//
//  EmptyRequirement.swift
//  Democracy
//
//  Created by Wesley Luntsford on 1/14/24.
//

import Foundation

public enum DefaultField: InputField {
    public typealias Validator = DefaultInputValidator
    public static let fieldName: String = "Text"
    public static let maxCharacterCount: Int = .max
    public static var shouldTrimWhileTapping: Bool = false
}

public enum DefaultInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(DefaultField.maxCharacterCount),
        .onlyCommonCharacterSet
    ]
}
