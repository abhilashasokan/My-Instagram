//
//  AuthViewModel.swift
//  My Instagram
//
//  Created by logicline on 02/10/21.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthViewModel()
    
    init(){
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("LOG:: Login")
    }
    func register(withEmail email: String, password: String, image: UIImage?, fullname: String, username: String) {
        guard let image = image else { return }
        
        ImageUploader.imageUpload(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print("LOG:: \(error.localizedDescription)")
                    return
                }
                guard let user = result?.user else { return }
                let userInfo = [
                    "email": email,
                    "fullname": fullname,
                    "username": username,
                    "profileImageUrl": imageUrl,
                    "uid": user.uid
                ]
                
                Firestore.firestore().collection("users").document(user.uid).setData(userInfo) { _ in
                    self.userSession = user
                }
            }
        }
        
    }
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    func fetchUser() {
        
    }
    func resetPassword() {
        
    }
}
