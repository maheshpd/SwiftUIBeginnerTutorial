//
//  DragGestureTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 02/01/21.
//

import SwiftUI

struct DragGestureTemplate: View {
    
    @State private var offset = CGSize.zero
//    @GestureState private var offset = CGSize.zero
//    @State private var lastDragPosition: DragGesture.Value?
//    @State private var shadowColor = Color.gray
    
    @GestureState private var animation = Animation.linear
    
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
        
//        Image("me")
//            .resizable()
//            .frame(width: 100, height: 100)
//            .offset(offset)
//            .scaledToFit()
//            .shadow(color: shadowColor, radius: 20, x: 0, y: 0)
//            .gesture(DragGesture(minimumDistance: 10).onChanged({ (value) in
//                self.offset = value.translation
//                self.lastDragPosition = value
//            }).onEnded({ (value) in
//                let timeDiff = value.time.timeIntervalSince(self.lastDragPosition!.time)
//
//                let speed = CGFloat(value.translation.height - self.lastDragPosition!.translation.height) / CGFloat(timeDiff)
//
//                if speed > 300 {
//                    self.shadowColor = .red
//                } else {
//                    self.shadowColor = .black
//                }
//
//                self.offset = CGSize.zero
//
//            }))
//            .animation(.spring())
        
        /*
        Image("me")
            .resizable()
            .frame(width: 100, height: 100)
            .offset(offset)
            .shadow(radius: 20)
            .animation(animation)
            .gesture(DragGesture(minimumDistance: 10).updating(self.$offset, body: { (value, state, translation) in
                state = value.translation
            }).updating(self.$animation, body: { (value, state, translation) in
                state = Animation.easeInOut(duration: 5)
            }))
 */
            
    }
}

struct DragGestureTemplate_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureTemplate()
    }
}
