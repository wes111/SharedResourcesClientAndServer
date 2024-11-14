//
//  AppwriteQuery.swift
//  SharedResourcesClientAndServer
//
//  Created by Wesley Luntsford on 11/11/24.
//

import Foundation

public enum AppwriteQuery {
    case equal(key: String, value: String)
    case limit(Int)
    case isNull(key: String)
    case isNotNull(key: String)
    case cursorAfter(id: String)
    case cursorBefore(id: String)
    case greaterThanEqual(key: String, date: Date)
    case contains(key: String, values: [String])
    case orderAscending(key: String)
    case orderDescending(key: String)
}
