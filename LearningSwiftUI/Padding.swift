//
//  Padding.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 28/08/23.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello, World!")
                .font(.system(size: 25))
                .bold()
                .padding()
            
            Text("This is a description text withich is going to be mulyiline just to understand more about padding.")
                .padding()
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
                 .padding(.horizontal, 10)
        )
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
