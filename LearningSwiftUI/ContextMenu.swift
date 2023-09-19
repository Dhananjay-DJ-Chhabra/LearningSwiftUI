//
//  ContextMenu.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
            Text("Swiftui Learning")
            Text("How to usev Context Menu")
        }
        .foregroundColor(.white)
        .font(.title2)
        .padding()
        .background(backgroundColor.cornerRadius(30))
        
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack{
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }

        }
        
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
