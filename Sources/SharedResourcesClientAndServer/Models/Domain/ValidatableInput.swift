//
//  Email.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/14/24.
//

import Foundation

public struct Link: Codable, Sendable, Hashable {
    public let value: URL
    
    public init(value: String) throws {
        guard LinkInputValidator.isValid(input: value), let url = URL(string: value) else {
            throw GenericError.defaultError
        }
        self.value = url
    }
}

// Email, Password, PhoneNumber, Username, etc.
public struct ValidatableInput<T: InputValidator>: Codable, Sendable, Hashable {
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
public typealias DefaultInput = ValidatableInput<DefaultInputValidator>
public typealias CommunityName = ValidatableInput<CommunityNameInputValidator>
public typealias CommunityTagline = ValidatableInput<CommunityTaglineInputValidator>
public typealias CommunityDescription = ValidatableInput<CommunityDescriptionInputValidator>
public typealias CommunityCategory = ValidatableInput<CommunityCategoryInputValidator>
public typealias CommunityTagInput = ValidatableInput<CommunityTagInputValidator>
public typealias CommunityRuleDescriptionInput = ValidatableInput<CommunityRuleDescriptionInputValidator>
public typealias CommunityRuleTitleInput = ValidatableInput<CommunityRuleTitleInputValidator>
public typealias CommunityResourceTitleInput = ValidatableInput<CommunityResourceTitleInputValidator>
public typealias CommunityResourceDescriptionInput = ValidatableInput<CommunityResourceDescriptionInputValidator>
public typealias PostTitleInput = ValidatableInput<PostTitleInputValidator>
public typealias PostBodyInput = ValidatableInput<PostBodyInputValidator>
