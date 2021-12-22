//
//  PostTopComponentView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 14/12/21.
//

import SwiftUI

struct PostTopComponentView: View {
    var body: some View {
        HStack {
            Image("charleyrivers").frame(width: 40, height: 40).clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4)).padding(.leading, 10).padding(.trailing, 5)
            
            
            Text("test user")
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "ellipsis").font(.system(size: 20.0)).padding(.trailing, 20)
            }
        }
    }
}

struct PostTopComponentView_Previews: PreviewProvider {
    static var previews: some View {
        PostTopComponentView()
    }
}
