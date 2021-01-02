//
//  LongPressGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct LongPressGestureTemplate: View {
    
    @State private var scaleFactore: CGFloat = 1
    @GestureState private var longPressed = false
    
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 200, height: 200)
            .scaleEffect(longPressed ? 1.5 : 1)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
            .gesture(LongPressGesture(minimumDuration: 1).updating($longPressed, body: { (value, state, transaction) in
                state = value
            }))
            .animation(.spring())
    }
}

struct LongPressGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureTemplate()
    }
}
