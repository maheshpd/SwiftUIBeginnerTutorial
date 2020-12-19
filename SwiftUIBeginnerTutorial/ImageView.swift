//
//  ImageView.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            
//        Image(systemName: "sun.dust.fill")
//            .font(.largeTitle)
//            .foregroundColor(.blue)
//            .padding(100)
//            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .top, endPoint: .bottom))
//            .cornerRadius(30)
//
//        Image("me")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 100, height: 100)
//            .overlay(Text("Hello World")
//                        .background(Color.white)
//                        .opacity(0.5))
            
            Image("me")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .scaledToFit()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
