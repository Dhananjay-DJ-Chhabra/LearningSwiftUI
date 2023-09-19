//
//  ActionSheetLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 19/09/23.
//

import SwiftUI

struct ActionSheetLearning: View {
    enum PostType{
        case myPost
        case otherPost
    }
    @State var showSheet: Bool = false
    @State var postType: PostType? = nil
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Circle()
                        .fill(Color.red)
                        .frame(width: 30, height: 30)
                    Text("@otherpost")
                    Spacer()
                    Button {
                        showSheet.toggle()
                        postType = .otherPost
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .accentColor(.black)

                }
                .padding(.horizontal, 20)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 300)
                    .padding(.bottom, 50)
                
                
                
                HStack{
                    Circle()
                        .fill(Color.green)
                        .frame(width: 30, height: 30)
                    Text("@mypost")
                    Spacer()
                    Button {
                        showSheet.toggle()
                        postType = .myPost
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .accentColor(.black)

                }
                .padding(.horizontal, 20)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(height: 300)
            }
            .actionSheet(isPresented: $showSheet, content: getActionSheet)
        }
    }
    
    func getActionSheet() -> ActionSheet {
        var myButtons: [ActionSheet.Button] = [
            .default(Text("Share")),
            .destructive(Text("Report")),
            .destructive(Text("Delete")),
            .cancel()
        ]
        var otherButtons: [ActionSheet.Button] = [
            .default(Text("Share")),
            .destructive(Text("Report")),
            .cancel()
        ]
        var buttons: [ActionSheet.Button] {
            switch postType{
            case .myPost: return myButtons
            case .otherPost: return otherButtons
            default: return []
            }
        }
        return ActionSheet(title: Text("What would you like to do ?"), message: nil, buttons: buttons)
    }
}

struct ActionSheetLearning_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetLearning()
    }
}
