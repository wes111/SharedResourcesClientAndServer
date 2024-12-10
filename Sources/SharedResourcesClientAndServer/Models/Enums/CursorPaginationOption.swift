//
//  CursorPaginationOption.swift
//  Democracy
//
//  Created by Wesley Luntsford on 4/15/24.
//

import Foundation

public enum CursorPaginationOption: Sendable {
    case before(id: String)
    case after(id: String)
    case initial
}
