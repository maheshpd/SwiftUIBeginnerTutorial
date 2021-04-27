//
//  AngularGradientAndAnimation.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 27/04/21.
//

import SwiftUI

struct AngularGradientAndAnimation: View {
    
    let gradient: Gradient
    @State private var centerVal: UnitPoint
    @State private var count = 0
    @State private var degree: Double
    
    let unitPointer = [UnitPoint.bottom, .bottomLeading,
                       .bottomTrailing, .center, .leading, .top,
                       .topLeading, .topTrailing, .trailing]

    let degrees = [0, 45, 90, 135, 180, 225, 270, 315, 360]
    
    init() {
        gradient = Gradient(colors: [Color.green, .blue])
        _centerVal = State(initialValue: UnitPoint.center)
        _degree = State(initialValue: 45)
    }
    
    var body: some View {
        Circle()
            .fill(AngularGradient(gradient: gradient, center: .top, angle: Angle(degrees: degree)))
            .frame(width: 200, height: 200)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).speed(0.5))
            .onAppear() {
                self.centerVal = self.unitPointer[
                    self.count % self.unitPointer.count
                ]
                
                self.degree = Double(self.degrees[self.count % self.degrees.count])
                self.count += 1
            }
    }
}

struct AngularGradientAndAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradientAndAnimation()
    }
}
