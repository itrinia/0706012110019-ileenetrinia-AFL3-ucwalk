//
//  Cafetaria.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Cafetaria: Hashable, Codable {
    var cafe: String = ""
    let menu: [Menu]
    
    struct Menu: Hashable, Codable {
        var id: Int = 0
        var name: String = ""
        var price: Int = 0
    }
}
