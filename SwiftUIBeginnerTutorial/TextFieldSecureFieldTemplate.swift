//
//  TextFieldSecureFieldTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 23/12/20.
//

import SwiftUI

struct TextFieldSecureFieldTemplate: View {
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
//        simpleTextField()
//        customeBackgroundText()
//        customBorderText()
//        customePlaceholderText()
//        textFieldWithIcon()
//        customeShapeTextField()
        secureText()
    }
    
    func secureText() -> some View {
        VStack(alignment: .leading, content: {
            Text("Password:")
            SecureField("", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }).padding()
    }
    
    
    func customeShapeTextField() -> some View {
        VStack(alignment: .leading, content: {
            Text("Username:")
            TextField("enter username", text: $username)
                .foregroundColor(.white)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Capsule().foregroundColor(.blue))
        }).padding()
    }
    
    func textFieldWithIcon() -> some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass").foregroundColor(.gray)
                TextField("Search...", text: $username)
            }
            Divider()
        }.padding()
    }
    
    
    func simpleTextField() -> some View {
        VStack(alignment: .leading, content: {
            Text("Username:")
            TextField("enter username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }).padding()
    }
    
    func customeBackgroundText() -> some View {
        VStack(alignment: .leading, content: {
            Text("Email:")
            TextField("enter email", text: $email)
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                .padding()
        }).padding()
    }
    
    func customBorderText() -> some View {
        VStack(alignment: .leading, content: {
            Text("Username")
            TextField("enter username", text: $username)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 4))
        }).padding()
    }
    
    func customePlaceholderText() -> some View {
        ZStack(alignment: .leading, content: {
            if username.isEmpty {
                Text("enter username")
                    .italic()
                    .foregroundColor(.blue)
                    .opacity(0.5)
            }
            TextField("", text: $username)
        }).padding()
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2)).padding()
    }
    
}

struct TextFieldSecureFieldTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSecureFieldTemplate()
    }
}
