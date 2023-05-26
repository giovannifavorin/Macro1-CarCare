//
//  ContentView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 16/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(homeViewModel.carViewModels, id: \.car.title) { carViewModel in
                        NavigationLink(destination: CarView(viewModel: carViewModel)){
                            VStack {
                                Rectangle()
                                    .frame(height: 200)
                                    .overlay(
                                        Image(carViewModel.car.img)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height: 200)
                                    ).cornerRadius(20)
                                    
                                HStack {
                                    Text("\(carViewModel.car.title)")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20))
                                        .padding(.leading, 8)
                                    
                                    Spacer()
                                        .ignoresSafeArea()
                                    
                                }.frame(width: 340)
                                    .modifier(GradientButton())
    //                            Spacer()
    //                                .ignoresSafeArea()
                            }
                        }.listRowBackground(Color.clear)
                    }
                } header: {
                    Text("MotorMentor")
                }
                
                
            }
            .scrollContentBackground(.hidden)
            .modifier(BackgroundGradient())
            
            
        }
    }
}
