//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import Foundation
import Combine

final class LoginViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var isLoggedIn = false
    
    var symbolsCount: String {
            name.isEmpty ? "" : "\(name.count)"
        }
}
