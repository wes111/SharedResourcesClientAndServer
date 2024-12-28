//
//  CommunityCategoryInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public enum CommunityCategoryField: InputField {
    public typealias Validator = CommunityCategoryInputValidator
    public static let fieldName: String = "Categories"
    public static let maxCharacterCount: Int = 50
    public static var shouldTrimWhileTapping: Bool = false
}

public enum CommunityCategoryInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(CommunityCategoryField.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
