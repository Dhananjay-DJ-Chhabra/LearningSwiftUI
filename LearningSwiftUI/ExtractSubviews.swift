//
//  ExtractSubviews.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 11/09/23.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            contentView
        }
    }
    var contentView: some View{
        HStack{
            MyItem(count: 10, fruit: "Apples", color: .red)
            MyItem(count: 50, fruit: "Bananas", color: .yellow)
            MyItem(count: 20, fruit: "Oranges", color: .orange)
        }
    }
}

struct MyItem: View {
    
    let count: Int
    let fruit: String
    let color: Color
    var body: some View{
        VStack{
            Text("\(count)")
            Text(fruit)
        }
        .font(.title2)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .padding()
        .background(
            color
                .cornerRadius(10)
        )
    }
}

struct ExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviews()
    }
}
