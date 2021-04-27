//
//  AnimationTimingCurve.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 27/04/21.
//

import SwiftUI

struct AnimationTimingCurve: View {
    
    @State private var position: CGSize = CGSize(width: -140, height: 10)
    
    var body: some View {
        
        VStack {
            ballView(color: .red, animation: .default, position: $position)
            ballView(color: .blue, animation: .easeIn, position: $position)
            ballView(color: .green, animation: .easeInOut, position: $position)
            ballView(color: .orange, animation: .easeOut, position: $position)
            ballView(color: .purple, animation: .linear, position: $position)
        }.onAppear(){
            self.position = CGSize(width: 140, height: 10)
        }
        
    }
}

struct ballView: View {
    let color : Color
    let animation: Animation
    @Binding var position: CGSize
    
    var body: some View {
        Circle()
            .fill(RadialGradient(gradient: Gradient(colors: [.white, color]), center: .center, startRadius: 1, endRadius: 30))
            .frame(width: 50, height: 50)
            .offset(position)
            .animation(animation.repeatForever(autoreverses: true).speed(0.25))
    }
}


struct AnimationTimingCurve_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingCurve()
    }
}
