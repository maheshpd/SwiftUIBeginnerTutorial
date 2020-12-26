//
//  TabViewTemplate.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct TabViewTemplate: View {
    var body: some View {
        basicTabView()
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
