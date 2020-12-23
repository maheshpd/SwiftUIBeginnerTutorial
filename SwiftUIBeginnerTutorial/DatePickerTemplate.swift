//
//  DatePickerTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 20/12/20.
//

import SwiftUI

struct DatePickerTemplate: View {
    
    @State var dateSelected = Date()
    @State var time = Date()
    
    var dateFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateStyle = .short
        return df
    }
    
    var timeFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateStyle = .none
        df.timeStyle = .medium
        return df
    }
    
    let minDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    
    let maxDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    
    
    var body: some View {
        
        VStack {
        
        Text("Today is: ")
            .font(.title)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
        
//            DatePicker("Select a date", selection: $dateSelected, in: minDate... ,displayedComponents: .date)
//            .labelsHidden()
            
//            DatePicker("Select a date", selection: $dateSelected, in: ...maxDate ,displayedComponents: .date)
//            .labelsHidden()
            
            
            DatePicker("Select a date", selection: $dateSelected, in: minDate...maxDate ,displayedComponents: .date)
            .labelsHidden()
            
          
            
            Text("Date selected: \(dateSelected, formatter: dateFormatter)")
            
            Spacer()
            
            Text("Time is: ")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
            DatePicker("", selection: $time, displayedComponents: .hourAndMinute).labelsHidden()
            
            Text("Time selected: \(time, formatter: timeFormatter)")
            
            Form {
                Section(header: Text("Date Picker")) {
                    Text("Date picker in form")
                    DatePicker("Pick a date", selection: $dateSelected, displayedComponents: .date)
                }
            }
            
            Spacer()
        }
    }
}

struct DatePickerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTemplate()
    }
}
