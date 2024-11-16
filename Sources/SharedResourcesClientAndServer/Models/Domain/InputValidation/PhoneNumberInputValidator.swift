//
//  PhoneValidationError.swift
//  Democracy
//
//  Created by Wesley Luntsford on 10/13/23.
//

import Foundation

public struct PhoneNumberInputValidator: InputValidator {
    public static let fieldName: String = "Phone Number"
    
    public static let validationRules: [InputValidationRule] = [
        .maxLength(14),
        .minLength(14),
        .phoneNumberFormat
    ]
}

// TODO: Might need this regex?
/// Must be 10 digits long.
// "\\(\\d{3}\\) \\d{3}-\\d{4}"
