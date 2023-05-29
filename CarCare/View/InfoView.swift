//
//  InfoViewÓleo.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 22/05/23.
//

import SwiftUI

struct InfoView: View {
    let info: Car.Category.Info

    var body: some View {

        VStack {
            List {
                ForEach(info.description, id: \.descriptionTips) { chapter in
                    DisclosureGroup(chapter.title) {
                        Text(chapter.descriptionTips)
                            .foregroundColor(Color("TextoList"))
                            .font(.system(size: 22, weight: .regular))
                            .listRowBackground(Color("ListRow"))
                    }.listRowBackground(Color("botao"))
                        .listRowSeparatorTint(.gray)
                        .tint(Color.gray)
                        .font(.system(size: 24, weight: .regular))
                }
            }.listStyle(.automatic)
                .scrollContentBackground(.hidden)
        }.modifier(BackgroundGradient())
    }
}
