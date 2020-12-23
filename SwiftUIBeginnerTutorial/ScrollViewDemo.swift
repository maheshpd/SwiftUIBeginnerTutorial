//
//  ScrollViewDemo.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 23/12/20.
//

import SwiftUI

struct ScrollViewDemo: View {
    
    var images = ["1","2","3","4"]
    
    var body: some View {
//            verticalScroll()
        horizontalScroll()
    }
    
    func verticalScroll() -> some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            ForEach(self.images, id: \.self) {  image in
                CardView(images: image)
//                Image(image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(maxHeight: 400)
            }
        })
    }
    
    func horizontalScroll() -> some View {
        GeometryReader {
            geo in
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(self.images, id: \.self) { image in
//                        Image(image)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(maxWidth: geo.size.width)
                        CardView(images: image)
                    }.frame(maxWidth: geo.size.width)
                }
            })
        }
    }
    
}

struct ScrollViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemo()
    }
}

struct CardView: View {
    var images: String
    var body: some View {
        VStack {
            Image(images)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                .overlay(
                    VStack(alignment: .leading,content: {
                        Text("DEVTECHIE")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                        
                        Text("Learning made easy")
                            .foregroundColor(.white)
                        
                        HStack {
                            Image("dtLogo").resizable().frame(width: 40, height: 40)
                            
                            VStack(alignment: .leading, content: {
                                Text("SwiftUI in depth").font(.callout)
                                Text("Learn in detail").font(.footnote)
                            }).foregroundColor(.white)
                            
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("GET").font(.subheadline)
                            }).padding()
                            .frame(maxHeight: 25)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                            
                        }.padding(5)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.6).blur(radius: 4).clipShape(RoundedRectangle(cornerRadius: 10)))
                    }).padding(), alignment: .bottomLeading)
        }.clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
        .shadow(color: .gray, radius: 4, x: 0, y: 0)
        .padding()
    }
}
