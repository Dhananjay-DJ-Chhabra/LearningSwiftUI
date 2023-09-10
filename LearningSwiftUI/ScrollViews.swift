//
//  ScrollView.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 08/09/23.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        ScrollView {
            VStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<20) { indexx in
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

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
