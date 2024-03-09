//
//  StoregeManager.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.03.2024.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("userName") var userName = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    private init() {}
    
    func saveUser(name: String) {
        userName = name
        isLoggedIn = true
    }
    
    func deleteUser() {
        userName = ""
        isLoggedIn = false
    }
}

