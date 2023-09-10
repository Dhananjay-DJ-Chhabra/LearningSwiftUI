//
//  Stacks(H, V, Z).swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 28/08/23.
//

import SwiftUI

struct Stacks_H__V__Z_: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 350, height: 600)
            
            VStack{
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                HStack{
                    Rectangle()
                        .foregroundColor(.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}

struct Stacks_H__V__Z__Previews: PreviewProvider {
    static var previews: some View {
        Stacks_H__V__Z_()
    }
}
