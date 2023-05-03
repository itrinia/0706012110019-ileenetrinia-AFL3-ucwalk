//
//  keranjang.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct keranjang {
    typealias shoppingCartType = [ String: [ String: (price: Int, amount: Int) ] ]
    //typealias ini biar klo mau declare isi value nya itu gausah ketik yg kurung kotak, jd lgsg ketik yg shoppingcarttype itu lgsg biar simple n faster
    fileprivate static var shoppingCart: shoppingCartType = [:]
    //modify public var versi swift pke fileprivate, shoppingcart ini hanya bisa diakses di file ini aja
    
    // function to add an item to the cart
    static func addToShoppingCart(cafe: Cafe, cafeMenuItem: CafeMenuItem, amount: Int) {
        
        // do some initialization before we can add to the cart
        if shoppingCart[cafe.cafe] == nil {
            shoppingCart[cafe.cafe] = [:]
        }
        
        
        if shoppingCart[cafe.cafe]![cafeMenuItem.name] == nil {
            shoppingCart[cafe.cafe]![cafeMenuItem.name] = (
                price: cafeMenuItem.price,
                amount: 0
            )
        }
        
        
        // add to the cart after initialization is done
        shoppingCart[cafe.cafe]![cafeMenuItem.name] = (
            price: cafeMenuItem.price,
            amount: shoppingCart[cafe.cafe]![cafeMenuItem.name]!.amount + amount
        )
        
    }
    
    static func getShoppingCart() -> shoppingCartType {
        return shoppingCart
    }
    
    static func resetShoppingCart() {
        shoppingCart = [:]
    }
}

