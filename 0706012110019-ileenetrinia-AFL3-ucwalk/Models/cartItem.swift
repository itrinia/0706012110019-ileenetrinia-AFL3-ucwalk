//
//  cartItem.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct cartItem: Hashable, Codable, Identifiable {
    //Identifiable protocol is also implemented, which requires that the struct has a property called id that uniquely identifies each instance
    let id: Int
    let name: String
    let cafename: String
    let price: Int
    var quantity: Int
    
    //diduplikat utk inisialisasi menu item n quantity dari cafemenuitem
    init(menuItem: CafeMenuItem, quantity: Int, cafename: String){
        // krn id, name (ini name menu), price itu kebetulan di 1 struct CafeMenuItem, so panggilnya CafeMenuItem aja
        // tpi krn quantity ama cafename ini single yg dipanggilnya (ga smua yg di dlm struct dipanggil), jadi panggil 1 saja trs double dot type nya apa
        self.id = menuItem.id
        self.name = menuItem.name
        self.cafename = cafename
        self.price = menuItem.price
        self.quantity = quantity
        // initialize self quantity ini lgsg ke quantity krn lgsg nunjuk quantity yg sm dg file ini
    }
}
