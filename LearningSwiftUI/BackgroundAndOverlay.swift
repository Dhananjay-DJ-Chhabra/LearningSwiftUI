//
//  BackgroundAndOverlay.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 23/08/23.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
            Text("Hello, World!")
                .foregroundColor(.white)
                .background {
                    Circle()
                        .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100, alignment: .center)
                        .background {
                            VStack{
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 150, height: 150)
                            }
                        }
                }
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
