//
//  Frames.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 23/08/23.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100, alignment: .bottom)
            .background(Color.green)
            .frame(width: 300, height: 200, alignment: .topLeading)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background(Color.pink)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(Color.purple)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
