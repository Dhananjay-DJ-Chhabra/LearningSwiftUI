//
//  ResizableSheets.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI

struct ResizableSheets: View {
    
    @State var showSheet: Bool = false
    @State var detents: PresentationDetent = .fraction(0.2)
    
    var body: some View {
        Button("Open Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            DjSheet(detents: $detents)
                //.presentationDetents([.fraction(0.2), .medium, .height(600), .large])
                .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detents)
        }
    }
}

struct DjSheet: View{
    
    @Binding var detents: PresentationDetent
    
    var body: some View{
        ZStack{
            Color.red
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Button("fraction 0.2") {
                    detents = .fraction(0.2)
                }
                Button("medium") {
                    detents = .medium
                }
                Button("height 600 px") {
                    detents = .height(600)
                }
                Button("large") {
                    detents = .large
                }
            }
            .foregroundColor(.white)
            .fontWeight(.semibold)
        }
    }
}

struct ResizableSheets_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheets()
    }
}
