//
//  PopUpSheetsAndFullScreenCover.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 15/09/23.
//

import SwiftUI

struct PopUpSheetsAndFullScreenCover: View {
    
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
            
            Button {
                showScreen.toggle()
            } label: {
                Text("Button")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                    .padding(.all)
                    .background(
                        Color.white
                            .cornerRadius(10)
                    )
            }
            .fullScreenCover(isPresented: $showScreen, content: {// showScreen variables used with $ sign acts as binding variable for sheet and fullScreenCovers to inform change in value
                SecondScreen()
            })
//            .sheet(isPresented: $showScreen) { // showScreen variables used with $ sign acts as binding variable for sheet and fullScreenCovers to inform change in value
//                SecondScreen()
//            }

        }
    }
}
struct SecondScreen: View{
    
    /*
     The line @Environment(\.presentationMode) var presentationMode in SwiftUI is used to declare a property called presentationMode that allows you to interact with the presentation mode of the current view. Let's break down this line in detail:

     @Environment: @Environment is a property wrapper in SwiftUI that allows you to access values from the environment of the current view. The environment is a container for various settings and values that SwiftUI manages for you. It provides a way to share data and configuration across your views.

     (\.presentationMode): This is a key path that specifies the particular value we want to access from the environment. In this case, we are interested in the presentationMode property of the environment.

     var presentationMode: This declares a property named presentationMode of a type that corresponds to the value found at the key path \presentationMode.
     */
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea(edges: .all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.all)
            }
        }
    }
}

struct PopUpSheetsAndFullScreenCover_Previews: PreviewProvider {
    static var previews: some View {
        PopUpSheetsAndFullScreenCover()
    }
}
