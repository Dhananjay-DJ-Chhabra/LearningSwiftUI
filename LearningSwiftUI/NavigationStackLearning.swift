//
//  NavigationStackLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI
/*
 Navigation Stack is better than Navigation View becaouse it suppoerts lazy oading of the upcoming views which means that it does not initialise the upcoming views before even launching them. However in case of Navigation View, it initialises all the upcominmg views at the beginning altogether.
 */
struct NavigationStackLearning: View {
    
    let fruits: [String] = ["apple", "orange", "banana"]
    
    @State var stackPath: [String] = ["strawberry"]
    
    var body: some View {
        NavigationStack(path: $stackPath){
            ScrollView{
                VStack{
                    
                    Button {
                        stackPath.append(contentsOf: ["coconut", "watermelon", "guava"])
                    } label: {
                        Text("Super Segue")
                    }

                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                        .padding()
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Go to \(x) screen")
                        }
                        .padding()
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationDestination(for: Int.self, destination: { x in
                Text("welcome to \(x) screen")
            })
            .navigationDestination(for: String.self, destination: { y in
                Text("welcome to \(y) screen")
            })
            .navigationTitle("Navigation Stack")
        }
    }
}

struct NavigationStackLearning_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackLearning()
    }
}
