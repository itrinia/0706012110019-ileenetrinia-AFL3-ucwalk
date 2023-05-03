//
//  CafetariaDetail.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI

struct CafetariaDetailView: View {
    let cafe: Cafe
    
    @State private var showAlert = false
    @State private var selectedMenu: CafeMenuItem?
    
    
    var body: some View {
        
        List(cafe.menu) { menu in
            Text(menu.name)
                .onTapGesture {
                    selectedMenu = menu
                    showAlert = true
                }
            
            
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert"),
                message: Text("\(selectedMenu!.name)"),
                dismissButton: .default(Text("OK"))
            )
        }
        .navigationTitle(cafe.cafe)
    }
}

struct CafetariaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafetariaDetailView(cafe: Cafe.cafes().first!)
    }
}
