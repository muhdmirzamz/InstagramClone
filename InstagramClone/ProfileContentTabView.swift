//
//  ProfileContentTabView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 18/12/21.
//

import SwiftUI

struct ProfileContentTabView: View {
    
    @Binding var feedShown: String
    
    var iconSize = 25.0
    
    var body: some View {
        HStack(alignment: .center, spacing: 70) {
            Button {
                feedShown = "feed"
            } label: {
                Image(systemName: "squareshape.split.3x3").font(.system(size: iconSize))
            }

            
            Button {
                feedShown = "reels"
            } label: {
                Image(systemName: "play.rectangle").font(.system(size: iconSize))
            }
            
            Button {
                
            } label: {
                Image(systemName: "play").font(.system(size: iconSize))
            }
            
            
            Button {
                
            } label: {
                Image(systemName: "person.crop.square").font(.system(size: iconSize))
            }
        }
    }
}

struct ProfileContentTabView_Previews: PreviewProvider {
    @State static var feedShown = "feed"
    
    static var previews: some View {
        ProfileContentTabView(feedShown: $feedShown)
    }
}
