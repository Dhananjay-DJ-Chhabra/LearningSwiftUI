//
//  AppStorageLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 22/09/23.
//

import SwiftUI

struct AppStorageLearning: View {
    
    /**
     @AppStorage is just the swiftui version of UserDefaults to store some informtion to device for using in next session (next time app open) .
     */
    
//    @State var userName: String?
    @AppStorage("name") var userName: String?
    
    var body: some View {
        VStack(spacing: 50){
            Text(userName ?? "Add user name here")
            
            if let userName = userName{
                Text(userName)
            }
            
            Button("Save") {
                userName = "Tammana"
//                UserDefaults.standard.set(userName, forKey: "name")
            }
        }
        .font(.title2)
//        .onAppear{
//            userName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageLearning_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageLearning()
    }
}
 
