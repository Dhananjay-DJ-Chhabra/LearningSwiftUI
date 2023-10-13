//
//  SliderLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 20/09/23.
//

import SwiftUI

struct SliderLearning: View {
    
    @State var sliderValue: Double = 5
    @State var bgColor: Color = .yellow
    @State var opacityRatio: Double = 0.1
    
    var body: some View {
        
        ZStack{
            bgColor
                .ignoresSafeArea(edges: .all)
            
            VStack{
                HStack{
                    Text("Slider Value: ")
                    Text(String(format: "%.0f", sliderValue))
                }
                
                Slider(value: $sliderValue,
                       in: 5...10,
                       step: 1) {
                    Text("Slider")
                } minimumValueLabel: {
                    Text("5")
                } maximumValueLabel: {
                    Text("10")
                } onEditingChanged: { _ in
                    bgColor = .red.opacity(opacityRatio * sliderValue)
                }
                .tint(.green)

            }
            .padding()
        }
    }
}

struct SliderLearning_Previews: PreviewProvider {
    static var previews: some View {
        SliderLearning()
    }
}
