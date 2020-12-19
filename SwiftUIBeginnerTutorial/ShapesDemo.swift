//
//  ShapesDemo.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct ShapesDemo: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(.all)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
            
            Text("Rectangle")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(.blue).padding()
            
            Spacer()
        }
        
        
    }
}

struct ShapesDemo_Previews: PreviewProvider {
    static var previews: some View {
        ShapesDemo()
    }
}
