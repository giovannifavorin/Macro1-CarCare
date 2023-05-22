//
//  InfoViewÓleo.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 22/05/23.
//

import SwiftUI

struct InfoViewÓleo: View{
    var infoÓleo: String = """
     Sinais que podem te dizer se já está na hora de trocar o óleo:
        - Em casos normais, é aconselhado trocar o óleo após 6 meses, ou a cada 10 a 15 mil Km rodados. Mas se o terreno for muito irregular, ou haver muito engarrafamentos, é indicado trocar a cada 5 a 7 mil Km. Geralmente essa informação é fornecida pelo fabricante.
     
        - Analisando o nível do óleo na vareta, você pode encontrar indícios se está na hora de trocar o óleo ou não, o óleo deve estar entre os dois pontos de medição
     
        - Checar se o óleo possui impurezas nele, ou se a viscosidade estiver alterada, O óleo novo é mais fluido, mas quando está velho pode ficar espesso ou ter grumos. Se você notar que o óleo está espesso ou tem grumos, é hora de trocá-lo, a cor também pode indicar alterações, óleo novo é geralmente de cor dourada ou marrom claro. À medida que o óleo é usado, ele pode escurecer. Se o óleo estiver escuro, mas ainda tiver uma textura suave e sedosa, você ainda pode ter algum tempo antes da troca, mas se estiver preto e sujo, é hora de trocar o óleo
     """
    var body: some View{
        ZStack{
            //-------Background--------
            LinearGradient(gradient: Gradient(colors: [Color("Background1"), Color("Background2")]), startPoint: .topLeading, endPoint: .trailing)
                .ignoresSafeArea()
            //-------
            
            //-------Informação--------
            ScrollView{
                VStack{
                    Text("Óleo")
                        .frame(
                            maxWidth: .infinity,
                            alignment: .center)
                        .padding()
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(Color.white)
                    Text(infoÓleo)
                        .foregroundColor(.white)
                        .padding()
                        .font(.system(size: 32, weight: .regular))
                }
            }
            //-------
        }
    }
}
