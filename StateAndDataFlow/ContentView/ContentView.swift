//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var contentViewVM = ContentViewViewModel()
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private var storageManager = StorageManager.shared

    var body: some View {
        VStack {
            Text("Hi, \(storageManager.userName)!")
                .padding(.top, 100)
                .font(.largeTitle)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            StartButtonView(contentViewVM: contentViewVM)
            
            Spacer()
            
            Button(action: logOut) {
                TextButton(title: "LogOut")
            }
            .setupButtonStyle(color: .blue)
        }
    }
    private func logOut() {
        storageManager.deleteUser()
        loginViewVM.user = User(name: "", isLoggedIn: false)
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginViewViewModel())
}

struct StartButtonView: View {
    @Bindable var contentViewVM: ContentViewViewModel
    
    var body: some View {
        Button(action: contentViewVM.startTimer) {
            TextButton(title: contentViewVM.buttonTitle)
        }
        .setupButtonStyle(color: .red)
    }
}

struct TextButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
    }
}

struct ButtonViewModifier: ViewModifier {
let color: Color
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .clipShape(.rect(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 4)
            )
    }
}

extension Button {
    func setupButtonStyle(color: Color) -> some View {
        modifier(ButtonViewModifier(color: color))
    }
}
