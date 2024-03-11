//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Варвара Уткина on 11.03.2024.
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
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .red, action: {})
    }
}
