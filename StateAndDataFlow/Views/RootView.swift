//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        Group {
            if loginViewVM.user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
