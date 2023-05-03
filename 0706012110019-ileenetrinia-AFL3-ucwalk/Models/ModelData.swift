//
//  ModelData.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 03/05/23.
//

import Foundation

final class ModelData: ObservableObject {
    //biar bisa dijadiin stateobjact/obs object/envi object perlu final class observable object ini
    //semua yang mau dienvironment object harus ada di observable object
    var carts: keranjang = keranjang()
    
    init(){
    }
}
