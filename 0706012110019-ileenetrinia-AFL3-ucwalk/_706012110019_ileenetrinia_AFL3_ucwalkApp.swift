//
//  _706012110019_ileenetrinia_AFL3_ucwalkApp.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

@main

//dibuat di main biar gampang dicari dan ga kedobel2 
struct _706012110019_ileenetrinia_AFL3_ucwalkApp: App {
    @StateObject private var keranjangs = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(keranjangs)
            //.environment..... keranjangs ini masukin ke envi nya content view
        }
    }
}
