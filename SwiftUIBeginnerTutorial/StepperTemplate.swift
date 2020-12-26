//
//  StepperTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct StepperTemplate: View {
    
    @State var stepperVal = 0
    @State var collectVals = [Int]()
    
    var body: some View {
//        simpleStepper()
        stepperEvents()
    }
    
    func stepperEvents() -> some View {
        Stepper(
            onIncrement: {
                self.stepperVal += 2
                self.collectVals.append(self.stepperVal)
            },
            onDecrement: {
                if !self.collectVals.isEmpty {
                    self.stepperVal -= 2
                    self.collectVals.removeLast()
                }
            },
            label: {
                Text("Collected values: \(self.collectVals.map {String($0)}.joined(separator: ","))")
            })
    }
    
    
    func simpleStepper() -> some View {
        Stepper(value: $stepperVal) {
            Text("stepper value: \(stepperVal)")
        }.padding()
    }
    
    
}

struct StepperTemplate_Previews: PreviewProvider {
    static var previews: some View {
        StepperTemplate()
    }
}
