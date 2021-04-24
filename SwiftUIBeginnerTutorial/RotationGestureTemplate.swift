//
//  RotationGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 24/04/21.
//

import SwiftUI

struct RotationGestureTemplate: View {
    
    @State private var rotation: Angle = .zero
    
    var body: some View {
        Image("me")
            .resizable()
            .clipShape(Circle())
            .frame(width: 200, height: 200)
            .shadow(radius: 20)
            .rotationEffect(rotation)
            .gesture(RotationGesture().onChanged({ (value) in
                self.rotation = value
            }))
            
    }
}

struct RotationGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureTemplate()
    }
}
