//
//  OnboardingView.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 23/09/23.
//

import SwiftUI

struct OnboardingView: View {
    /*
     onboardingState = 0 -> welcome screen
     onboardingState = 1 -> user name screen
     onboardingState = 2 -> age screen
     onboardingState = 3 -> gender screen
     */
    @State var onboardingState: Int = 0
    
    var body: some View {
        Text("")
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
