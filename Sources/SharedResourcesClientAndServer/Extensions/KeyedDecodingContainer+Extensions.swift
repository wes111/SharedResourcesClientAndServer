//
//  File.swift
//  
//
//  Created by Wesley Luntsford on 6/29/24.
//

import Foundation

extension KeyedDecodingContainer {
    func decode(_ type: URL?.Type, forKey key: Key) throws -> URL? {
        let urlString = try decodeIfPresent(String.self, forKey: key)
        return urlString.flatMap { URL(string: $0) }
    }
}
