//
//  DragGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct DragGestureTemplate: View {
    
    @State private var offset = CGSize.zero
    @State private var lastDragPosition: DragGesture.Value?
    @State private var shadowColor = Color.gray
    
    var body: some View {
//        Image("me")
//            .resizable()
//            .frame(width: 100, height: 100)
//            .offset(offset)
//            .scaledToFit()
//            .shadow(radius: 20)
//            .gesture(DragGesture(minimumDistance: 10)
//                        .onChanged({ (value) in
//                self.offset = value.translation
//                        }).onEnded({ _ in
//                            self.offset = CGSize.zero
//                        }))
//            .animation(.easeInOut(duration: 1))
        
        Image("me")
            .resizable()
            .frame(width: 100, height: 100)
            .offset(offset)
            .scaledToFit()
            .shadow(color: shadowColor, radius: 20, x: 0, y: 0)
            .gesture(DragGesture(minimumDistance: 10).onChanged({ (value) in
                self.offset = value.translation
                self.lastDragPosition = value
            }).onEnded({ (value) in
                let timeDiff = value.time.timeIntervalSince(self.lastDragPosition!.time)
                
                let speed = CGFloat(value.translation.height - self.lastDragPosition!.translation.height) / CGFloat(timeDiff)
                
                if speed > 300 {
                    self.shadowColor = .red
                } else {
                    self.shadowColor = .black
                }
                
                self.offset = CGSize.zero
                
            }))
            .animation(.spring())
            
    }
}

struct DragGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureTemplate()
    }
}
