//
//  ImageUploader.swift
//  My Instagram
//
//  Created by logicline on 03/10/21.
//

import UIKit
import Firebase

struct ImageUploader {
    static func imageUpload(image: UIImage, completion: @escaping(String)->Void) {
        guard let compressedImage = image.jpegData(compressionQuality: 0.75) else { return }
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
        
        ref.putData(compressedImage, metadata: nil) { _ , error in
            if let error = error {
                print("LOG:: Error in uploading image to firebase storage, \(error.localizedDescription)")
                return
            }
            
            ref.downloadURL { url, _ in
                guard let imageURL = url?.absoluteString else { return }
                completion(imageURL)
            }
        }
    }
}
