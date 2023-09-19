//
//  AlertsLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 17/09/23.
//

import SwiftUI

struct AlertsLearning: View {
    
    enum MyAlerts{
        case error
        case success
    }
    
    @State var showAlert: Bool = false
    @State var alerType: MyAlerts? = nil
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(edges: .all)
                .overlay(alignment: .top) {
                    Spacer()
                    
                    Button("Invalid Button") {
                        showAlert.toggle()
                        alerType = .none
                    }
                    .foregroundColor(.yellow)
                    .font(.title)
                    .fontWeight(.semibold)
                    
                }
            
            VStack(spacing: 50){
                Button {
                    showAlert.toggle()
                    alerType = .error
                } label: {
                    Text("Error Button")
                        .foregroundColor(.red)
                        .font(.title)
                        .fontWeight(.semibold)
                        .underline()
                }
                
                Button {
                    showAlert.toggle()
                    alerType = .success
                } label: {
                    Text("Success Button")
                        .foregroundColor(.green)
                        .font(.title)
                        .fontWeight(.semibold)
                        .underline()
                }

            }
            .alert(isPresented: $showAlert) {
                switch alerType {
                case .error:
                    return Alert(title: Text("Error"), message: Text("error fetching data"), primaryButton: .cancel(), secondaryButton: .default(Text("Ok")))
                case .success:
                    return Alert(title: Text("Success"), message: Text("success fetching data"), primaryButton: .cancel(), secondaryButton: .default(Text("Thanks")))
                default:
                    return Alert(title: Text("Invalid"), message: Text("no statius fetching data"), primaryButton: .cancel(), secondaryButton: .default(Text("Thanks")))
                }
            }
        }
    }
}

struct AlertsLearning_Previews: PreviewProvider {
    static var previews: some View {
        AlertsLearning()
    }
}
