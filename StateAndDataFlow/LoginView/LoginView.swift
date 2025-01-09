//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            TextFieldView(loginViewVM: loginViewVM)
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.nameIsValid)
        }
        .padding()
    }
}

struct TextFieldView: View {
    @ObservedObject var loginViewVM: LoginViewViewModel
    
    var body: some View {
        ZStack {
            TextField("Type your name", text: $loginViewVM.user.name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text(loginViewVM.userNameCharCount)
                    .font(.callout)
                    .foregroundStyle(loginViewVM.nameIsValid ? .green : .red)
            }
        }
    }
    
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(LoginViewViewModel())
    }
}
