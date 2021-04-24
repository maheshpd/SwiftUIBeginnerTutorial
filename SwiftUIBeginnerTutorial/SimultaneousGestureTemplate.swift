//
//  SimultaneousGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 24/04/21.
//

import SwiftUI

struct SimultaneousGestureTemplate: View {
    
    @State private var rotation: Angle = .zero
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        
        let pinchGesture = MagnificationGesture().onChanged { (value) in
            self.scale = value
        }
        
        let rotationGesture = RotationGesture().onChanged { (value) in
            self.rotation = value
        }
        
        let pinchNRotate = pinchGesture.simultaneously(with: rotationGesture)
        
        return Image("me")
            .resizable()
            .clipShape(Circle())
            .frame(width: 200, height: 200)
            .shadow(radius: 20)
            .scaleEffect(scale)
            .rotationEffect(rotation)
            .gesture(pinchNRotate)
        
        
    }
}

struct SimultaneousGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGestureTemplate()
    }
}
