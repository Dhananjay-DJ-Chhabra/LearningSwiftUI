//
//  ColorPicker.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 20/09/23.
//

import SwiftUI

struct ColorPickerLearning: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(edges: .all)
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .padding(50)
                .foregroundColor(.white)
        }
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerLearning()
    }
}
