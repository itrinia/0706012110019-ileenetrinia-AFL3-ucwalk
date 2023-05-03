//
//  checkOutView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct checkOutView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var keranjang: ModelData
    let bills = cartView.bills
    
    //declare this for payment only
    @State private var money = ""
    @Binding var paymentSucceeded: Bool
    
    var keranjang:carts {
        ModelData.keranjang
    }
    
    var body: some View {
        VStack {
            let bills = keranjang.calculateTotalBill()
            Text("You must pay this:")
                .font(.title)
            Text("Rp. \(bills),00-")
                .font(.subheadline)
                .padding(.bottom)
            
            //bayar disini
            
            TextField("Please enter the payment of your old money: ", text: $money)
                .multilineTextAlignment(.center)
            
            Text("There is no option paylater alias ngutang :)")
            
            Button("Pay Now"){
                //                if processPayment(finalBill: bills) {
                //                    paymentSucceeded = true
                //                    dismiss()
                //                }
                if money.value < 0 {
                    print("The payment is invalid! \n")
                    body()
                }
                
                if money.value == 0 {
                    print("The payment cannot be zero! \n")
                    body()
                }
                
                if money.value < cartView.bills {
                    print("The payment amount for this transaction is less than the debt! (need \(bills)) \n")
                    body()
                }
                
                print("Your total order: \(bills)")
                
                
                if money.value > bills {
                    print("You pay: \(money.value) Change: \(money.value - bills)")
                } else {
                    print("You pay: \(money.value) (no change)")
                }
                
            }
            
            Button(action: {
                ContentView()
            }) {
                Text("Cancel Check Out")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
    
    //    func processPayment(finalBill theFinalBill:Int)-> Bool {
    //
    //        let bayar = Int(money) ?? -1
    //        let isValid = bayar != -1
    //
    //        if !isValid {
    //            return false
    //        }
    //
    //        if bayar <= 0 {
    //            return false
    //        }
    //
    //        if bayar < theFinalBill {
    //            return false
    //        }
    //
    //        return true
    //    }
}


