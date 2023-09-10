//
//  Gradient.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 22/08/23.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .zero, endPoint: .center))
                .frame(width: 300, height: 200)
            RoundedRectangle(cornerRadius: 20)
                .fill(RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 20, endRadius: 150))
                .frame(width: 300, height: 200)
            RoundedRectangle(cornerRadius: 20)
                .fill(AngularGradient(colors: [Color.red, Color.blue], center: .center, angle: .degrees(45)))
                .frame(width: 300, height: 200)
        }
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Gradient()
    }
}
