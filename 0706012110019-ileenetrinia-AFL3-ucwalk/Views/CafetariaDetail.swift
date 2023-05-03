//
//  CafetariaDetail.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI

struct CafetariaDetailView: View {
    var cafe: Cafe
    
    @State private var showAlert = false
    @State private var quantity = 1
    @State private var selectedMenu: CafeMenuItem
    
    init(cafedata: Cafe) {
        cafe = cafedata
        selectedMenu = cafe.menu.first!
    }
    
    
    var body: some View {
        
        List(cafe.menu) { menu in
            Text(menu.name).onTapGesture {
                selectedMenu = menu
                showAlert = true
            }
            
        }
        .sheet(isPresented: $showAlert) {
            AddProductAmount(cafename: cafe.cafe, selectedMenu: $selectedMenu)
        }
        .navigationTitle(cafe.cafe)
        
    }
}

struct CafetariaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafetariaDetailView(cafedata: Cafe.cafes().first!)
    }
}
