//
//  ButtonTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct ButtonTemplate: View {
    var body: some View {
        VStack {
            Button(action: {
                print("button tapped")
            }, label: {
                Text("Button here").font(.subheadline)
                Text("Click me").font(.subheadline)
                
                VStack {
                    Text("Button 2").font(.title)
                    Text("Click me").font(.subheadline)
                }
            }).padding()
            
            Text("More buttons")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Style a button")
                    .bold()
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(20)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
            }).padding(20)
            .shadow(color: .gray, radius: 10, x: 1, y: 1)
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Image("me")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("My Picture").padding(.horizontal, 10).padding(20)
            }).padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }
}

struct ButtonTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTemplate()
    }
}
