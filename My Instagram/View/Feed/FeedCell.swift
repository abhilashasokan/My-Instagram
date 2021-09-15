//
//  FeedCell.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("Joker")
                    .font(.system(size: 14, weight: .semibold))
            }.padding([.leading, .bottom], 4)
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            HStack(spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .foregroundColor(.black)
            .padding(.leading, 4)
            
            Text("3 Likes")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 4)
                .padding(.bottom, 1)
            
            HStack {
                Text("batman").font(.system(size: 16, weight: .semibold)) +
                    Text(": All men have limits. They learn what they are and then learn not to exceed them. I ignore mine.")
                    .font(.system(size: 15))
            }
            .padding(.leading, 4)
            .padding(.bottom, 1)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 4)
                .padding(.bottom, 1)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
