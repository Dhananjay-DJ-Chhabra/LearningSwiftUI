//
//  FocusState.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI

struct FocusStateLearning: View {
    
    enum OnboardingFields: Hashable{
        case username
        case password
    }
    
    @FocusState var textfieldInFocus: OnboardingFields?
    @State var username: String = ""
    @State var password: String = ""
    
    
    
    var body: some View {
        
            VStack{
                TextField("user name", text: $username)
                    .focused($textfieldInFocus, equals: .username)
                    .padding(10)
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .padding()
                SecureField("password", text: $password)
                    .focused($textfieldInFocus, equals: .password)
                    .padding(10)
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .padding()
                
                Button("SIGN UP") {
//                    usernameInFocus = true
                    let usernameIsValid = !username.isEmpty
                    let passwordIsValid = !password.isEmpty
                    
                    if usernameIsValid && passwordIsValid {
                        print("Signed Up")
                    }else if usernameIsValid{
                        textfieldInFocus = .password
                    }else{
                        textfieldInFocus = .username
                    }
                }
            }
       
    }
}

struct FocusState_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateLearning()
    }
}
