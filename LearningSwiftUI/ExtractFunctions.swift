//
//  ExtractFunctions.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 11/09/23.
//

import SwiftUI

struct ExtractFunctions: View {
    
    @State var labelText: String = "default string"
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            contentView
        }
    }
    
    var contentView: some View{
        VStack(spacing: 50){
            Text(labelText)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.largeTitle)
            
            Button {
                buttonPressedAction()
            } label: {
                Text("PRESS ME")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Color.black
                            .cornerRadius(10)
                    )
            }

        }
    }
    
    func buttonPressedAction(){
        labelText = "button pressed"
        backgroundColor = .yellow
    }
}

struct ExtractFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctions()
    }
}
