//
//  CustomizingKeyboardSubmitButton.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI

struct CustomizingKeyboardSubmitButton: View {
    
    @State var textField: String = ""
    
    var body: some View {
        VStack{
            TextField("user name", text: $textField)
                .submitLabel(.join)
                .onSubmit {
                    print("let's join using user name")
                }
                .padding(10)
                .frame(height: 52)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2).cornerRadius(10))
                .padding()
            TextField("password", text: $textField)
                .submitLabel(.route)
                .onSubmit {
                    print("let's route using password")
                }
                .padding(10)
                .frame(height: 52)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2).cornerRadius(10))
                .padding()
        }
    }
}

struct CustomizingKeyboardSubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingKeyboardSubmitButton()
    }
}
