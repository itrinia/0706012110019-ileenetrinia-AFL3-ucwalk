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
            Text("babibu")
                .tabItem {
                    Label("Cafetarias", systemImage: "1.circle")
                }
            Text("nana")
                .tabItem {
                    Label("Cart & Check Out", systemImage: "2.circle")
                }
                .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(CafetariaData())
        }
    }
}
