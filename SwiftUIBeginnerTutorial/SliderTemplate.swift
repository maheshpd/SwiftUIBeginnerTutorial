//
//  SliderTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct SliderTemplate: View {
    
    @State var val = 0.5
    @State var stepVal = 10.0
    
    var numFormat: NumberFormatter {
        let num = NumberFormatter()
        num.maximumFractionDigits = 0
        return num
    }
    
    var body: some View {
//        simpleSlider()
//        sliderWithRange()
        sliderWithBackground()
    }
    
    func sliderWithBackground() -> some View {
        VStack {
            Text("\(self.numFormat.string(from: NSNumber(value: stepVal))!)").font(.title).padding()
            Slider(value: $stepVal, in: 1...100, step: 5)
                .accentColor(.white)
                .padding(.horizontal, 20)
                .background(Color.blue)
                .cornerRadius(.infinity)
                .shadow(color: .gray, radius: 5, x: 0, y: 0)
                .overlay(RoundedRectangle(cornerRadius: .infinity).stroke(Color.white, lineWidth: 2))
        }
        .padding()
       
    }
    
    
    
    func simpleSlider() -> some View {
        VStack(alignment: .leading, content: {
            Text("\(val)").font(.title).padding()
            Slider(value: $val)
        })
    }
    
    func sliderWithRange() -> some View {
        VStack(alignment: .leading, content: {
            Text("\(self.numFormat.string(from: NSNumber(value: stepVal))!)").font(.title).padding()
            Slider(value: $stepVal, in: 1...1000, step: 10)
        })
    }
    
    
    
}

struct SliderTemplate_Previews: PreviewProvider {
    static var previews: some View {
        SliderTemplate()
    }
}
