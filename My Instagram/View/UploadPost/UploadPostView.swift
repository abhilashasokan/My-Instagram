//
//  UploadPostView.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if ((postImage) != nil) {
                Button(action: {}, label: {
                    Image("camera")
                        .resizable()
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .foregroundColor(.black)
                })
            }
            else {
                HStack {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    
                    TextField("Enter your caption", text: $captionText)
                }.padding()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }).padding()
            }
            Spacer()
        }
    }
}


struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
