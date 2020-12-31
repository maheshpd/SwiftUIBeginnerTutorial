//
//  RestaurantUI.swift
//  SwiftUIBeginnerTutorial
//
//  Created by Mahesh Prasad on 26/12/20.
//

import SwiftUI

struct RestaurantUI: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Activity")
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                    Text("Activity")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("Settings").tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }.accentColor(.purple)
    }
}

struct Home: View {
    var body: some View {
        VStack(alignment: .leading,content: {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                })// end menu button
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "person.circle")
                        .font(.title)
                }) //end profile button
                
                
            }//end top menu
            Text("Local Places")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding(.top, 15)
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Restaurant")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }).padding(.top, 30)
                .padding(.bottom, 15)
            }
            
            //horizontal scroll menu here
            MenuView()
            
            
            Spacer()
        }).padding()
    }
}

struct MenuView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 20, content: {
                VStack(alignment: .center, spacing: 12, content: {
                    Button(action: {}, label: {
                        Image("1")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 200)
                            .cornerRadius(35)
                    }) //end of button image
                    
                    Text("Drinks menu")
                        .fontWeight(.heavy) //end of title
                    
                    HStack(spacing: 5) {
                        Image(systemName: "map")
                        Text("Milites, CA")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                    
                })
            })
        })
    }
}



struct RestaurantUI_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantUI()
    }
}
