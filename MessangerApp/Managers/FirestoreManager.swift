//
//  DatabaseManager.swift
//  MessangerApp
//
//  Created by Stefan Dojcinovic on 9.8.22..
//

import Foundation
import FirebaseFirestore

final class FirestoreManager {
    
    static let shared = FirestoreManager()
    private let firestore = Firestore.firestore()
    
    private init() { }
    
    
}
