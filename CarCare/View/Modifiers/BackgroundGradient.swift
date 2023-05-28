//
//  BackgroundGradient.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 24/05/23.
//

import SwiftUI

struct BackgroundGradient: ViewModifier {
    func body(content: Content) -> some View {
        content.background {
            LinearGradient(
                gradient: Gradient(colors: [Color("Background1"), Color("Background2")]),
                startPoint: .topLeading,
                endPoint: .trailing
            ).ignoresSafeArea()
        }
    }
}
