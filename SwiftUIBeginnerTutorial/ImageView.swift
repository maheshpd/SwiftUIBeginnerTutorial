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
            
        Image(systemName: "sun.dust.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(20)
            .background(Color.blue)
        
        Image("me")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .overlay(Text("Hello World")
                        .background(Color.white)
                        .opacity(0.5))
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
