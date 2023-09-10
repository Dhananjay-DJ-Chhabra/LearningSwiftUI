//
//  Grids.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 08/09/23.
//

import SwiftUI

struct Grids: View {
    
    //let column = GridItem(<#T##size: GridItem.Size##GridItem.Size#>, spacing: <#T##CGFloat?#>, alignment: <#T##Alignment?#>)
    /* =>sizes: .flexible(changes size according to other and spacing),
              .adaptive(creates new columns with self column accoring to others and spacing),
              .fixed(gives fixed width)
      =>spacing: provides given space to right of specified column
     
      =>write grid content either directly inside grid braces or create a section inside grid and then write content
     */
    
    let columns = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)]
    
    var body: some View {
        // scrollv view
        ScrollView{
            //top rectangle inside scroll view
            Rectangle()
                .fill(.blue)
                .frame(height: 400)
    
            //grid inside scroll view
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                //section 1 inside grid
                Section {
                    // content for section 1 in grid
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.red)
                            .frame(height: 50)
                    }
                } header: { // header for section 1 in grid
                    Text(" Fruits")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .font(.largeTitle)
                        //.padding(10)
                }
                
                // section 2 in grid
                Section {
                    // content for section 2 in grid
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.yellow)
                            .frame(height: 50)
                    }
                } header: { // header for section 2 in grid
                    Text(" Vegetables")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .font(.largeTitle)
                        //.padding(10)
                }

            }
        }
        .padding(10)
    }
}

struct Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
