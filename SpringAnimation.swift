//
//  SpringAnimation.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 27/04/21.
//

import SwiftUI

struct SpringAnimation: View {
    
    @State private var scale: CGFloat = 1
    @State private var angle: Double = 1
    
    var body: some View {
        
        Image(systemName: "paperplane.fill")
            .font(.largeTitle)
            .rotationEffect(.degrees(angle))
            .scaleEffect(scale)
            .foregroundColor(.orange)
            .animation(Animation.spring().repeatForever(autoreverses: true))
            .onAppear(){
                self.angle += 360
                self.scale += 2
            }
        
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
