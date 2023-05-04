//
//  keranjang.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

struct cafes: Identifiable {
    var id: Int
    var nameOfCafe:String
    
    init(id ID:Int, nameOfCafe nameOfCafes:String){
        self.id = ID
        self.nameOfCafe = nameOfCafes
    }
}

struct keranjang {
    typealias shoppingCartType = [ cartItem ]
    //typealias ini biar klo mau declare isi value nya itu gausah ketik yg kurung kotak, jd lgsg ketik yg shoppingcarttype itu lgsg biar simple n faster
    var isi: shoppingCartType = []
    
    // we need this func bcs item di cartItem itu kepisah2 n bkal kedobel2, jd we extract all cafe names that has been purchased by user
    func extractAllCafeNames() -> [cafes] {
        //pke [cafes] karena utk ngereturn cafeAsStruct ke struct cafes, itu pke [cafes]
        var allCafe: [String] = []
        var cafeAsStruct: [cafes] = []
        //we cant extend string, jd kt pke [cafes] bukan [String] krn string ga identifiable, gada protocol,, properti nya cm nama
        
        for itemz in isi {
            if !allCafe.contains( itemz.cafename ) {
                allCafe.append( itemz.cafename )
            }
        }
        
        //we need this for buat bisa jalanin for each yg atas
        for (index, namecafe) in allCafe.enumerated() {
            cafeAsStruct.append(cafes(id:index, nameOfCafe: namecafe))
        }
        return cafeAsStruct
    }
    
    //calculate total bill is here
    func calcbill() -> Int {
        var bills = 0
        
        for menuItem in isi {
            bills += menuItem.quantity * menuItem.price
        }
        return bills
        
    }
}

