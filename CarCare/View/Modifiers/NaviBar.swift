//
//  NaviBar.swift
//  CarCare
//
//  Created by Giovanni Favorin de Melo on 28/05/23.
//

import SwiftUI

extension View{
    func setNavBarColor(color: Color){
        
    }
    func setNavBarTitlewColor(color: Color){
        
    }
}

extension UINavigationController{
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
    }
}
