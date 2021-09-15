//
//  NotificationView.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(0 ..< 10) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
