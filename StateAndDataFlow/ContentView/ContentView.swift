//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private let contentViewVM = ContentViewViewModel()
    
    private var storageManager = StorageManager.shared

    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(
                    title: contentViewVM.buttonTitle,
                    color: .red,
                    action: contentViewVM.startTimer
                )
                
                Spacer()

                ButtonView(
                    title: "LogOut",
                    color: .blue,
                    action: loginViewVM.logout
                )
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LoginViewViewModel())
    }
}
