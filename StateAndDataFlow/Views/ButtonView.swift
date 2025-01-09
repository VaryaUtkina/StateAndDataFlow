//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 09.01.2025.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .buttonAppearance(color)
    }
}
