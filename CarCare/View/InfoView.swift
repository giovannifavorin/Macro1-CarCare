//
//  InfoViewÓleo.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 22/05/23.
//

import SwiftUI

struct InfoView: View{
    let info: Car.Category.Info

    var body: some View{
        
        //-------Informação--------
        //        TabView(){
        //            ForEach(info){ tips in
        //                VStack{
        //                    Spacer()
        //
        //                    Spacer()
        //                }
        //            }
        //        }.modifier(BackgroundGradient())
        
        VStack {
            List{
                ForEach(info.description, id: \.descriptionTips){ chapter in
                    DisclosureGroup(chapter.title) {
                        //ForEach(chapter.descriptionTips){ _ in
    //                        Text("\(chapter.descriptionTips)")
                        Text(chapter.title)
                        //}
                        
                    }
                }
            }.listStyle(.automatic)
                .scrollContentBackground(.hidden)
            
            
        }
    }
}
//-------



//Text(info.title)
//    .frame(
//        maxWidth: .infinity,
//        alignment: .center)
//    .padding()
//    .font(.system(size: 24, weight: .bold))
//    .foregroundColor(Color.white)
//Text(info.description)
//    .foregroundColor(.white)
//    .padding()
//    .font(.system(size: 24, weight: .regular))


//Text(descriptions.descriptionTips)
//    .foregroundColor(.white)
//    .padding()
//    .font(.system(size: 24, weight: .regular))
