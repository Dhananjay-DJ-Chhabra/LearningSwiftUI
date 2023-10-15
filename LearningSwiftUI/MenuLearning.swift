//
//  MenuLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 15/10/23.
//

import SwiftUI

struct MenuLearning: View {
    
    @State var bgColor: Color = Color.white
    
    var body: some View {
        VStack{
            Menu("Click to see menu options") {
                Button("Button 1") {
                    bgColor = .red
                }
                Button("Button 2") {
                    bgColor = .purple
                }
                Button("Button 3") {
                    bgColor = .green
                }
                Button("Button 4") {
                    bgColor = .yellow
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct MenuLearning_Previews: PreviewProvider {
    static var previews: some View {
        MenuLearning()
    }
}
