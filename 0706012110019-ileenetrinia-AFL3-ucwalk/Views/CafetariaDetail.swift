//
//  CafetariaDetail.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

import Foundation
import SwiftUI

struct CafetariaDetail: View {
    @EnvironmentObject var cafetariaData: CafetariaData
    var cafetaria: Cafetaria
    var menu: Cafetaria.Menu
    
    var cafetariaIndex: Int {
        cafetariaData.menus.firstIndex(where: { $0.id == menu.id }) ?? 0
    }
    
    
    var body: some View {
        ScrollView {
            Text(cafetaria.cafe)
            //loop2
            
        }
    }
}


struct CafetariaDetail_Previews: PreviewProvider {
    static let cafetariaData = CafetariaData()
    
    static var previews: some View {
        CafetariaDetail(cafetaria: CafetariaData().menus[])
            .environmentObject(cafetariaData)
    }
}
