//
//  Constants.swift
//  MessangerApp
//
//  Created by Stefan Dojcinovic on 9.8.22..
//

import Foundation

struct K {
    struct FStore {
        struct User {
            static let userInfoCollectionName = "userInfo"
            static let email = "email"
            static let username = "username"
            static let firstName = "firstName"
            static let lastName = "lastName"
            static let country = "country"
            static let profilePhotoURL = "profilePhotoURL"
        }
    }
    
    struct FStorage {
        static let profilePhotosCollectionName = "profilePhotos"
        static let messagesCollectionName = ""
    }
}
