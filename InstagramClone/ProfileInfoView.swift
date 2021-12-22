//
//  ProfileInfoView.swift
//  InstagramClone
//
//  Created by Muhd Mirza on 17/12/21.
//

import SwiftUI

struct ProfileInfoView: View {
    
    var imgSize = 80.0
    var buttonTextSize = 17.0
    
    var highlightArray = ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"]
    var highlightTitleArray = ["charleyrivers", "icybay", "hiddenlake", "lakemcdonald", "rainbowlake", "stmarylake"]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("charleyrivers").frame(width: imgSize, height: imgSize).clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4)).padding(.leading, 10).padding(.trailing, 5)
                
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("10\nPosts").padding(.leading, 10).font(.system(size: buttonTextSize)).foregroundColor(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("70\nFollowers").padding(.leading, 10).font(.system(size: buttonTextSize)).foregroundColor(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("60\nFollowing").padding(.leading, 10).font(.system(size: buttonTextSize)).foregroundColor(.black)
                    }
                }.padding(.trailing, 30)
                
            }
            
            Text("test").padding(.leading, 15)
            
            Text("This is a test account").padding(.leading, 15)
            
            HStack {
                Button {
                    
                } label: {
                    Text("Edit Profile")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .frame(width: 300, alignment: Alignment.center)
                            .padding(.top, 5)
                            .padding(.bottom, 5)
                            .border(Color.black, width: 1)
                }.padding(.leading, 15)
                
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20.0))
                        .foregroundColor(.black)
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                        .padding(.leading, 8)
                        .padding(.trailing, 8)
                        .border(Color.black, width: 1)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<highlightArray.count, id:\.self) {item in
                        VStack {
                            Image(highlightArray[item]).frame(width: 65, height: 65).clipShape(Circle())
                            Text(highlightTitleArray[item]).font(.system(size: 10.0))
                        }
                    }
                }
            }.padding(.top, 10).padding(.leading, 15)
            
        }
    }
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView()
    }
}
