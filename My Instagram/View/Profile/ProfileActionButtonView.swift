//
//  ProfileActionButtonView.swift
//  My Instagram
//
//  Created by logicline on 15/09/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    var isCurrentUser = false
    var isFollowd = false
    var body: some View {
        if(isCurrentUser) {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.primary)
                    .frame(width: 320, height: 32)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray,lineWidth: 1)
                    )
            })
            
        } else {
            HStack {
                Button(action: {}, label: {
                    Text(isFollowd ? "Following" : "Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(isFollowd ? .black : .white)
                        .background(isFollowd ? Color.white : Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray ,lineWidth: isFollowd ? 1 : 0)
                        )
                }).cornerRadius(3)

                Button(action: {}, label: {
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.primary)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray ,lineWidth: 1)
                        )
                })
                
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView()
    }
}
