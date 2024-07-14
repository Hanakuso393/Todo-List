//
//  ItemView.swift
//  TodoList
//
//  Created by Ryan S on 7/14/24.
//

import SwiftUI

struct ItemView: View {
    var title: String
    var description: String
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                        Text(title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text(description)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ItemView(title: "Test", description: "Test Description that is super long and this will most likely we how long the descriptions are. ")
}
