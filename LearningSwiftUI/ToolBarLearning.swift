//
//  ToolBarLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI

struct ToolBarLearning: View {
    
    @State var stackPaths: [String] = []
    
    @State var textfiled: String = ""
    
    var body: some View {
        NavigationStack(path: $stackPaths){
            ScrollView{
                VStack{
                    
                    TextField("Placeholder....", text: $textfiled)
                        .padding()
                        .background(
                            Color.gray.opacity(0.5)
                                .cornerRadius(10)
                        )
                        .padding()
                    
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Toolbar Learning")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: String.self, destination: { value in
                Text("new screen: \(value)")
            })
            .toolbarTitleMenu(content: {
                Button("Screen 1") {
                    stackPaths.append("screen 1")
                }
                Button("Screen 2") {
                    stackPaths.append("screen 2")
                }
            })
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "heart.fill")
                }
//                ToolbarItem(placement: .principal) {
//                    Image(systemName: "flame.fill")
//                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "gear")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "firewall.fill")
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "eraser")
                }
            }
        }
    }
}

struct ToolBarLearning_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarLearning()
    }
}
