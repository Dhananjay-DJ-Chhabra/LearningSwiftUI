//
//  PickerLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct PickerLearning: View {
    
    @State var wheelSelection: String = "18"
    @State var menuSelection: String = "Most Popular"
    @State var menuOptions: [String] = ["Most Liked", "Most Popular", "Most Played"]
    @State var segmentSelection: String = "Most Played"
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Section("Segmented Picker Style") {
                        HStack{
                            Text("Selected segment: ")
                                .foregroundColor(.red)
                            Text(segmentSelection)
                                .foregroundColor(.blue)
                        }
                        Picker(selection: $segmentSelection) {
                            ForEach(menuOptions, id: \.self) { option in
                                Text(option)
                            }
                        } label: {
                            Text("Segment Picker")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.bottom, 100)
                    }
                    
                    Section("Menu Picker Style") {
                        HStack(spacing: 0){
                            Text("Select type:")
                                .foregroundColor(.red)
                            Picker(selection: $menuSelection) {
                                ForEach(menuOptions, id: \.self) { option in
                                    Text(option)
                                }
                            } label: {
                                    Text("Menu Picker")
                            }
                            .pickerStyle(MenuPickerStyle())
                        }
                        .padding(.bottom, 100)
                    }
                    
                    Section("Wheel Picker Style") {
                        HStack{
                            Text("Age: ")
                                .foregroundColor(.red)
                            Text(wheelSelection)
                                .foregroundColor(.blue)
                        }
                        Picker(selection: $wheelSelection) {
                            ForEach(18..<100) { index in
                                Text("\(index)").tag("\(index)")
                            }
                        } label: {
                            Text("Age Picker")
                        }
                        .pickerStyle(WheelPickerStyle())
                    }

                }
            }
            .navigationTitle("Picker Learning")
        }
    }
}

struct PickerLearning_Previews: PreviewProvider {
    static var previews: some View {
        PickerLearning()
    }
}
