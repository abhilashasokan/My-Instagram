//
//  CustomSecureField.swift
//  My Instagram
//
//  Created by logicline on 16/09/21.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
            }
        }
        .padding()
        .background(Color(.init(white: 1, alpha: 0.5)))
        .cornerRadius(10)
        .foregroundColor(.white)
        .padding(.horizontal, 32)
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(text: .constant(""), placeholder: Text(""))
    }
}
