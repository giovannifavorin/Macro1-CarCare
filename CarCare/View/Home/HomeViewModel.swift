//
//  LocalProvider.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 24/05/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var carViewModels: [CarViewModel] = [
        CarViewModel(car: .init(title: "FOX", img: "Gol", categories: [
            .init(title: "Motor", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: "")]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "", descriptionTips: "")
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "", descriptionTips:"")
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: ""),
                            .init(title: "", descriptionTips:"")
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "", descriptionTips: "")
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: "")]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: "")]
                        )
                ])
        ])),
        CarViewModel(car: .init(title: "POLO", img: "Gol", categories: [
            .init(title: "POLO", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: "")]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "", descriptionTips: "")
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "", descriptionTips: "")
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: "")
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "", descriptionTips: "")
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: "")]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: "")]
                        )
                ])
        ])),
        CarViewModel(car: .init(title: "GOL", img: "Gol", categories: [
            .init(title: "Motor", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: "")]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "Como saber o nível?", descriptionTips: "Analisando o nível do óleo na vareta, o óleo deve estar entre os dois pontos de medição"),
                        
                            .init(title: "Quando devo trocar o óleo?", descriptionTips: "É aconselhado trocar após 6 meses, ou a cada 10 a 15 mil Km rodados. Geralmente essa informação é fornecida pelo fabricante.")
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "Cuidados com a bateria", descriptionTips: "Dar a partida no carro com o mínimo de aparelhos elétricos ligados")
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: ""),
                            .init(title: "Bons cuidados", descriptionTips: "Tomar cuidados com buracos que podem danificar bastante as rodas do carro") //"Prestar atenção à manutenção das peças relacionadas à roda"
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "Quando devo calibrar os pneus?", descriptionTips: "É interessante calibrar os pneus de 15 em 15 dias, a calibragem correta dos pneus evita danos no aro")
                            
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: "")]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: "")]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: "")]
                        )
                ])
        ]))
    ]
}
