//
//  IntroView.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 23/09/23.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color.purple.opacity(0.5), Color.purple], center: .topLeading, startRadius: 100, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea(edges: .all)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
