//
//  StateInSwiftUI.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct StateInSwiftUI: View {
    
   @State private var name: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(name)
            TextField("enter name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct StateInSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        StateInSwiftUI()
    }
}
