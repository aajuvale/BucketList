//
//  Result.swift
//  BucketList
//
//  Created by Ahmed Juvale on 8/17/25.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable, Comparable, Hashable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?

    var description: String {
        terms?["descripotion"]?.first ?? "No further information"
    }
    
    static func <(lhs: Page, rhs: Page) -> Bool {
        lhs.title < rhs.title
    }
}
