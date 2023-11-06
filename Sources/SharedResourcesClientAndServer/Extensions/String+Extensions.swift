//
//  File.swift
//  Created by Wesley Luntsford on 11/5/23.
//

import Foundation

public extension String {
    func decode<T: Decodable>() throws -> T {
        let data = self.data(using: .utf8)!
        return try JSONDecoder().decode(T.self, from: data)
    }
}
