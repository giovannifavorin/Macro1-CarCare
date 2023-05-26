//
//  Car.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 24/05/23.
//

import Foundation

struct Car {
    let title: String
    let img: String
    var isFavorite: Bool = false
    let categories: [Category]
    

    struct Category {
        let title: String
        let infos: [Info]

        struct Info {
            let title: String
            let description: [Tips]
            
            struct Tips {
                let title: String
                let descriptionTips: [String]//Cadê o tipo da variável?
                
            }
        }
    }
}
