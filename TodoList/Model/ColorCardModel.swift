//
//  ColorCardModel.swift
//  TodoList
//
//  Created by Ryan S on 7/7/24.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var name: String
    var description: String
}

extension Item {
    static let sampleData = [
        Item(name: "Apple", description: "Test"),
        Item(name: "Flour", description: "test"),
        Item(name: "Chicken", description: "Test")
    ]
}
