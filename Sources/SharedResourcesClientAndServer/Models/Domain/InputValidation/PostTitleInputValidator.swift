//
//  PostTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation

public enum PostTitleField: InputField {
    public typealias Validator = PostTitleInputValidator
    public static let fieldName: String = "Post Title"
    public static let maxCharacterCount: Int = 100
    public static var shouldTrimWhileTapping: Bool = false
}

public enum PostTitleInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(PostTitleField.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
