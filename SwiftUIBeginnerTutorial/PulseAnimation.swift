//
//  PulseAnimation.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 24/04/21.
//

import SwiftUI

struct PulseAnimation: View {
    
    @State private var wave = false
    @State private var wave1 = false
    
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(lineWidth: 40)
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .scaleEffect(wave ?  2 : 1)
                .opacity(wave ? 0 : 1)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).speed(0.5))
                .onAppear() {
                    self.wave.toggle()
                }
            
            Circle()
                .stroke(lineWidth: 40)
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .scaleEffect(wave1 ? 2 : 1)
                .opacity(wave1 ? 0 : 1)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false).speed(0.7))
                .onAppear() {
                    self.wave1.toggle()
                }
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .shadow(radius: 25)
            Image(systemName: "plus.circle.fill")
                .font(.system(size: 90))
                .foregroundColor(.white)
                .shadow(radius: 25)
            
        }
        
    }
}

struct PulseAnimation_Previews: PreviewProvider {
    static var previews: some View {
        PulseAnimation()
    }
}
