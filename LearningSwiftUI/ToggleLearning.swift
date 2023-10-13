//
//  ToggleLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct ToggleLearning: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Status: ")
                    Text(isToggleOn ? "Online" : "Offline")
                        .foregroundColor(isToggleOn ? .green : .red)
                }
                .font(.title2)
                
                Toggle(isOn: $isToggleOn) {
                    Text("Toggle status")
                }
                
                Spacer()
            }
            .padding(50)
            
            .navigationTitle("Toggle Learning")
        }
    }
}

struct ToggleLearning_Previews: PreviewProvider {
    static var previews: some View {
        ToggleLearning()
    }
}
