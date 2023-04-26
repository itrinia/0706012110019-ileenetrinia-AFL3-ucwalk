//
//  CafetariaData.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation
import Combine

class CafetariaData: ObservableObject {
    @Published var cafetarias: [Cafetaria] = getCafetarias()
    @Published var menus: [Cafetaria.Menu] = getMenus()
}

func getCafetarias() -> [Cafetaria] {
    if keranjang.cafetarias.isEmpty {
        return load("cafetariaData.json")
    }
    return keranjang.cafetarias
}

func getMenus() -> [Cafetaria.Menu] {
    if keranjang.menus.isEmpty {
        return load("cafetariaData.json")
    }
    return keranjang.menus
}

func load(_ filename: String) -> [Cafetaria] {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode([Cafetaria].self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as :\n\(error)")
    }
}
