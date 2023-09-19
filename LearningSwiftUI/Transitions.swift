//
//  Transitions.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 13/09/23.
//

import SwiftUI

struct Transitions: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height/2)
                        .opacity(showView ? 1.0 : 0.0)
                        .transition(.asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: .opacity.animation(.easeInOut(duration: 1.0))))
                        .animation(.easeInOut)
                        
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Transitions()
        }
    }
}
