//
//  CarCareApp.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 16/05/23.
//

import SwiftUI

@main
struct CarCareApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(homeViewModel: .init())

        }
    }
}
