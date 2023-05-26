//
//  GradientButton.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 25/05/23.
//

import SwiftUI

struct GradientButton: ViewModifier {
    func body(content: Content) -> some View {
        content.background(){
            LinearGradient(
                gradient: Gradient(colors: [.black, .clear]),
                startPoint: .topLeading,
                endPoint: .trailing
            )
        }
    }
}
