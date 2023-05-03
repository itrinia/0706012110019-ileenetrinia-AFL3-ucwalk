//
//  ContentView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CafetariaListView()
                .tabItem {
                    Label("Cafetarias", systemImage: "1.circle")
                }
            checkOutView()
                .tabItem {
                    Label("Cart & Check Out", systemImage: "2.circle")
                }
                .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
               
        }
    }
}
