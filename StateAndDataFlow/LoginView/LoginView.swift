//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private var storageManager = StorageManager.shared
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 40)
                TextField("Enter your name", text: $loginViewVM.user.name)
                    .multilineTextAlignment(.center)
                Text(loginViewVM.symbolsCount)
                    .frame(width: 40)
                    .foregroundColor(
                        loginViewVM.user.name.count < 3 ? .red : .green
                    )
                
            }
            .padding()
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(loginViewVM.user.name.count <= 2)
        }
    }
    
    private func login() {
        if loginViewVM.user.name.count > 2 {
            storageManager.saveUser(name: loginViewVM.user.name)
        }
    }
}
    
#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
