//
//  TopBarView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 14/12/21.
//

import SwiftUI

struct TopBarView: View {
    
    var iconFontSize = 20.0
    
    var body: some View {
        HStack {
            Text("Instagram").padding(.leading, 10).font(.system(size: 30))
            
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "plus.square").font(.system(size: iconFontSize))
                }
                
                NavigationLink(destination: ActivityView()) {
                    Image(systemName: "heart").font(.system(size: iconFontSize))
                }
                
                
                Button {
                    
                } label: {
                    Image(systemName: "message.circle").font(.system(size: iconFontSize))
                }
                
                
            }.padding(.trailing, 20)


        }
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
