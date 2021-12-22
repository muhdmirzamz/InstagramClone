//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 17/12/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var feedShown = "feed"
    
    var body: some View {
        
        VStack {
            ProfileTopBarView()
            
            ScrollView {
                VStack {
                    
                    ProfileInfoView()
                    
                    ProfileContentTabView(feedShown: $feedShown).padding(.top, 15)
                    
                    ProfileFeedView(tabShown: $feedShown).padding(.top, 15)
                    ProfileFeedView(tabShown: $feedShown)
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
