//
//  ProfileTopBarView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 17/12/21.
//

import SwiftUI

struct ProfileTopBarView: View {
    
    var iconFontSize = 20.0

    var body: some View {
        HStack {
//            Text("test user").padding(.leading, 10).font(.system(size: 30))
            
            Button {
                
            } label: {
                Text("test user").padding(.leading, 10).font(.system(size: 30)).foregroundColor(.black)
                Image(systemName: "chevron.down").font(.system(size: iconFontSize))
            }
            
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "plus.square").font(.system(size: iconFontSize))
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "text.justify").font(.system(size: iconFontSize))
                }
                
                
            }.padding(.trailing, 20)


        }
    }
}

struct ProfileTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTopBarView()
    }
}
