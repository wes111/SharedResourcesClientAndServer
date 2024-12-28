//
//  PostBodyInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation

public enum PostBodyField: InputField {
    public typealias Validator = PostBodyInputValidator
    public static let fieldName: String = "Post Content"
    public static let maxCharacterCount: Int = 500
    public static var shouldTrimWhileTapping: Bool = false
}
public enum PostBodyInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(PostBodyField.maxCharacterCount),
        .onlyCommonCharacterSet
    ]
}
