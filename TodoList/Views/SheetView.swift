//
//  SheetView.swift
//  TodoList
//
//  Created by Ryan S on 7/7/24.
//

import SwiftUI

struct SheetView: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @Binding var isPresented: Bool
    @Binding var items: [Item]
    var body: some View {
        VStack {
            
                Section("Enter item info") {
                    TextField(text: $title, prompt: Text("Title")) {
                        Text("Title")
                    }
                    TextField(text: $description, prompt: Text("Description"), axis: .vertical) {
                        Text("Description")
                    }
                    .lineLimit(5)
                }
                Button {
                    print("Button pressed")
                    isPresented.toggle()
                } label: {
                    Text("Add item")
                }

        }
    }
}

//#Preview {
//    SheetView()
//}
