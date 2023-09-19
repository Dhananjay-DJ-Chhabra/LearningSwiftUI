//
//  TernaryOperator.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 13/09/23.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE !!!!" : "ENDING STATE.")
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200: 50,
                       height: isStartingState ? 400 : 50)
            
            Spacer()
        }
        .padding()
    }
}

struct TernaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperator()
    }
}
