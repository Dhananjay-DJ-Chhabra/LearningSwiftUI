//
//  OnAppearOnDisappear.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 21/09/23.
//

import SwiftUI

struct OnAppearOnDisappear: View {
    
    @State var visibleCount: Int = 0
    @State var labelText: String = "Initial text"
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack{
                    Text(labelText)
                        .font(.title2)
                        .padding(50)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                labelText = "This has changed after 3 seconds"
                            }
                        }
                    
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                visibleCount += 1
                            }
                    }
                }
            }
            
            .navigationTitle("On Appear: \(visibleCount)")
        }
    }
}

struct OnAppearOnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearOnDisappear()
    }
}
