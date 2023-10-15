//
//  SafeAreaInsets.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 14/10/23.
//

import SwiftUI

struct SafeAreaInsets: View {
    var body: some View {
        NavigationStack{
            List(0..<20){ _ in
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 200)
                    .padding()
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Button("DJC", action: {
                    print("djc clicked")
                })
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding(.trailing)
            }
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("DJC 2")
                    .padding(.top)
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
            }
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil) {
                Text("DJC 3")
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .background(Color.green.edgesIgnoringSafeArea(.bottom))
            }
        }
        .fontWeight(.semibold)
    }
}

struct SafeAreaInsets_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsets()
    }
}
