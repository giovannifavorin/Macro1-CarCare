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
        List {Section(header: Text("Seção 1")) {
            ForEach(items, id: \.self) { item in
                Text(item)
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
