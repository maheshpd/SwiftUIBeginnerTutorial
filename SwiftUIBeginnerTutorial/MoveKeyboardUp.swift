//
//  MoveKeyboardUp.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 01/01/21.
//

import SwiftUI

struct MoveKeyboardUp: View {
    
    var circleFrame: CGFloat = 50
    @State private var messageText = ""
    @State private var keyboardHeight: CGFloat = 0.0
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                
                Circle()
                    .stroke(Color.blue, lineWidth: 4)
                    .frame(width: circleFrame, height: circleFrame)
                    .offset(x: -55, y: 0)

                
                Circle()
                    .stroke(Color.black, lineWidth: 4)
                    .frame(width: circleFrame, height: circleFrame)
                    

                Circle()
                    .stroke(Color.red, lineWidth: 4)
                    .frame(width: circleFrame, height: circleFrame)
                    .offset(x: 55, y: 0)

                Circle()
                    .stroke(Color.yellow, lineWidth: 4)
                    .frame(width: circleFrame, height: circleFrame)
                    .offset(x: -30, y: 25)
                
                Circle()
                    .stroke(Color.green, lineWidth: 4)
                    .frame(width: circleFrame, height: circleFrame)
                    .offset(x: 30, y: 25)
            }
            Spacer()
            TextField("type your message here...", text: $messageText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 10)
        }.offset(y: -self.keyboardHeight)
        .animation(.spring())
        .onAppear{
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (notification) in
                guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
                    return
                }
                
                self.keyboardHeight = keyboardFrame.height
            }
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (notification) in
                
                self.keyboardHeight = 0
            }
        }
    }
}

struct MoveKeyboardUp_Previews: PreviewProvider {
    static var previews: some View {
        MoveKeyboardUp()
    }
}
