//
//  LoopsForEach.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 08/09/23.
//

import SwiftUI

struct LoopsForEach: View {
    
    let data = ["A", "B", "C", "D", "E", "F"]
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                HStack{
                    Text("alphabet: \(data[index])")
                    Circle()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct LoopsForEach_Previews: PreviewProvider {
    static var previews: some View {
        LoopsForEach()
    }
}
