//
//  cartView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 03/05/23.
//

import SwiftUI

struct cartView: View {
//    var cafe: Cafe
//    var cart: keranjang
//    var total = 0
    
    @Environment(\.presentationMode) var presentationMode
//
//    func showPurchasedProduct() -> Int {
//        keranjang.getShoppingCart().forEach({ (shop, carts) in
//            print("Products from \(shop):")
//            carts.forEach({ product, data in
//                print("- \(product) \(data.amount)x")
//                total += data.amount * data.price
//            })
//        })
//
//        return total
//    }
    
    var body: some View {
//        VStack(alignment: .center){
            Text("🛒 Your orders:")
//
//            if keranjang.getShoppingCart().isEmpty {
//                print("Your shopping cart is still empty :(")
//                Button(action: {
//                    ContentView()
//                    presentationMode.wrappedValue.dismiss()
//                }) {
//                    Text("Back to the Cafetaria List")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                }
//
//                //                clearScreen()
//                ContentView()
//            }
//
//            // get the total amount
//            let total = showPurchasedProduct()
//            print("💵 Total amount needed to pay: \(total)")
//            PayView(total: total).view()
//        }
//
//        keranjang.getShoppingCart().forEach({ (shop, carts) in
//            print("Your order from \(cafe):")
//            carts.forEach({ product, data in
//                print("- \(product) x\(data.amount)")
//                total += data.amount * data.price
//            })
//        })
//
//        return total
//
//        Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//        }) {
//            Text("Back")
//        }
//    }
//}
//
//
//struct PayView {
//    var total: Int
//
//    init(total: Int) {
//        self.total = total
//    }
//
//    func view() -> Void {
//        let money = components.IntegerInput(question: "Please enter the amount of money: ")
//
//        if money.value < 0 {
//            print("Amount is invalid! \n")
//            view()
//        }
//
//        if money.value == 0 {
//            print("Amount cannot be zero! \n")
//            view()
//        }
//
//        if money.value < total {
//            print("Insufficient payment amount for this transaction! (need \(total)) \n")
//            view()
//        }
//
//        print("Your total order: \(total)")
//
//
//        if money.value > total {
//            print("You pay: \(money.value) Change: \(money.value - total)")
//        } else {
//            print("You pay: \(money.value) (no change)")
//        }
//
//        // clear the shopping cart
//        keranjang.resetShoppingCart()
//        print("Enjoy your meals!")
//        //code button back here
//
//        // back to main menu
//        //        clearScreen()
//        ContentView()
    }
}

struct cartView_Previews: PreviewProvider {
    static var previews: some View {
        cartView()
    }
}
