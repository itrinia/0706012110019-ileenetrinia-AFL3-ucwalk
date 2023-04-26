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
    let price: Int
    let menu: String
}
