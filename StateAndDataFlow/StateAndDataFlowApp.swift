//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
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
