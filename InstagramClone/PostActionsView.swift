//
//  PostActionsView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 14/12/21.
//

import SwiftUI

struct PostActionsView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "heart").font(.system(size: 20.0))
            }
            
            Button {
                
            } label: {
                Image(systemName: "message").font(.system(size: 20.0))
            }
            
            Button {
                
            } label: {
                Image(systemName: "paperplane").font(.system(size: 20.0))
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "bookmark").font(.system(size: 20.0))
            }.padding(.trailing, 20)
        }
    }
}

struct PostActionsView_Previews: PreviewProvider {
    static var previews: some View {
        PostActionsView()
    }
}
