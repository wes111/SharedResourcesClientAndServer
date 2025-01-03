//
//  PostBodyInputValidator.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/22/24.
//

import Foundation
import SharedSwift

public enum PostBodyInputValidator: InputValidator {
    public static let maxCharacterCount: Int = 500
    
    public static let validationRules: [InputValidationRule] = [
        .minLength(2),
        .maxLength(Self.maxCharacterCount),
        .onlyCommonCharacterSet
    ]
}
