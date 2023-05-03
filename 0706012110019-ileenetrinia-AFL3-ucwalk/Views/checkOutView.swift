//
//  checkOutView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct checkOutView: View {
    Text("\n🛒🛒🛒 Checkout 🛒🛒🛒")
    Text("TOTAL PRICE: \(total)k IDR")
    
    while true {
        print("Please enter payment amount: \n[Please enter without 000]")
        if let paymentAmount = readLine(), let amount = Int(paymentAmount) {
            if amount == 0 {
                print("your payment can not be zero\n")
            } else if amount < 0 {
                print("your payment is less than zero :) \n")
            }else if amount < total {
                print("The payment amount is less than the total price.\n")
            } else {
                let change = amount - total
                print("\nYour pay: \(amount)k IDR")
                print("Change: \(change)k IDR")
                print("Thank you for shopping with us! Enjoy your meals!\n")
                shoppingCart.removeAll()
                ContentView()
            }
        } else {
            print("\nInvalid input. Please enter a valid payment amount.\n")
        }
    }
}

struct checkOutView_Previews: PreviewProvider {
    static var previews: some View {
        checkOutView()
    }
}
