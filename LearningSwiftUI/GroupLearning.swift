//
//  GroupLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 15/10/23.
//

import SwiftUI

struct GroupLearning: View {
    var body: some View {
        VStack{
            Text("hello world !!")
            Group {
                Text("hello world !!")
                Text("hello world !!")
            }
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
    }
}

struct GroupLearning_Previews: PreviewProvider {
    static var previews: some View {
        GroupLearning()
    }
}
