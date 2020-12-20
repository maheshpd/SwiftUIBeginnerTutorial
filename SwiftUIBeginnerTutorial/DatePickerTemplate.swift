//
//  DatePickerTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 20/12/20.
//

import SwiftUI

struct DatePickerTemplate: View {
    
    @State var dateSelected = Date()
    
    var body: some View {
        
        VStack {
        
        Text("Today is: ")
            .font(.title)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
        
        DatePicker("Select a date", selection: $dateSelected, displayedComponents: .date)
            .labelsHidden()
            
        }
    }
}

struct DatePickerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTemplate()
    }
}
