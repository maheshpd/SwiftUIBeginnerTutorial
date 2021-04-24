//
//  SequenceGesture.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 24/04/21.
//

import SwiftUI

struct SequenceGesture: View {
    
    @State private var offset: CGSize = .zero
    @State private var translation: CGSize = .zero
    @State private var canDrag: Bool = false
    
    var body: some View {
        
        let longPress = LongPressGesture(minimumDuration: 1).onEnded { (_) in
            self.canDrag = true
        }
        
        let drag = DragGesture().onChanged { (value) in
            self.translation = value.translation
            self.canDrag = true
        }.onEnded { (value) in
            self.offset.width += value.translation.width
            self.offset.height += value.translation.height
            self.translation = .zero
            self.canDrag = false
        }
        
        let longPressNdrag = longPress.sequenced(before: drag)
        return Image("me")
            .resizable()
            .clipShape(Circle())
            .background(canDrag ? Circle().stroke(Color.gray): nil)
            .frame(width: 200, height: 200)
            .offset(x: offset.width + translation.width, y: offset.height + translation.height)
            .shadow(radius: canDrag ? 10 : 1)
            .gesture(longPressNdrag)
    }
}

struct SequenceGesture_Previews: PreviewProvider {
    static var previews: some View {
        SequenceGesture()
    }
}
