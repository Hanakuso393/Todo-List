//
//  ContentView.swift
//  TodoList
//
//  Created by Ryan S on 7/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [Item] = Item.sampleData
    @State private var isPresenting: Bool = false

    var body: some View {
        VStack {
            NavigationSplitView {
                List {
                    ForEach(items) { item in
                        NavigationLink {
                            Text(item.name)
                        } label: {
                            CardView(item: item)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        items.remove(atOffsets: indexSet)
                    })

                }
                .listStyle(.plain)
                .navigationTitle("Todo List")
                .toolbar {
                    Button {
                        isPresenting.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            } detail: {
                Text("Select an option")
            }
        }
        .sheet(isPresented: $isPresenting, content: {
            SheetView(isPresented: $isPresenting, items: $items)
                .padding()
                .presentationDetents([.fraction(0.3), .medium])
        })
    }
}

#Preview {
    ContentView()
}
