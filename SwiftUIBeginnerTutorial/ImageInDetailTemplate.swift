//
//  ImageInDetailTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct ImageInDetailTemplate: View {
    var body: some View {
        VStack{
            ZStack {
                Image("me")
                    .resizable()
                    .frame(width: 250, height: 350)
//                    .blur(radius: 2, opaque: true)
                    //                .brightness(0.2)
                    //                .colorMultiply(Color.red)
                    //                .colorInvert()
                    //                .contrast(1.5)
                    //                .hueRotation(Angle.degrees(180))
                    //                .saturation(5.5)
                    //                .grayscale(5)
                    //                .luminanceToAlpha()
//                    .clipShape(Circle())
//                    .mask(VStack{
//                        Spacer()
//                        Text("Mahesh P").font(.system(size: 64, weight: .bold, design: .default))
//                        Spacer()
//                    })
//                    .scaleEffect(CGSize(width: 1.5, height: 1))
//                    .scaleEffect(x: 1.5, y: 1, anchor: .bottomLeading)
//                    .rotationEffect(Angle.init(degrees: 90), anchor: UnitPoint.init(x: 0, y: 1))
                    .rotation3DEffect(
                        Angle.init(degrees: 45),
                        axis: (x: CGFloat(0.4), y: CGFloat(0.4), z: CGFloat(0.2)))
            }
        }
    }
}

struct ImageInDetailTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ImageInDetailTemplate()
    }
}
