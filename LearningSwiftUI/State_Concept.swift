//
//  State_Concept.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 11/09/23.
//

import SwiftUI

struct State_Concept: View {
          /*
                        
     @State is used to inform the View to watch the variable, even if var is used to declare a variable, var ,means making the variable mutable but @Stae means to inform View about watching the variable for reflecting potential changes in variable.
     */
    
    @State var labelText: String = "default text"
    @State var backgroundColor: Color = Color.red
    @State var count: Int = 0
    
    var body: some View {
        VStack(spacing: 50){
            Text(labelText) 
                .font(.largeTitle)
            
            Text("Count: \(count)")
                .font(.title)
            
            HStack(spacing: 50){
                Button("Button 1") {
                    labelText = "button 1 pressed"
                    backgroundColor = .green
                    count += 1
                }
                
                Button("Button 2") {
                    labelText = "button 2 pressed"
                    backgroundColor = .yellow
                    count -= 1
                }
            }
        }
        .foregroundColor(.white)
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

struct State_Concept_Previews: PreviewProvider {
    static var previews: some View {
        State_Concept()
    }
}
