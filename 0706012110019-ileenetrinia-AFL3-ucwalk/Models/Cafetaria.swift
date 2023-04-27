//
//  Cafetaria.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import SwiftUI

struct Cafetaria: Codable, Identifiable {
    var idcafe: String
    var cafe: String
    var menu: [Menu]
    
    struct Menu: Codable, Identifiable {
        var id: Int
        var name: String
        var price: Int
    }
    
    var id: String { idcafe }
}
