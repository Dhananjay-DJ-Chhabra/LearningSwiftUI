//
//  EnvironmentObject.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 22/09/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var devicesArray: [String] = []
    
    init(){
        getArrayItems()
    }
    
    func getArrayItems(){
        devicesArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectLearning: View {
    
    @StateObject var environmentViewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(environmentViewModel.devicesArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                    
                }
            }
            
            .navigationTitle("Apple Devices")
        }
        .environmentObject(environmentViewModel)
    }
}

struct DetailView: View {
    
    var selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            Color.orange
                .ignoresSafeArea()
            
            NavigationLink {
                ThirdScreen()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }

        }
        
        .navigationTitle("Detail View")
    }
}

struct ThirdScreen: View{
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 40){
                ForEach(environmentViewModel.devicesArray, id: \.self) { item in
                    Text(item)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectLearning()
    }
}
