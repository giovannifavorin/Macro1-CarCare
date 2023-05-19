//
//  TesteView.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 17/05/23.
//

import SwiftUI

struct TesteView: View {
    let items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!").padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {
                            print("OLO")
                        }, label: {
                            Image(systemName: "star")
                        })
                    }
                }
        }
    }
}


struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
