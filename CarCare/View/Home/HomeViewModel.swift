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
            .init(title: "FOX", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: [""])]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "Como saber o nível do óleo?", descriptionTips: [" Analisando o nível do óleo na vareta, você pode encontrar indícios se está na hora de trocar o óleo ou não, o óleo deve estar entre os dois pontos de medição"]),
                        
                            .init(title: "Quando devo trocar o óleo?", descriptionTips: [" Em casos normais, é aconselhado trocar o óleo após 6 meses, ou a cada 10 a 15 mil Km rodados. Mas se o terreno for muito irregular, ou haver muito engarrafamentos, é indicado trocar a cada 5 a 7 mil Km. Geralmente essa informação é fornecida pelo fabricante."]),
                        
                            .init(title: "Como saber se o óleo ainda está com problemas", descriptionTips: [" Para checar se o óleo possui impurezas nele, ou se a viscosidade estiver alterada, fique atento à essas questões, o óleo novo é mais fluido, mas quando está velho pode ficar espesso ou ter grumos. A cor também pode indicar alterações, óleo novo é geralmente de cor dourada ou marrom claro, à medida que o óleo é usado, ele pode escurecer. Se o óleo estiver escuro, mas ainda tiver uma textura suave e sedosa, você ainda pode ter algum tempo antes da troca, mas se estiver preto e sujo, é hora de trocar o óleo"])
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "Cuidados com a bateria", descriptionTips:[
                                "- Dar a partida no carro com o mínimo de aparelhos elétricos ligados"]
                              //                              " - Checar os terminais da bateria: avaliar se possuem avarias, sujeira ou corrosão, isso pode indicar que haja vazamento do liquido interno da bateria",
                              //                              "- Dar a partida no carro por uns 5 minutos no caso de passar mais que 15 dias sem dirigir, isso garante uma carga extra na bateria do carro.",
                              //                              "- Tomar cuidado com a chave na ignição, deixar o carro ligado, mas sem dar a partida, consome a bateria do carro, mas não renova, encurtando a vida útil da mesma",
                              //                              "- Não esquecer o farol ligado",
                              //                              "- Temperaturas extremas podem prejudicar a longevidade da bateria, evite expor o carro a temperatura muito altas ou muito amenas."
                             )
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: [""]),
                            .init(title: "Bons cuidados", descriptionTips:[
                                    " Tomar cuidados com buracos que podem danificar bastante as rodas do carro" //"Prestar atenção à manutenção das peças relacionadas à roda"
                                 ])
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "Quando devo calibrar os pneus?", descriptionTips: [" É interessante calibrar os pneus de 15 em 15 dias, a calibragem correta dos pneus evita danos no aro"])
                            
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: [""])]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: [""])]
                        )
                ])
        ])),
        CarViewModel(car: .init(title: "POLO", img: "Gol", categories: [
            .init(title: "POLO", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: [""])]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "Como saber o nível do óleo?", descriptionTips: [" Analisando o nível do óleo na vareta, você pode encontrar indícios se está na hora de trocar o óleo ou não, o óleo deve estar entre os dois pontos de medição"]),
                        
                            .init(title: "Quando devo trocar o óleo?", descriptionTips: [" Em casos normais, é aconselhado trocar o óleo após 6 meses, ou a cada 10 a 15 mil Km rodados. Mas se o terreno for muito irregular, ou haver muito engarrafamentos, é indicado trocar a cada 5 a 7 mil Km. Geralmente essa informação é fornecida pelo fabricante."]),
                        
                            .init(title: "Como saber se o óleo ainda está com problemas", descriptionTips: [" Para checar se o óleo possui impurezas nele, ou se a viscosidade estiver alterada, fique atento à essas questões, o óleo novo é mais fluido, mas quando está velho pode ficar espesso ou ter grumos. A cor também pode indicar alterações, óleo novo é geralmente de cor dourada ou marrom claro, à medida que o óleo é usado, ele pode escurecer. Se o óleo estiver escuro, mas ainda tiver uma textura suave e sedosa, você ainda pode ter algum tempo antes da troca, mas se estiver preto e sujo, é hora de trocar o óleo"])
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "Cuidados com a bateria", descriptionTips:
                                ["- Dar a partida no carro com o mínimo de aparelhos elétricos ligados"
                              //                              " - Checar os terminais da bateria: avaliar se possuem avarias, sujeira ou corrosão, isso pode indicar que haja vazamento do liquido interno da bateria",
                              //                              "- Dar a partida no carro por uns 5 minutos no caso de passar mais que 15 dias sem dirigir, isso garante uma carga extra na bateria do carro.",
                              //                              "- Tomar cuidado com a chave na ignição, deixar o carro ligado, mas sem dar a partida, consome a bateria do carro, mas não renova, encurtando a vida útil da mesma",
                              //                              "- Não esquecer o farol ligado",
                              //                              "- Temperaturas extremas podem prejudicar a longevidade da bateria, evite expor o carro a temperatura muito altas ou muito amenas."
                             ])
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: [""]),
                            .init(title: "Bons cuidados", descriptionTips: [
                                    " Tomar cuidados com buracos que podem danificar bastante as rodas do carro" //"Prestar atenção à manutenção das peças relacionadas à roda"
                                 ])
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "Quando devo calibrar os pneus?", descriptionTips: [" É interessante calibrar os pneus de 15 em 15 dias, a calibragem correta dos pneus evita danos no aro"])
                            
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: [""])]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: [""])]
                        )
                ])
        ])),
        CarViewModel(car: .init(title: "GOL", img: "Gol", categories: [
            .init(title: "Motor", infos: [
                .init(title: "Combustível", description: [
                    .init(title: "", descriptionTips: [""])]
                ),
                
                    .init(title: "Óleo", description: [
                        .init(title: "Como saber o nível do óleo?", descriptionTips: [" Analisando o nível do óleo na vareta, você pode encontrar indícios se está na hora de trocar o óleo ou não, o óleo deve estar entre os dois pontos de medição"]),
                        
                            .init(title: "Quando devo trocar o óleo?", descriptionTips: [" Em casos normais, é aconselhado trocar o óleo após 6 meses, ou a cada 10 a 15 mil Km rodados. Mas se o terreno for muito irregular, ou haver muito engarrafamentos, é indicado trocar a cada 5 a 7 mil Km. Geralmente essa informação é fornecida pelo fabricante."]),
                        
                            .init(title: "Como saber se o óleo ainda está com problemas", descriptionTips: [" Para checar se o óleo possui impurezas nele, ou se a viscosidade estiver alterada, fique atento à essas questões, o óleo novo é mais fluido, mas quando está velho pode ficar espesso ou ter grumos. A cor também pode indicar alterações, óleo novo é geralmente de cor dourada ou marrom claro, à medida que o óleo é usado, ele pode escurecer. Se o óleo estiver escuro, mas ainda tiver uma textura suave e sedosa, você ainda pode ter algum tempo antes da troca, mas se estiver preto e sujo, é hora de trocar o óleo"])
                    ]),
                
                    .init(title: "Bateria", description: [
                        .init(title: "Cuidados com a bateria", descriptionTips: [
                                "- Dar a partida no carro com o mínimo de aparelhos elétricos ligados"
                              //                              " - Checar os terminais da bateria: avaliar se possuem avarias, sujeira ou corrosão, isso pode indicar que haja vazamento do liquido interno da bateria",
                              //                              "- Dar a partida no carro por uns 5 minutos no caso de passar mais que 15 dias sem dirigir, isso garante uma carga extra na bateria do carro.",
                              //                              "- Tomar cuidado com a chave na ignição, deixar o carro ligado, mas sem dar a partida, consome a bateria do carro, mas não renova, encurtando a vida útil da mesma",
                              //                              "- Não esquecer o farol ligado",
                              //                              "- Temperaturas extremas podem prejudicar a longevidade da bateria, evite expor o carro a temperatura muito altas ou muito amenas."
                             ])
                    ])
            ]),
            
                .init(title: "Roda", infos: [
                    .init(title: "Suspensão", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Pneu", description: [
                            .init(title: "", descriptionTips: [""]),
                            .init(title: "Bons cuidados", descriptionTips: [
                                    " Tomar cuidados com buracos que podem danificar bastante as rodas do carro" //"Prestar atenção à manutenção das peças relacionadas à roda"
                                 ])
                        ]),
                    
                        .init(title: "Calibragem", description: [
                            .init(title: "Quando devo calibrar os pneus?", descriptionTips: [" É interessante calibrar os pneus de 15 em 15 dias, a calibragem correta dos pneus evita danos no aro"])
                            
                        ])
                ]),
            
                .init(title: "Painél", infos: [
                    .init(title: "Ícones", description: [
                        .init(title: "", descriptionTips: [""])]
                    ),
                    
                        .init(title: "Alavancas", description: [
                            .init(title: "", descriptionTips: [""])]
                        ),
                    
                        .init(title: "Rádio", description: [
                            .init(title: "", descriptionTips: [""])]
                        )
                ])
        ]))
    ]
}





//                """
//
//
//
//
//        -
//
//        - Faça o rodízio dos pneus, os pneus dianteiros tem um nível de desgaste diferente dos traseiros, assim você poderá aumentar a vida útil dos mesmos
//
//        - Freadas bruscas, podem comprometer a integridade dos pneus
//     """
