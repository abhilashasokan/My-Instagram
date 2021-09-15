//
//  ProfileHeaderView.swift
//  My Instagram
//
//  Created by logicline on 15/09/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image("batman")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Spacer()
                HStack (spacing: 16) {
                    UserStatView(value: 1, title: "Posts")
                    UserStatView(value: 34, title: "Followers")
                    UserStatView(value: 2, title: "Following")
                }.padding(.trailing, 32)
            }
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("Billionaire industrialist and notorious playboy")
                .font(.system(size: 14))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }.padding(.top)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
