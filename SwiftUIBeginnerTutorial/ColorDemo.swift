//
//  ColorDemo.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct ColorDemo: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
            
            Color.blue
                .overlay(Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100), alignment: .topLeading)
                .overlay(Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100), alignment: .topTrailing)
                .overlay(Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100), alignment: .bottomLeading)
                .overlay(Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100), alignment: .bottomTrailing)
                .background(Circle())
                .overlay(Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100), alignment: .center)
            
        }
    }
}

struct ColorDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorDemo()
    }
}
