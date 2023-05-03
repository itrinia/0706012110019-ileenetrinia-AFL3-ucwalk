//
//  CafetariaListView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 27/04/23.
//

import Foundation
import SwiftUI

struct CafetariaListView: View {
    
    var cafes: [Cafe] = Cafe.cafes()
    
    var body: some View {
        NavigationStack {
            List(cafes) { cafe in
                NavigationLink(cafe.cafe) {
                    CafetariaDetailView(cafedata: cafe)
                }
            }.navigationTitle("Welcome to UC-Walk!")
        }
    }
}


//saya kurang tahu cara ngedisplay nested json pak, jadi mohon maaf sampai disini saja :D
struct CafetariaListView_Previews: PreviewProvider {
    static var previews: some View {
        CafetariaListView()
          
    }
}
