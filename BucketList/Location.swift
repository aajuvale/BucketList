//
//  Location.swift
//  BucketList
//
//  Created by Ahmed Juvale on 8/16/25.
//

import Foundation

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
}
