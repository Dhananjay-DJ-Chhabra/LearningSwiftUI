//
//  LazyStacks.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 08/09/23.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0..<100) { index in
                    ScrollView(.horizontal){
                        LazyHStack{ 
                            ForEach(0..<100) { indexx in
                                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                    .fill(.white)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 100)
                                    .padding(15)
                            }
                        }
                    }
                }
            }
            //.padding(20)
        }
    }
}

struct LazyStacks_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacks()
    }
}
