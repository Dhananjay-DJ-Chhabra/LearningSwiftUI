//
//  Icons.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 23/08/23.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        VStack{
            Image(systemName: "books.vertical")
                .renderingMode(.original)
                .resizable()
                .font(.largeTitle)
//                .aspectRatio(contentMode: .fit)
                .scaledToFit()
    //            .foregroundColor(.green)
                .frame(width: 200, height: 200)
            
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
//                .tint(.yellow)
                .foregroundColor(.yellow)
        }
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
