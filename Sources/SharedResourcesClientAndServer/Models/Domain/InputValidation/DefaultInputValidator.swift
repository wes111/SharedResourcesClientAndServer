//
//  EmptyRequirement.swift
//  Democracy
//
//  Created by Wesley Luntsford on 1/14/24.
//

import Foundation

public struct DefaultInputValidator: InputValidator {
    public static let fieldName: String = "Text"
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(1),
        .maxLength(.max)
    ]
}
