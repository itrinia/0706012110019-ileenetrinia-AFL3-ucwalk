//
//  CafetariaListView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 27/04/23.
//

import Foundation
import SwiftUI

struct CafetariaListView: View {
    @ObservedObject var cafetariaData = CafetariaData()
    var cafetaria: Cafetaria
    
    var body: some View {
        NavigationView {
            List(cafetariaData.cafetarias) { cafe in
                NavigationLink(destination: CafetariaDetailView(cafe: cafe)) {
                    Text(cafetaria.cafe)
                    //for each
                }
            }
            .navigationTitle("Cafeterias")
        }
        .onAppear {
            keranjang.setupcafe() // load the cafeteria data
        }
    }
}


//saya kurang tahu cara ngedisplay nested json pak, jadi mohon maaf sampai disini saja :D
struct CafetariaListView_Previews: PreviewProvider {
    static let cafetariaData = CafetariaData()
    
    static var previews: some View {
        CafetariaListView(cafetaria: CafetariaData().menus[])
            .environmentObject(cafetariaData)
    }
}
