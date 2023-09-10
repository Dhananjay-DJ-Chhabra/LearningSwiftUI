//
//  SafeArea.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 10/09/23.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(radius: 10)
                        .frame(height: 200)
                        .padding(10)
                }
            }
        }
        .background(Color.red)
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}
