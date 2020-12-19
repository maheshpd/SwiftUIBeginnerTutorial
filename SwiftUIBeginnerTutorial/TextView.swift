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
            
            Text("hello").font(.subheadline)
        }.font(.system(size: 30))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
