//
//  Email.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/14/24.
//

import Foundation

// Email, Password, PhoneNumber, Username, etc.
public struct ValidatableInput<T: InputValidator>: Codable, Sendable {
    public let value: String
    
    public init(value: String) throws {
        guard T.isValid(input: value) else {
            throw GenericError.defaultError
        }
        self.value = value
    }
}

public typealias PhoneNumber = ValidatableInput<PhoneNumberInputValidator>
public typealias Email = ValidatableInput<EmailInputValidator>
public typealias Username = ValidatableInput<UsernameInputValidator>
public typealias Password = ValidatableInput<PasswordInputValidator>
public typealias Link = ValidatableInput<LinkInputValidator>
public typealias DefaultInput = ValidatableInput<DefaultInputValidator>
