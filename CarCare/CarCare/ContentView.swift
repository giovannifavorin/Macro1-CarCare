//
//  ContentView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ZStack {
                //-------Background--------
                LinearGradient(gradient: Gradient(colors: [Color("Background1"), Color("Background2")]), startPoint: .topLeading, endPoint: .trailing)
                    .ignoresSafeArea()
                //-------
                VStack {
                    
                    //-------Search Bar--------
                    
                    //-------
                    
                    
                    //-------Título--------
                    Text("Favoritos")
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading)
                        .padding()
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(Color.white)
                    //-------
                        
                    
                    //-------Button--------
                    NavigationLink(destination: CarView()){
                        VStack {
                            Image("Gol")
                                .resizable()
                                .scaledToFill()
                            .frame(width: .infinity, height: 200)
                            Text("GOL")
                                .foregroundColor(Color.white)
                                .font(.system(size: 20))
                        }
                    }
                    //-------
                    
                    Spacer()
                    
                }
            }
        }
    }
}

struct CarView: View{
    var body: some View{
        ZStack {
            //-------Background--------
            LinearGradient(gradient: Gradient(colors: [Color("Background1"), Color("Background2")]), startPoint: .topLeading, endPoint: .trailing)
                .ignoresSafeArea()
            //-------
            
            VStack{
                //-------Título--------
                Image("Gol")
                    .resizable()
                    .scaledToFill()
                .frame(width: .infinity, height: 200)
                .overlay(content: {
                    VStack {
                        Spacer()
                        Text("GOL")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .frame(
                                maxWidth: .infinity,
                                alignment: .bottomLeading)
                        .padding()
                    }
                })
                //-------

                
                
                VStack{
                    //-------Motor--------
                    Text("Motor")
                        .foregroundColor(.white)
                    
                    //Combustível
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Combustível")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()

                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                        
                                        
                                    }
                                    Spacer()
                                })
                    }
                    
                    //Óleo
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Óleo")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()

                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    
                    //Embreagem
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Embreagem")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    //-------
                    
                    //-------Roda--------
                    Text("Roda")
                        .foregroundColor(.white)
                    
                    //Suspensão
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Suspensão")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    
                    //Pneu
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Pneu")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    
                    //Calibragem
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Calibragem")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    //-------

                    //-------Painel--------
                    Text("Painel")
                        .foregroundColor(.white)
                    
                    //Painel
                    NavigationLink(destination: InfoViewÓleo()){
                        Rectangle()
                            .foregroundColor(.blue)// Não to conseguindo colorir
                            .frame(width: .infinity, height: 52)
                            .overlay(
                                VStack {
                                    Spacer()
                                    HStack {
                                        
                                        Text("Painel")
                                            .foregroundColor(.black)
                                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .foregroundColor(.black)
                                            .padding()
                                    }
                                    Spacer()
                                })
                    }
                    //-------
                    
                }
                
                Spacer()
            }
        }
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        CarView()
        InfoViewÓleo()
    }
}
