//
//  Buttons.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 11/09/23.
//

import SwiftUI

struct Buttons: View {
    
    @State var labelText: String = "default text"
    
    var body: some View {
        
        VStack(spacing: 50){
            
            Text("Click any button and see text getting changed : \(labelText)")
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            // button 1
            Button {
                labelText = "button 1 pressed"
            } label: {
                Text("Button 1")
                    .tint(.red)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
            // button 2
            Button("Button 2") {
                labelText = "button 2 pressed"
            }
            
            // button 3
            Button {
                labelText = "button 3 pressed"
            } label: {
                Text("Button 3")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                    )
            }
            
            // button 4
            Button {
                self.labelText = "button 4 pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                            .font(.largeTitle)
                    }
            }
            
            // button 5
            Button {
                labelText = "button 5 pressed"
            } label: {
                Capsule()
                    .frame(width: 100, height: 50)
                    .overlay {
                        Text("Button 5")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
            }


            
        }

    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
