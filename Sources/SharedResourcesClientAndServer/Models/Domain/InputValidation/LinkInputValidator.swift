//
//  PostLinkRequirement.swift
//  Democracy
//
//  Created by Wesley Luntsford on 1/2/24.
//

import Foundation

public enum LinkField: InputField {
    public typealias Validator = LinkInputValidator
    public static let fieldName: String = "Link"
    public static let maxCharacterCount: Int = 500
    public static var shouldTrimWhileTapping: Bool = true
}

public enum LinkInputValidator: InputValidator {
    public static let validationRules: [InputValidationRule] = [
        .minLength(9),
        .maxLength(LinkField.maxCharacterCount),
        .beginsWithHttps
    ]
}
