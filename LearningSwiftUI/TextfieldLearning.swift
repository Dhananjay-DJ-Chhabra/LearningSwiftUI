//
//  TextfieldLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct TextfieldLearning: View {
    
    @State var textfieldText: String = ""
    @State var savedData: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type your text here...", text: $textfieldText)
                    .padding()
                    .foregroundColor(.red)
                    .font(.title2)
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .padding()
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .disabled(!validateText())
                .frame(maxWidth: .infinity)
                .background(validateText() ? Color.blue.cornerRadius(10) : Color.gray.cornerRadius(10))
                
                ForEach(savedData, id: \.self) { data in
                    Text(data)
                }

                
                Spacer()
            }
            .padding(.top, 50)
            .padding(.horizontal)
            .navigationTitle("Textfield Learning !")
        }
    }
    
    func validateText() -> Bool {
        if textfieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText(){
        savedData.append(textfieldText)
        textfieldText = ""
    }
}

struct TextfieldLearning_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldLearning()
    }
}
