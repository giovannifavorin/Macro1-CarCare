//
//  ContentView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 16/05/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel: HomeViewModel
    @State var gridLayout: GridItem = GridItem(.flexible())
    
    var body: some View {
        NavigationView {
            ScrollView {
                Section {
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 16){
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
                    }

                } header: {
                    Text("MotorMentor")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                
            }
            .scrollContentBackground(.hidden)
            .modifier(BackgroundGradient())
            
            
        }
    }
}

