//
//  ContentView.swift
//  BucketList
//
//  Created by Ahmed Juvale on 8/15/25.
//

import SwiftUI

struct User: Comparable, Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String

    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    let users = [
        User(firstName: "Richard", lastName: "Grayson"),
        User(firstName: "Jason", lastName: "Todd"),
        User(firstName: "Damian", lastName: "Wayne")
    ]
        .sorted {
            $0.lastName < $1.lastName
        }

    var body: some View {

    }
}

#Preview {
    ContentView()
}
