//
//  ClearableTextField.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct ClearableTextField: View {
    @State var text: String = ""
    var body: some View {
        TextField("enter your search here", text: $text)
            .clearable(text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

extension TextField {
    func clearable(text: Binding<String>) -> some View {
        self.modifier(TextFieldClear(text: text))
    }
}

struct TextFieldClear: ViewModifier {
    @Binding var text: String
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing, content: {
            content
            if(!text.isEmpty){
                Button(action: {
                    self.text = ""
                }, label: {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.secondary)
                }).padding(.horizontal, 10)
            }
        })
    }
}


struct ClearableTextField_Previews: PreviewProvider {
    static var previews: some View {
        ClearableTextField()
    }
}
