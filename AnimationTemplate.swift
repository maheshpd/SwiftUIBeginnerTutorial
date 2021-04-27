//
//  AnimationTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 27/04/21.
//

import SwiftUI

struct AnimationTemplate: View {
    
    @State private var cornerRadius: CGFloat = 0
    @State private var cornerRadius2: CGFloat = 0
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .top, endPoint: .bottom))
                .frame(width: 200, height: 200)
                .cornerRadius(cornerRadius)
                .scaleEffect(scale)
                .rotationEffect(Angle.degrees(rotation))
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(0.2))
                .onAppear() {
                    self.cornerRadius += 100
                    self.rotation += 180
                    self.scale -= 0.5
                }
            
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .orange]), startPoint: .top, endPoint: .bottom))
                .frame(width: 100, height: 100)
                .cornerRadius(cornerRadius2)
                .scaleEffect(scale)
                .rotationEffect(Angle.degrees(rotation))
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(0.2))
                .onAppear() {
                    self.cornerRadius2 += 100
                }
        }
    }
}

struct AnimationTemplate_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTemplate()
    }
}
