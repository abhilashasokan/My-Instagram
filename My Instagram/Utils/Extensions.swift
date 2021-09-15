//
//  Extensions.swift
//  My Instagram
//
//  Created by Abhilash Asokan on 01/08/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
