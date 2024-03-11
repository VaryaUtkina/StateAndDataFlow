//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel

    var body: some View {
        if loginViewVM.user.isLoggedIn {
            ContentView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
