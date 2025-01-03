//
//  PostTitleInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation
import SharedSwift

public enum PostTitleInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 100
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyTitleCharacterSet
    ]
}
