//
//  ActivityView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 18/12/21.
//

import SwiftUI

struct ActivityView: View {
    
    var activityArray = ["like", "follow", "like", "like", "like", "follow", "follow", "like"]
    
    var body: some View {
        
        ScrollView {
            ForEach(0..<activityArray.count, id:\.self) {index in
                ActivityItemView(itemType: activityArray[index])
            }
        }.padding(.top, 10).navigationTitle("Activity").navigationBarTitleDisplayMode(.inline)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
