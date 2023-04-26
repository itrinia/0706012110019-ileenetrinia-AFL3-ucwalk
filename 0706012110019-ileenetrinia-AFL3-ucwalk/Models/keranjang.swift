//
//  keranjang.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct keranjang {
    static var cafetarias: [Cafetaria] = []
    static var menus: [Cafetaria.Menu] = []
    
    static func setupcafe() {
        if cafetarias.isEmpty {
            cafetarias = load("cafetariaData.json")
        }
    }
    
    static func setupmenu() {
        if menus.isEmpty {
            menus = load("cafetariaData.json")
        }
    }
}
