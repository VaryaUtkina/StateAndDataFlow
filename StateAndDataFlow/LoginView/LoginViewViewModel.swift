//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import Foundation
import Combine

final class LoginViewViewModel: ObservableObject {
    @Published var user = User(name: "", isLoggedIn: false)
    
    var symbolsCount: String {
        user.name.isEmpty ? "" : "\(user.name.count)"
        }
}
