//
//  InitsAndEnums.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 08/09/23.
//

import SwiftUI

struct InitsAndEnums: View {
    
    let fruit: Fruit
        
    var body: some View {
        HStack{
            Rectangle()
                .fill(fruit.color)
                .frame(width: 150, height: 150)
                .cornerRadius(15)
                .overlay {
                    VStack(spacing: 15){
                        Text("\(fruit.count)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .underline()
                        Text(fruit.name)
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                }
        }
    }
}

struct InitsAndEnums_Previews: PreviewProvider {
    static var previews: some View {
        InitsAndEnums(fruit: .apple)
    }
}

enum Fruit{
    case apple
    case orange
    
    var count: Int{
        switch self {
        case .apple:
            return 100
        case .orange:
            return 50
        }
    }
    var color: Color{
        switch self {
        case .apple:
            return .red
        case .orange:
            return .orange
        }
    }
    var name: String{
        switch self {
        case .apple:
            return "Apple"
        case .orange:
            return "Orange"
        }
    }
}
