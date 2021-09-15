//
//  PostGridView.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    var body: some View {
        LazyVGrid(columns: items,spacing: 2 ,content: {
            ForEach(0..<12) { _ in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("batman")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    })
            }
        })
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
