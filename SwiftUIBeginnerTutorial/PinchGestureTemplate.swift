//
//  PinchGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 24/04/21.
//

import SwiftUI

struct PinchGestureTemplate: View {
    
    @State private var zoomLevel: CGFloat = 1
    
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 100, height: 100)
            .shadow(radius: 25)
            .scaleEffect(self.zoomLevel)
            .gesture(MagnificationGesture().onChanged({ (value) in
                self.zoomLevel = value
            }))
            
    }
}

struct PinchGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        PinchGestureTemplate()
    }
}
