//
//  ShapesTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct ShapesTemplate: View {
    var body: some View {
//        simpleShape()
        strokeShaped()
    }
    
    func strokeShaped() -> some View {
        VStack {
            Circle()
                .stroke(Color.blue, lineWidth: 4)
            Ellipse()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .bevel, miterLimit: .infinity, dash: [2, 20]))
            Capsule()
                .stroke(Color.green, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .bevel, miterLimit: .infinity, dash: [5, 10]))
            Rectangle()
                .stroke(Color.yellow, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .bevel, miterLimit: .infinity, dash: [10, 12]))
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .bevel, miterLimit: .infinity, dash: [12, 12]))
        }.padding()
    }
    
    func simpleShape() -> some View {
        VStack {
            Circle()
                .fill(Color.blue)
            Ellipse()
                .fill(Color.orange)
            Capsule()
                .fill(Color.green)
            Rectangle()
                .fill(Color.yellow)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
        }.padding()
    }
    
}

struct ShapesTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ShapesTemplate()
    }
}
