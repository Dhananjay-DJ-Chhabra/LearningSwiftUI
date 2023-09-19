//
//  SheetsVsAnimationsVsTransitions.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 15/09/23.
//

import SwiftUI

struct SheetsVsAnimationsVsTransitions: View {
    
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
            
            VStack{
                Button {
                    showScreen.toggle()
                } label: {
                    Text("Button")
                        .foregroundColor(.green)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .background(
                            Color.white
                                .cornerRadius(10))
                }
                .padding(.top)
                
                Spacer()
            }//.zIndex(1.0)
            // method 1: sheet
//            .sheet(isPresented: $showScreen) {
//                SecondScreenNew()
//            }
            
            // method 2: transition
//                ZStack{
//                    if showScreen{
//                        SecondScreenNew(showScreen: $showScreen)
//                            .padding(.top)
//                            .transition(.move(edge: .bottom))
//                            .animation(.spring())
//
//                    }
//                }.zIndex(2.0)
            
            // method 3: animation
            //if showScreen{
                SecondScreenNew(showScreen: $showScreen)
                .offset(y: showScreen ? 100 : UIScreen.main.bounds.height)
                    .animation(.easeInOut)
            //}
            

        }
    }
}

struct SecondScreenNew: View {
    
    // method 1: sheet
//    @Environment(\.presentationMode) var presentationMode
    
    // method 2: transition and method 3: animation(offset)
    @Binding var showScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea(edges: .all)
            
            Button {
                //methhod 1: sheet
//                presentationMode.wrappedValue.dismiss()
                
                // method 2: transition and method 3: animation(offset)
                showScreen.toggle()
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.all)
            }

        }
    }
}

struct SheetsVsAnimationsVsTransitions_Previews: PreviewProvider {
    static var previews: some View {
        SheetsVsAnimationsVsTransitions()
    }
}
