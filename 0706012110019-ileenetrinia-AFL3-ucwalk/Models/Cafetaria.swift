//
//  Cafetaria.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI

import Foundation

struct Cafe: Identifiable {
    let id: Int
    let cafe: String
    let menu: [CafeMenuItem]
    
    static func cafes() -> [Cafe] {
        return [
            Cafe(id: 1, cafe: "Tuku-Tuku", menu: [
                CafeMenuItem(id: 1, name: "Nasi Kuning", price: 20),
                CafeMenuItem(id: 2, name: "Nasi Campur", price: 18),
                CafeMenuItem(id: 3, name: "Air Mineral", price: 4),
                CafeMenuItem(id: 4, name: "lemper", price: 8),
                CafeMenuItem(id: 5, name: "teh poci", price: 5),
            ]),
            Cafe(id: 2, cafe: "Gotri", menu: [
                CafeMenuItem(id: 1, name: "Es Cendol Suji", price: 17),
                CafeMenuItem(id: 2, name: "Nasi Campur Suun", price: 28),
                CafeMenuItem(id: 3, name: "Nasi Langgi", price: 28),
                CafeMenuItem(id: 4, name: "Nasi Ayam Rendang", price: 20),
                CafeMenuItem(id: 5, name: "Tahu Telor", price: 20),
            ]),
            Cafe(id: 3, cafe: "Madam Lie", menu: [
                CafeMenuItem(id: 1, name: "Nasi Ayam Geprek", price: 25),
                CafeMenuItem(id: 2, name: "Nasi Ayam Geprek Mozarella", price: 30),
                CafeMenuItem(id: 3, name: "Nasi ayam geprek + 3T (tahu telor tempe)", price: 28),
                CafeMenuItem(id: 4, name: "Nasi Ayam bakar geprek", price: 25),
                CafeMenuItem(id: 5, name: "Nasi ayam goreng telor", price: 22),
            ]),
            Cafe(id: 4, cafe: "Kopte", menu: [
                CafeMenuItem(id: 1, name: "kopi tarik kopte", price: 12),
                CafeMenuItem(id: 2, name: "kopi tarik cincau", price: 14),
                CafeMenuItem(id: 3, name: "kopi teh tarik", price: 13),
                CafeMenuItem(id: 4, name: "kopi tarik kopte", price: 12),
                CafeMenuItem(id: 5, name: "kopi coklat tarik", price: 13),
            ]),
            Cafe(id: 5, cafe: "Xiangjia", menu: [
                CafeMenuItem(id: 1, name: "kaya toast", price: 12),
                CafeMenuItem(id: 2, name: "kacang kowa", price: 15),
                CafeMenuItem(id: 3, name: "telur setengah matang", price: 12),
                CafeMenuItem(id: 4, name: "kaya toast butter", price: 15),
                CafeMenuItem(id: 5, name: "mie kosong selat panjang", price: 25),
            ]),
            Cafe(id: 6, cafe: "Raburi", menu: [
                CafeMenuItem(id: 1, name: "Ramen Yakiniku Chicken Soup", price: 35),
                CafeMenuItem(id: 2, name: "Ramen Katsu Chicken Soup", price: 32),
                CafeMenuItem(id: 3, name: "Ramen Teriyaki Chicken Soup", price: 32),
                CafeMenuItem(id: 4, name: "Ramen Yakiniku Shrimp Soup", price: 38),
                CafeMenuItem(id: 5, name: "Ramen Katsu Shrimp Soup", price: 35),
            ]),
        ]
    }
}

struct CafeMenuItem: Identifiable {
    let id: Int
    let name: String
    let price: Int
}
