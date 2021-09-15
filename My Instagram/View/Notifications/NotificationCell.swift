//
//  NotificationCell.swift
//  My Instagram
//
//  Created by logicline on 15/09/21.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = false
    var body: some View {
        HStack() {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            Text("batman").font(.system(size: 16, weight: .semibold)) +
                Text(": liked one of your post.")
                .font(.system(size: 15))
            Spacer()
            if(showPostImage) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
            } else {
                Button(action: {}, label: {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
