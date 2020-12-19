//
//  HStackAndVstack.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 18/12/20.
//

import SwiftUI

struct HStackAndVstack: View {
    
    let arr = ["Mahesh","Manoj", "Anil","Raj","Annu"]
    
    
    var body: some View {
        
        //MARK: VStack
        VStack{
            
            //MARK:- List
            List(arr,id:\.self) {
                item in
                Text(item)
            }
            
            //MARK:- Image
            Image("me")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.8)
            
            Spacer()
            
            //MARK:- Text
            Text("Hello World, this is SwiftUI making its mark in the world to make it simple for developers to design user interfaces.")
                .font(.title)
                .foregroundColor(.orange)
                .bold()
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            
            //MARK:- HStack
            HStack {
                Spacer()
                Text("Hello")
                    .padding(30)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            
            //MARK:- Button
            Button(action: {
                print("Button is pressed")
            }, label: {
                Text("Press Me")
                    .font(.system(size: 30))
                
            })
        }.padding()
    }
}

struct HStackAndVstack_Previews: PreviewProvider {
    static var previews: some View {
        HStackAndVstack()
    }
}
