//
//  TabViewTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct TabViewTemplate: View {
    var body: some View {
//        basicTabView()
        tabWithViews()
    }
    
    func tabWithViews() -> some View {
        TabView {
            imageSample().tabItem {
                Image(systemName: "photo.on.rectangle")
                Text("Images")
            }
            dividerSample().tabItem {
                Image(systemName: "doc.text.fill")
                Text("Divider")
            }
            
            groupSample().tabItem {
                Image(systemName: "link")
                Text("Groups")
            }
            
        }
    }
    
    func groupSample() -> some View {
        VStack {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("5")
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Group {
                Text("10")
                Text("11")
                Text("12")
            }.padding()
                      .foregroundColor(.white)
                      .background(Color.blue)
            .cornerRadius(.infinity)
                      .padding()
        }
    }
    
    
    func dividerSample() -> some View {
        VStack {
            Divider()
            Text("Divider 1")
            Divider().frame(height: 100)
            HStack {
                Spacer()
                Divider().background(Color.orange)
                Text("Another divider")
                Divider().background(Color.green)
                Spacer()
            }
        }
    }
    
    
    func imageSample() -> some View {
        Image("1")
            .resizable()
            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle().trim(from: 0.5, to: 1.0))
    }
    
    func basicTabView() -> some View {
        TabView {
            Text("Photos")
                .tabItem {
                    Image(systemName: "photo.on.rectangle")
                    Text("Photos")
                }
            
            Text("Photos for you").tabItem {
                Image(systemName: "rectangle.fill.on.rectangle.angled.fill")
                Text("For you")
            }
            
            Text("All photo albums").tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Albums")
            }
            
            Text("Search for photos").tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            
        }
    }
    
    
}

struct TabViewTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTemplate()
    }
}
