//
//  menuItem.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct menuItem: Identifiable {
    let id = UUID()
    //a uuid that identifies the menu item.
    let name: String
    //a string that represents the name of the menu item.
    let price: Double
    //a double that represents the price of the menu item.
    let imageName: String
    // a string that represents the name of the image file for the menu item.
    let description: String
    //a string that represents a brief description of the menu item.
}
