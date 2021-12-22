//
//  ProfileFeedView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 18/12/21.
//

import SwiftUI

struct ProfileFeedView: View {
    
    @Binding var tabShown: String
    
    var imgArray = ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"]
    
    var feedPostHeight = 130.0
    var reelsPostHeight = 200.0
    
    var body: some View {
        
        if tabShown == "feed" {
            VStack {
                HStack {
                    ForEach(0...2, id:\.self) {index in
                        Image(imgArray[index]).resizable(resizingMode: .stretch).frame(height: feedPostHeight)
                    }
                }
                
                HStack {
                    ForEach(3...5, id:\.self) {index in
                        Image(imgArray[index]).resizable(resizingMode: .stretch).frame(height: feedPostHeight)
                    }
                }
            }
        }
        
        if tabShown == "reels" {
            VStack {
                HStack {
                    ForEach(0...2, id:\.self) {index in
                        Image(imgArray[index]).resizable(resizingMode: .stretch).frame(height: reelsPostHeight)
                    }
                }
                
                HStack {
                    ForEach(3...5, id:\.self) {index in
                        Image(imgArray[index]).resizable(resizingMode: .stretch).frame(height: reelsPostHeight)
                    }
                }
            }
        }
        
    }
}

struct ProfileFeedView_Previews: PreviewProvider {
    @State static var tabShown = "reels"
    
    static var previews: some View {
        ProfileFeedView(tabShown: $tabShown)
    }
}
