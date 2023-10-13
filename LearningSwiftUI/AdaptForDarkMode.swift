//
//  AdaptForDarkMode.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 21/09/23.
//

import SwiftUI

struct AdaptForDarkMode: View {
    
    // MARK: properties
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: body
    var body: some View {
        NavigationView{
            
            VStack(spacing: 50){
                Text("primary color")
                    .foregroundColor(.primary)
                Text("secondary color")
                    .foregroundColor(.secondary)
                Text("globally adaptive color")
                    .foregroundColor(Color("globallyAdaptiveColor"))
                Text("locally adaptive color")
                    .foregroundColor(colorScheme == .light ? .yellow : .green)
            }
            
            .navigationTitle("Dark Modte Learning")
        }
    }
}

// MARK: preview
struct AdaptForDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        AdaptForDarkMode()
            .preferredColorScheme(.dark)
    }
}
