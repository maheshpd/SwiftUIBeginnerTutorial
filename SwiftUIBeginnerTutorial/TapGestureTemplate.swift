//
//  TapGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct TapGestureTemplate: View {
    
    @State private var counter = 0
    
    var body: some View {
        Circle()
            .fill(Color.blue)
            .shadow(radius: 10)
            .frame(width: 200, height: 200)
            .overlay(Text("\(counter)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
            ).gesture(TapGesture(count: 2).onEnded({ _ in
                self.counter += 1
            }))
    }
}

struct TapGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureTemplate()
    }
}
