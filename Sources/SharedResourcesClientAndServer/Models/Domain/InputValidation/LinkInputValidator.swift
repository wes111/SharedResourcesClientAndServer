//
//  PostLinkRequirement.swift
//  Democracy
//
//  Created by Wesley Luntsford on 1/2/24.
//

import Foundation

public struct LinkInputValidator: InputValidator {
    public static let fieldName: String = "Link"
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(9),
        .maxLength(500),
        .beginsWithHttps
    ]
}
