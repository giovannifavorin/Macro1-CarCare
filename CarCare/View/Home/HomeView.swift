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
            ScrollView {
                LazyVGrid(
                    columns: [
                    GridItem(),
                    //GridItem(.flexible(minimum: 100, maximum: 200))
                ], spacing: 16
                ) {
                    Section{
                        ForEach(homeViewModel.carViewModels, id: \.car.title) { carViewModel in
                            NavigationLink(destination: CarView(viewModel: carViewModel)) {
                                Image(carViewModel.car.img)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Spacer()
                                            HStack {
                                                Text("\(carViewModel.car.title)")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 20))
                                                    .padding(.leading, 8)
                                                Spacer()
                                            }.modifier(GradientButton())
                                        }
                                    )
                            }.listRowBackground(Color.clear)
                        }
                    } header: {
                        HStack{
                            Text("Populares")
                                .font(.system(size: 26, weight: .bold))
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                    HStack{
                        Text("Favoritos")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    LazyHGrid(rows: [
                        GridItem(.flexible(minimum: 100, maximum: 200))
                    ], spacing: 16) {
                        
                        Section{
                            ForEach(homeViewModel.carViewModels, id: \.car.title) { carViewModel in
                                NavigationLink(destination: CarView(viewModel: carViewModel)) {
                                    Image(carViewModel.car.img)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .overlay(
                                            VStack {
                                                Spacer()
                                                HStack {
                                                    Text("\(carViewModel.car.title)")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 20))
                                                        .padding(.leading, 8)
                                                    Spacer()
                                                }.modifier(GradientButton())
                                            }
                                        )
                                }.listRowBackground(Color.clear)
                            }
                        } header: {
                            HStack{
                                Text("Favoritos")
                                    .font(.system(size: 32, weight: .bold))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            
                        }
                    }.padding()
                }.padding()
                
            }.scrollContentBackground(.hidden)
                .modifier(BackgroundGradient())
                .navigationTitle("MotorShip")
        }
    }
}


//ScrollView(.horizontal) {
//    LazyHGrid(rows: [
//        GridItem(),
//        //GridItem(.flexible(minimum: 100, maximum: 200))
//    ], spacing: 16) {
//        Section{
//            ForEach(homeViewModel.carViewModels, id: \.car.title) { carViewModel in
//                NavigationLink(destination: CarView(viewModel: carViewModel)) {
//                    Image(carViewModel.car.img)
//                        .resizable()
//                        .scaledToFit()
//                        .cornerRadius(10)
//                        .overlay(
//                            VStack {
//                                Spacer()
//                                HStack {
//                                    Text("\(carViewModel.car.title)")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20))
//                                        .padding(.leading, 8)
//                                    Spacer()
//                                }.modifier(GradientButton())
//                            }
//                        )
//                }.listRowBackground(Color.clear)
//            }
//        } header: {
//            HStack{
//                Text("MotorShip")
//                    .font(.system(size: 32, weight: .bold))
//                    .foregroundColor(.white)
//                    Spacer()
//            }
//
//        }
//    }.padding()
//
//    //LazyHGrid
//
//}.scrollContentBackground(.hidden)
//    .modifier(BackgroundGradient())
