//
//  AuthManager.swift
//  MessangerApp
//
//  Created by Stefan Dojcinovic on 9.8.22..
//

import Foundation
import FirebaseAuth

// A singleton class for authorization of users
final class AuthManger {
    
    // "shared" is the only instance of the classes object from which we can access its methods
    static let shared = AuthManger()
    
    // A flag inicating if the user is signed in or not.
    public var isSignedIn: Bool = false
    
    private init() {}
    
    // Method used for signing in the user
    public func signIn(
        email: String,
        password: String,
        completion: @escaping (Result<Bool, Error>) -> Void) {
            Auth.auth().signIn(
                withEmail: email,
                password: password) { authResult, error in
                    // Check if the error is nil, if it is skip the else block.
                    guard error == nil else {
                        completion(.failure(error!))
                        return
                    }
                    completion(.success(true))
                }
    }
    
    // Method used for signing up a new user
    public func signUp(
        email: String,
        password: String,
        userInfo: UserInfo,
        completion: @escaping (Result<Bool, Error>) -> Void) {
            Auth.auth().createUser(
                withEmail: email,
                password: password) { authResult, error in
                    guard error == nil else {
                        completion(.failure(error!))
                        return
                    }
                    completion(.success(true))
                }
    }
}
