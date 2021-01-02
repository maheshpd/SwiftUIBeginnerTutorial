//
//  DragGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct DragGestureTemplate: View {
    
    @State private var offset = CGSize.zero
    
    var body: some View {
        Image("me")
            .resizable()
            .frame(width: 100, height: 100)
            .offset(offset)
            .scaledToFit()
            .shadow(radius: 20)
            .gesture(DragGesture(minimumDistance: 10)
                        .onChanged({ (value) in
                self.offset = value.translation
                        }).onEnded({ _ in
                            self.offset = CGSize.zero
                        }))
            .animation(.easeInOut(duration: 1))
    }
}

struct DragGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureTemplate()
    }
}
