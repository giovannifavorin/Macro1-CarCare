//
//  CarViewModel.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 24/05/23.
//

import Foundation

class CarViewModel: ObservableObject{
    @Published var car: Car
    
    init(car: Car) {
        self.car = car
    }
    
    func toggle(){
        car.isFavorite.toggle()
    }
}
