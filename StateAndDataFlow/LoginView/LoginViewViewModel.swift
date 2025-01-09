//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published var isLoggedIn = false
}
