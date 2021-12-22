//
//  ActivityItemView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 19/12/21.
//

import SwiftUI

struct ActivityItemView: View {
    
    var itemType: String
    
    
    
    var body: some View {
        
        if itemType == "follow" {
            HStack {
                Image("charleyrivers").frame(width: 65, height: 65).clipShape(Circle())
                Text("testuser2 started following you").frame(width: 180).offset(x: -10).lineLimit(nil)
                
                Button {
                
                } label: {
                    Text("Follow")
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .border(Color.purple, width: 1)
                }
            }
        }
        
        
        if itemType == "like" {
            HStack {
                Image("icybay").frame(width: 65, height: 65).clipShape(Circle())
                Text("randomuser liked your post").frame(width: 200).offset(x: -20).lineLimit(nil)
                
                Image("icybay").resizable().frame(width: 65, height: 65)
            }
        }

    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemView(itemType: "follow")
    }
}
