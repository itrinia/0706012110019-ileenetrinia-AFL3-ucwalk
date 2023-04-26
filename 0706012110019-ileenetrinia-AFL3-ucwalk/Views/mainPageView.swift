//
//  mainPageView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct mainPageView: View {
    var body: some View {
        //tabview ini navbar bwh
        TabView {
            cafetariaView()
                .tabItem {
                    Label("Cafetarias", systemImage: "1.circle")
                }
            checkOutView()
                .tabItem {
                    Label("Check Out", systemImage: "2.circle")
                }
        }
    }
}

struct mainPageView_Previews: PreviewProvider {
    static var previews: some View {
        mainPageView()
    }
}
