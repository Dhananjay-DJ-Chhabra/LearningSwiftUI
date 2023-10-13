//
//  TestEditorLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct TestEditorLearning: View {
    
    @State var textEditorText: String = "Type your text here ..."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    TextEditor(text: $textEditorText)
                        .frame(height: 300)
                        .colorMultiply(.gray.opacity(0.3))
                        .cornerRadius(10)
                    
                    Button {
                        savedText = textEditorText
                    } label: {
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.cornerRadius(10))
                    }
                    
                    Text(savedText)
                    
                    Spacer()

                }
            }
            .padding()
            
            .navigationTitle("Text Editor Learning")
        }
    }
}

struct TestEditorLearning_Previews: PreviewProvider {
    static var previews: some View {
        TestEditorLearning()
    }
}
