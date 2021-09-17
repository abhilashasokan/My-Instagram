//
//  MainTabView.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                NotificationView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .accentColor(.primary)
            .navigationBarTitle(Text("Home"))
            .navigationBarTitleDisplayMode(.inline)
            .accentColor(.primary)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .preferredColorScheme(.dark)
    }
}
