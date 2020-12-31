//
//  UnderlineTextFieldView.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct UnderlineTextFieldView: View {
    
    @State var username = ""
    @State var email = ""
    
    var body: some View {
        VStack {
            UnderlineTextField(placeholder: "Enter username", text: $username, lineThickness: 1.0, inactiveColor: Color.gray, activeColor: .red).padding()
            
            UnderlineTextField(placeholder: "Enter email", text: $email, lineThickness: 1.0, inactiveColor: .gray, activeColor: .red).padding()
        }
    }
}

struct UnderlineTextField: View {
    private var text: Binding<String>
    private var placeholder: String
    private var lineThickness: CGFloat
    private var inactiveLineColor: Color
    private var activeLineColor: Color
    @State private var lineColor: Color
    
    init(placeholder: String = "", text: Binding<String>, lineThickness: CGFloat = 1.0, inactiveColor: Color = .gray, activeColor: Color = .black) {
        self.text = text
        self.placeholder = placeholder
        self.lineThickness = lineThickness
        self.inactiveLineColor = inactiveColor
        self.activeLineColor = activeColor
        _lineColor = State(initialValue: self.inactiveLineColor)
    }
    
    var body: some View {
        VStack {
            TextField(placeholder, text: text, onEditingChanged: {
                editingChanged in
                if editingChanged {
                    self.lineColor = self.activeLineColor
                } else {
                    self.lineColor = self.inactiveLineColor
                }
            })
            Rectangle().frame(height: lineThickness, alignment: .bottom).foregroundColor(lineColor)
        }
    }
    
}


struct UnderlineTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineTextFieldView()
    }
}
