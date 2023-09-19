//
//  Conditionals.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 12/09/23.
//

import SwiftUI

struct Conditionals: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 50){
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            Button("Loading Button: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle{
                Rectangle()
                    .frame(width: 200, height: 100)
            }
            if isLoading  {
                ProgressView()
            }
           
            Spacer()
        }
    }
}

struct Conditionals_Previews: PreviewProvider {
    static var previews: some View {
        Conditionals()
    }
}
