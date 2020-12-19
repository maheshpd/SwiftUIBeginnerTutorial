//
//  TextView.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .italic()
                .strikethrough()
                .foregroundColor(.white)
                .padding(10)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
            
            Text("hello")
//                .bold()
//                .font(.subheadline)
                .fontWeight(.medium)
//                .font(.system(.largeTitle, design: .rounded))
//                .font(.system(size: 42))
//                .font(.custom("Avenir-Next", size: 42))
                .padding()
                .background(Color.purple)
                .cornerRadius(10)
                
            
                Text("Some really really big long tall text to text our mulitline needs to see how swiftUi takes care of multiline text some more here")
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding()
                    .truncationMode(.head)
                    .lineSpacing(10)
//                    .shadow(radius: 4)
                    .shadow(color: .gray, radius: 4, x: 0, y: 10)
            
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
