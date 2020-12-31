//
//  FloatingActionButton.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 27/12/20.
//

import SwiftUI

struct FloatingActionButton: View {
    
    @State private var showMenu = false
    var action = ["gauge.badge.plus","folder.fill","paperplane.fill"]
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .trailing, content: {
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        if showMenu {
                            VStack {
                                Text("Name")
                            }
                        }
                    }
                }
            })
        }
    }
}

struct FloatingActionButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingActionButton()
    }
}
