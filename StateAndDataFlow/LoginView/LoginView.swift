//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 40)
                TextField("Enter your name", text: $loginViewVM.name)
                    .multilineTextAlignment(.center)
                Text(loginViewVM.symbolsCount)
                    .frame(width: 40)
                    .foregroundColor(
                        loginViewVM.name.count < 3 ? .red : .green
                    )

            }
            .padding()
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(loginViewVM.name.count <= 2)
        }
    }
    
    private func login() {
        if loginViewVM.name.count > 2 {
            loginViewVM.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
