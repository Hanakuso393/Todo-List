//
//  CardView.swift
//  TodoList
//
//  Created by Ryan S on 7/7/24.
//

import SwiftUI

struct CardView: View {
    let item: Item
    var body: some View {
        Text(item.name)
            .font(.headline)
            
    }
}

#Preview {
    CardView(item: Item(name: "Cheese Burger", description: "test"))
}
