//
//  TapGesture.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 21/09/23.
//

import SwiftUI

struct TapGesture: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 40){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(isSelected ? .red : .green)
                            .frame(height: 200)
                            .padding()
                            .onTapGesture(count: 2) {
                                isSelected.toggle()
                            }
                        
                        if isSelected {
                            Image(systemName: "heart.fill")
                                .frame(width: 200, height: 200)
                        }
                    }
                    
                    Button {
                        isSelected.toggle()
                    } label: {
                        Text("BUTTON")
                            .frame(width: UIScreen.main.bounds.width - 80)
                            .foregroundColor(.white)
                            .padding()
                            .background(.blue)
                            .cornerRadius(20)
                    }
                    
                    Text("TAP Gesture")
                        .frame(width: UIScreen.main.bounds.width - 80)
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(20)
                        .onTapGesture {
                            isSelected.toggle()
                        }

                }
            }
            
            .navigationTitle("TAP Gesture")
        }
    }
}

struct TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
    }
}
