//
//  TabView&PageTabView.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 20/09/23.
//

import SwiftUI

struct TabView_PageTabView: View {
    
    @State var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("profile tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        
    }
}

struct TabView_PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView_PageTabView()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea(edges: .top)
            
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                }
                .font(.title2)
                .padding()
                .background(.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                

            }
        }
            
    }
}

struct BrowseView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                TabView {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.red)
                        .frame(width: UIScreen.main.bounds.width - 40)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.green)
                        .frame(width: UIScreen.main.bounds.width - 40)
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.blue)
                        .frame(width: UIScreen.main.bounds.width - 40)
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: 250)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .padding(.top, 100)
            }
            
            .navigationTitle("Page Tab View")
        }
        
        
            
    }
}
