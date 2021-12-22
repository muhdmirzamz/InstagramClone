//
//  StoriesView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 13/12/21.
//

import SwiftUI

struct StoriesView: View {
    
    var imgArray: [String] = []
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<imgArray.count, id:\.self) {item in
                    Image(imgArray[item]).frame(width: 65, height: 65).clipShape(Circle())
                }
            }
        }
        

    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
