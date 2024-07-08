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
}

extension Item {
    static let sampleData = [
        Item(name: "Apple"),
        Item(name: "Flour"),
        Item(name: "Chicken")
    ]
}
