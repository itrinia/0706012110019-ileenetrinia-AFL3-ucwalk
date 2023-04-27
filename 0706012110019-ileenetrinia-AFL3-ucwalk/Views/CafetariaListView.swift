//
//  CafetariaListView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 27/04/23.
//

import Foundation
import SwiftUI

struct CafetariaListView: View {
    @EnvironmentObject var cafetariaData: CafetariaData
    
    var body: some View {
        NavigationView {
            List(cafetariaData.cafes) { cafe in
                NavigationLink(destination: CafetariaDetailView(cafe: cafe)) {
                    Text(cafe.cafe)
                }
            }
            .navigationTitle("Cafeterias")
        }
    }
}

struct CafetariaListView_Previews: PreviewProvider {
    static var previews: some View {
        CafetariaListView()
            .environmentObject(CafetariaData())
    }
}
