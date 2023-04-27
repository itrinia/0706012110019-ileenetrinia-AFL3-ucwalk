//
//  CafetariaDetail.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI


struct CafetariaDetailView: View {
    let cafe: Cafetaria
    
    var body: some View {
        List(cafe.menu) { menu in
            Text(menu.name)
        }
        .navigationTitle(cafe.cafe)
    }
}

struct CafetariaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafetariaDetailView(cafe: Cafetaria(idcafe: "1", cafe: "Tuku-Tuku", menu: []))
            .environmentObject(CafetariaData())
    }
}
