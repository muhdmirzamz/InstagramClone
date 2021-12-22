//
//  HomeView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 17/12/21.
//

import SwiftUI

struct HomeView: View {
    
    var imgArray: [String] = []
    
    var body: some View {

        
            VStack {
                
                TopBarView()
                
                ScrollView {
                    StoriesView(imgArray: imgArray)
                    
                    ForEach(0..<imgArray.count, id:\.self) {item in
                        PostView(imageString: imgArray[item]).padding(.top, 20)
                    }
                }
            }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView(imgArray: ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"])
    }
}
