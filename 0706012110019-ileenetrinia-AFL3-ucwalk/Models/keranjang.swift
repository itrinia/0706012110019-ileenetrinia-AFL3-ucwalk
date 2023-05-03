//
//  keranjang.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct keranjang{
    var shoppingCart: [String: [ String: (price: Int, amount: Int) ]] = [:]
    
    func addItemToCart(cafeteria: String, order: String, price: Int, amount: Int) {
        // set the cafeteria if it doesnt exist
        if shoppingCart[cafeteria] == nil {
            shoppingCart[cafeteria] = [:]
        }
        
        // set the product if it doesn't exist
        if shoppingCart[cafeteria]![order] == nil {
            shoppingCart[cafeteria]![order] = (
                price: price,
                amount: 0
            )
        }
        
        // finally, add the amount
        shoppingCart[cafeteria]![order]! = (
            price: price,
            amount: shoppingCart[cafeteria]![order]!.amount + amount
        )
    }
}
