//
//  PasswordToggleField.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 31/12/20.
//

import SwiftUI

struct PasswordToggleField: View {
    
    @State private var password = ""
    
    var body: some View {
        PasswordToggle(placeholder: "enter password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
    }
}

struct PasswordToggle: View {
    @State private var passwordHidden = true
    @State private var passwordIcon = "eye.slash"
    
    private var password: Binding<String>
    
    private var placeholder: String
    
    init(placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self.password = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing, content: {
            if self.passwordHidden {
                SecureField(placeholder, text: password)
                    
            } else {
                TextField(placeholder, text: password).autocapitalization(.none)
                    
            }
            
            Button(action: {
                self.passwordHidden.toggle()
                if self.passwordHidden {
                    self.passwordIcon = "eye.slash"
                } else {
                    self.passwordIcon = "eye"
                }
            }, label: {
                Image(systemName: self.passwordIcon).padding(10)
            })
            
        })
    }
    
}

struct PasswordToggleField_Previews: PreviewProvider {
    static var previews: some View {
        PasswordToggleField()
    }
}
