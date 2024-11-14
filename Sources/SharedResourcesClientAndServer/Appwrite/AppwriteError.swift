//
//  AppwriteError.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/11/24.
//

import Foundation

// TODO: This is an open Appwrite feature: https://github.com/appwrite/sdk-generator/issues/698
public enum AppwriteError: String, Error {
    case noSession = "User (role: guests) missing scope (account)"
    case userNotFoundError = "User with the requested ID could not be found."
}
