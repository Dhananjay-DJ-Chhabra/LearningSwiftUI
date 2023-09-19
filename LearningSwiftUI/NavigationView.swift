//
//  NavigationView.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 16/09/23.
//

import SwiftUI

struct NavigationViewLearning: View {
    var body: some View {
        NavigationView {
            ScrollView{
            VStack(spacing: 50){
                    Spacer()
                    
                    NavigationLink {
                        Text("Second screen")
                    } label: {
                        Text("go to second screen")
                    }

                    Text("hello world !!!")
                    
                    NavigationLink {
                        SecondScreenFromNavigation()
                    } label: {
                        Text("go to second red screen")
                            .foregroundColor(.red)
                    }
                    
//                    Spacer()
                }

            }
            

            .navigationTitle("Home screen")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                        Text("person screen")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.yellow)
                    } label: {
                        Image(systemName: "person.fill")
                    }

                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("flame screen")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.pink)
                            .foregroundColor(.white)
                            
                    } label: {
                        Image(systemName: "flame.fill")
                    }

                }
            }
        }
    }
}

struct SecondScreenFromNavigation: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                Text("second red screen without back button")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("go back to home screen")
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                        .font(.title2)
                })
            }
            
                .navigationBarBackButtonHidden()
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewLearning()
    }
}
