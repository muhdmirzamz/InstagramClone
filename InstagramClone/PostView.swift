//
//  PostView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 13/12/21.
//

import SwiftUI

struct PostView: View {
    
    var imageString: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            PostTopComponentView()
            
            Image(imageString).resizable(resizingMode: .stretch).frame(height: 360)
            
            PostActionsView().padding(.top, 5)
            
            Text("72 likes").padding(.top, 8).padding(.leading, 5)
            
            HStack {
                Text("test user").fontWeight(.bold).padding(.top, 1).padding(.leading, 5)
                Text("Test caption goes here").padding(.top, 1).padding(.leading, 5)
            }
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(imageString: "icybay")
    }
}
