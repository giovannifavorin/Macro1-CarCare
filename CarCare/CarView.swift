//
//  CarView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 22/05/23.
//

import SwiftUI

struct CarView: View{
    let topicos = ["Combustível", "Óleo", "Embreagem"]
    @Binding var isFavorite: Bool
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

                List{
                    
                    //-------Motor--------
                    Section(header: Text("Motor").foregroundColor(.white).font(.title3)){
                        NavigationLink(destination: InfoViewÓleo()){
                            
                            Text("Combustível")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                            
                        }.listRowSeparatorTint(.black)
                        
                            
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Óleo")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Embreagem")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                    }.listRowBackground(Color("botao"))
                       
                    //-------
                    
                    //-------Roda--------
                    Section(header: Text("Roda").foregroundColor(.white).font(.title3)){
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Suspensão")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Pneu")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Calibragem")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                    }.listRowBackground(Color("botao"))
                    //-------
                    
                    //-------Painel--------
                    Section(header: Text("Painel").foregroundColor(.white).font(.title3)){
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Ícones")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Alavancas")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                        NavigationLink(destination: InfoViewÓleo()){
                            Text("Rádio")
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                        }.listRowSeparatorTint(.black)
                        
                    }.listRowBackground(Color("botao"))
                    //-------
                }
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)
                
                
            }.toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        isFavorite.toggle()
                    }, label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                                        .foregroundColor(isFavorite ? .red : .gray)
                    })
                }
            }
        }
    }
}


