//
//  CommunityTagInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/20/24.
//

import Foundation

public enum CommunityTagField: InputField {
    public typealias Validator = CommunityTagInputValidator
    public static let fieldName: String = "Tags"
    public static let maxCharacterCount: Int = 25
    public static var shouldTrimWhileTapping: Bool = true
}

public enum CommunityTagInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(CommunityTagField.maxCharacterCount),
        .onlyAlphanumeric
    ]
}
