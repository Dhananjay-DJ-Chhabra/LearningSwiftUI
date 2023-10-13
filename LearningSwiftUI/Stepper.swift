//
//  Stepper.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 20/09/23.
//

import SwiftUI

struct StepperLearning: View {
    
    @State var stepperValue: Int = 10
    @State var sizeIncrement: CGFloat = 0
    @State var bgColor: Color = .yellow
    
    var body: some View {
        ScrollView{
            VStack{
                Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                    .padding()
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(bgColor)
                    .frame(width: 100 + sizeIncrement, height: 100 + sizeIncrement)
                    .padding()
                
                Stepper("Rectangle Stepper") {
                    withAnimation(.spring()) {
                        sizeIncrement += 10
                        bgColor = .green
                    }
                    withAnimation(.easeInOut(duration: 1.0).delay(0.5)) {
                        bgColor = .yellow
                    }
                } onDecrement: {
                    withAnimation(.spring()) {
                        sizeIncrement -= 10
                        bgColor = .red
                    }
                    withAnimation(.easeInOut(duration: 1.0).delay(0.5)) {
                        bgColor = .yellow
                    }
                }
                .padding()

            }
        }
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        StepperLearning()
    }
}
