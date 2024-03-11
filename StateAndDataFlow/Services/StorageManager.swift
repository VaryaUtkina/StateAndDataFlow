//
//  StoregeManager.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.03.2024.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()

    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard let userData else { return User() }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user ?? User()
    }
    
    func clear() {
        userData = nil
    }
}

