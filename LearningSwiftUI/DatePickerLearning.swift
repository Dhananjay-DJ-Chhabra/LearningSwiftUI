//
//  DatePickerLearning.swift
//  LearningSwiftUI
//
//  Created by Dhananjay Chhabra on 20/09/23.
//

import SwiftUI

struct DatePickerLearning: View {
    
    @State var selectedDate: Date = Date()
    @State var customRangeDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
                    
    
    var dateFormatter: DateFormatter = {
        let format = DateFormatter()
        format.dateStyle = .short
        format.timeStyle = .short
        return format
    }()
    
    var body: some View {
        ZStack{
            Color.green.opacity(0.4)
                .ignoresSafeArea(edges: .all)
            
            VStack{
                
                Text("Selected Date: ")
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title)
//                Text(selectedDate.description)
//                    .font(.title)
                
                DatePicker("Select Date", selection: $selectedDate)
                    .padding()
                
                DatePicker("Select from custom range", selection: $customRangeDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                    .padding()
                    
                
            }
        }
        
    }
}

struct DatePickerLearning_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerLearning()
    }
}
