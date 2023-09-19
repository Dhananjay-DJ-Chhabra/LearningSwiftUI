//
//  Binding.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 11/09/23.
//

import SwiftUI

struct Binding_Concept: View {
    
    @State var backgroundColor: Color = .orange
    @State var titleText: String = "default title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            contentView(titleText: $titleText, backgroundColor: $backgroundColor)
        }
    }
}

struct contentView: View {
    
    /*
     @Binding variables will act as reference for passed variables outside the view.
     */
    
    @Binding var titleText: String
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    
    var body: some View{
        VStack(spacing: 50){
            Text(titleText)
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Button {
                backgroundColor = .pink
                titleText = "New Title !!!!"
                buttonColor = .yellow
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.title2)
                    .padding()
                    .background(
                        buttonColor
                            .cornerRadius(10)
                    )
            }

        }
    }
}

struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        Binding_Concept()
    }
}
