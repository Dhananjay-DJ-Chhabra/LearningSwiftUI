//
//  Colors.swift
//  LearningSwiftUI
//
//  Created by Dhananjay on 22/08/23.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.yellow)
            .shadow(color: .blue.opacity(0.6), radius: 20, x: 0, y: 20)
            .frame(width: 300, height: 200)
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
