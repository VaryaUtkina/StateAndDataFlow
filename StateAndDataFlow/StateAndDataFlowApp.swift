//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var loginViewVM = LoginViewViewModel(
        user: StorageManager.shared.fetchUser()
    )
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(loginViewVM)
    }
        
}
