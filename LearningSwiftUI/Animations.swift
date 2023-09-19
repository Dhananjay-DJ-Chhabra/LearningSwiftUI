//
//  Animations.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 13/09/23.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isAnimated.description)") {
                withAnimation(Animation.default.speed(0.5).repeatCount(6)) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 300 : 100,
                       height: isAnimated ? 300 : 100)
                .rotationEffect(Angle(degrees: isAnimated ? 0 : 360))
                .offset(y: isAnimated ? 0 : 200) 
            
            Spacer()
        }
        .padding()
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
