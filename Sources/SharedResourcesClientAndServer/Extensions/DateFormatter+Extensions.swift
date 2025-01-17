//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 12/9/23.
//

import Foundation

//public extension ISO8601DateFormatter {
//    static let sharedWithFractionalSeconds: ISO8601DateFormatter = {
//        let formatter = ISO8601DateFormatter()
//        formatter.formatOptions = [.withFractionalSeconds, .withInternetDateTime]
//        return formatter
//    }()
//}

public extension DateFormatter {
    static let sharedWithFractionalSeconds: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX") // Ensure consistent formatting
        formatter.timeZone = TimeZone.current // Use the current time zone or specify one
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX" // Equivalent to .withFractionalSeconds and .withInternetDateTime
        return formatter
    }()
}
