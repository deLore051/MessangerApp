//
//  StorageManager.swift
//  MessangerApp
//
//  Created by Stefan Dojcinovic on 9.8.22..
//

import Foundation
import FirebaseStorage

final class StorageManager {
    
    static let shared = StorageManager()
    private let storage = Storage.storage()
    
    private init() { }
    
}
