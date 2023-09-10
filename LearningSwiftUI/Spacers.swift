//
//  Spacers.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 07/09/23.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()

                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                //Spacer()
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                //Spacer()
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 50, height: 50)
                //Spacer()

            } 
            Spacer()
        }
    }
}

struct Spacers_Previews: PreviewProvider {
    static var previews: some View {
        Spacers()
    }
}
