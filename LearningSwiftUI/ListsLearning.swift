//
//  ListsLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 17/09/23.
//

import SwiftUI

struct ListsLearning: View {
    
    @State var fruits: [String] = ["apple", "orange", "mango", "papaya", "coconut"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: deleteFruit)
                    .onMove(perform: moveFruit)
                }


            }
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    adButton
                }
            }
        }
    }
    var adButton: some View{
        Button("Add") {
            fruits.append("Strawberry")
        }
    }
    func moveFruit(indexSet: IndexSet, index: Int){
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
    func deleteFruit(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListsLearning_Previews: PreviewProvider {
    static var previews: some View {
        ListsLearning()
    }
}
