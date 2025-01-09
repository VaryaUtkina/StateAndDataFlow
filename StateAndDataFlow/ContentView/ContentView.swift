//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private let contentViewVM = ContentViewViewModel()
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .padding(.top, 100)
                .font(.largeTitle)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(
                    title: "Start",
                    color: .red,
                    action: contentViewVM.startTimer
                )
                
                Spacer()
                
                ButtonView(
                    title: "Log Out",
                    color: .blue,
                    action: loginViewVM.logout
                )
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginViewViewModel())
}
