//
//  ContentView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 13/12/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        // make it blend together with the background, aka white
        // if the tab bar is translucent
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    @State private var imgArray = ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"]
    
    
    private func randomizeArray() {
        let internalImgArray = ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"]
        
        for index in 0..<internalImgArray.count {
            let diceRoll = Int(arc4random_uniform(UInt32(6)))
            
            let element = imgArray.remove(at: index)
            imgArray.insert(element, at: diceRoll)
            
        }
    }
    
    
    
    var body: some View {
        
        TabView {
            NavigationView {
                HomeView(imgArray: imgArray).navigationBarHidden(true)
            }
            .tabItem {
                Image(systemName: "house.fill")
            }.onAppear {
//                randomizeArray()
            }
            
            
            
            
            Text("Search Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "magnifyingglass")
            }
            
            
            Text("Reels Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "play.rectangle")
            }
            
            
            Text("Marketplace Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem {
                Image(systemName: "bag")
            }
            
            
            ProfileView()
            .tabItem {
                Image(systemName: "person.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
