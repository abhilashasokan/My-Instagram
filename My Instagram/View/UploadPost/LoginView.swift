//
//  LoginView.swift
//  My Instagram
//
//  Created by logicline on 16/09/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Image("instagram_logo_white")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 20) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")

                        CustomSecureField(text: $password, placeholder: Text("Password"))
                    }
                    
                    HStack {
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Forgot Password?")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 34)
                        })
                    }
                        
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Sign in")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                            .padding(.top)
                    })
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
