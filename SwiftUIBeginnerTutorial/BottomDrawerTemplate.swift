//
//  BottomDrawerTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 21/04/21.
//

import SwiftUI

enum DraggingState {
    case dragging
    case open
    case closed
}

struct BottomDrawerTemplate: View {
    
    @State private var bottomState = CGSize.zero
    @State private var shownFull = false
    private let drawerTop: CGFloat = -790
    private let drawerTopThird: CGFloat = -790 / 3
    @State private var drawerDragging = DraggingState.closed
    @State private var mainViewBackground = Color.white
    
    var body: some View {
        ZStack {
            BackgroundView()
            DrawerView(dragging: $drawerDragging)
                .offset(x: 0, y: 860)
                .offset(y: self.bottomState.height)
                .animation(.spring())
                .gesture(DragGesture().onChanged({ (value) in
                    self.drawerDragging = DraggingState.dragging
                    self.bottomState = value.translation
                    if self.shownFull {
                        self.bottomState.height += 10
                    }
                }).onEnded({ (value) in
                    if self.bottomState.height < self.drawerTopThird && !self.shownFull {
                        self.bottomState.height = self.drawerTop
                        self.shownFull = true
                        self.drawerDragging = DraggingState.open
                        self.mainViewBackground = Color.gray
                    } else {
                        self.bottomState.height = 0
                        self.shownFull = false
                        self.drawerDragging = DraggingState.closed
                        self.mainViewBackground = Color.white
                    }
                }))
        }.background(mainViewBackground)
        .animation(.easeIn)
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct DrawerView: View {
    @Binding var dragging: DraggingState
    var body: some View {
        VStack(spacing: 20) {
            topNotchView()
            Text("Settings Drawer")
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
        }.padding(.top,8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(radius: 5)
    }
    
    func topNotchView() -> some View {
        Group {
            if dragging == .dragging {
                Rectangle()
                    .frame(width: 40, height: 5)
                    .cornerRadius(3)
                    .opacity(0.1)
            } else if dragging == .closed {
                Image(systemName: "chevron.compact.up")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            } else {
                Image(systemName: "chevron.compact.down")
            }
        }
    }
    
}


struct BackgroundView: View {
    var body: some View {
        VStack {
            HStack{
                GridCell(imageName: "sun.min")
                Spacer()
                GridCell(imageName: "sun.min.fill")
                Spacer()
                GridCell(imageName: "sunrise.fill")
            }
            .padding()
            .padding(.top, 40)
            
            HStack{
                GridCell(imageName: "moon.fill")
                Spacer()
                GridCell(imageName: "moon.circle")
                Spacer()
                GridCell(imageName: "moon.zzz.fill")
            }
            .padding()
            .padding(.top, 40)
            
            Spacer()
            
        }
    }
}

struct GridCell: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .shadow(radius: 10)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}


struct BottomDrawerTemplate_Previews: PreviewProvider {
    static var previews: some View {
        BottomDrawerTemplate()
    }
}
