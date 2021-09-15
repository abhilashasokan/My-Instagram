//
//  ProfileView.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 32) {
                ProfileHeaderView()
                PostGridView()
            }.padding(.top)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
