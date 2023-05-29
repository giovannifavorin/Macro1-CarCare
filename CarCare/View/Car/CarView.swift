//
//  CarView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 22/05/23.
//

import SwiftUI

struct CarView: View{
    @ObservedObject var viewModel: CarViewModel
    
    var body: some View{
         
        VStack{
            
            List{
                Image(viewModel.car.img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: 136)
                    .padding()
                ForEach(viewModel.car.categories, id: \.title) { category in
                    Section(header: Text(category.title).foregroundColor(.white).font(.title3)) {
                        ForEach(category.infos, id: \.title) { info in
                            NavigationLink(destination: InfoView(info: info)) {
                                Text("\(info.title)")
                                    .foregroundColor(Color("TextoList"))
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 16))
                            }.listRowSeparatorTint(.black)
                        }
                    }.listRowBackground(Color("botao"))
                }
            }.navigationTitle(viewModel.car.title)
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)
            
        }.modifier(BackgroundGradient())
        
        
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        viewModel.toggle()
                    }, label: {
                        Image(systemName: viewModel.car.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(viewModel.car.isFavorite ? Color("Favoritar") : .gray)
                    })
                }
            }
    }
}
