//
//  ContentView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isFavorite = false
    @State var searchText:String = ""
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
                    NavigationLink(destination: CarView(isFavorite: $isFavorite)){
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
