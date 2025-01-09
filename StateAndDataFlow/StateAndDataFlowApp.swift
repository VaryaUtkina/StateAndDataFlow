//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(contentViewVM)
        .environmentObject(loginViewVM)
    }
}
