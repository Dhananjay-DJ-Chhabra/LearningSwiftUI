//
//  AnimationTiming:Curve.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 13/09/23.
//

import SwiftUI

struct AnimationTiming_Curve: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isAnimating.description)") {
                isAnimating.toggle()
            }
            // defalt animation style
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.default, value: isAnimating)
            
            // linear animation style
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.linear, value: isAnimating)
            
            //ease in: slow in beginning
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.easeIn, value: isAnimating)
            
            //ease out: slow at end
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.easeOut, value: isAnimating)
            
            // ease in out: slow at beginning and end
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.easeInOut, value: isAnimating)
            
            //spring: shows springy(oscilating) effect at end
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(Animation.spring(
                    response: 1.0, // timing
                    dampingFraction: 0.5, // springy nature timing
                    blendDuration: 1.0), value: isAnimating)
        }
        .padding()
    }
}

struct AnimationTiming_Curve_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming_Curve()
    }
}
