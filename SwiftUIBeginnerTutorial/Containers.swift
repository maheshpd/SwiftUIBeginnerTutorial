//
//  Containers.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 19/12/20.
//

import SwiftUI

struct Containers: View {
    var body: some View {
        ZStack {
            Text("Text 1")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(40)
                .background(Color.orange)
            Text("Text 2")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(30)
                .background(Color.black)
            Text("Text 3")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(20)
                .background(Color.red)
            Text("Text 4")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(10)
                .background(Color.blue)
        }
    }
}

struct Containers_Previews: PreviewProvider {
    static var previews: some View {
        Containers()
    }
}
