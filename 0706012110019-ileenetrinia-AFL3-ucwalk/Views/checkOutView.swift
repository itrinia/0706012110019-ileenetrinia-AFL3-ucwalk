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
    
    //declare this for payment only
    @State private var money = ""
    @Binding var paymentSucceeded: Bool
    
    var shoppingCart: keranjang{
        keranjang.carts
    }
    
    var body: some View {
        VStack {
            let bills = keranjang.carts.calcbill()
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
                if Int(money) ?? 0 < 0 {
                    Text("The payment is invalid! \n")
                }
                
                if Int(money) ?? 0 == 0 {
                    Text("The payment can't be zero!\nps: there is no ngutang in here!")
                }
                
                if Int(money) ?? 0 < bills {
                    Text("The payment amount for this transaction is less than the debt! (need Rp\(bills)) \n")
                }
                
                Text("Your total order: \(bills)")
                
                
                if Int(money) ?? 0 > bills {
                    Text("You pay: \(Int(money) ?? 0) Change: \(Int(money) ?? 0 -  bills)")
                } else {
                    Text("You pay: \(Int(money) ?? 0) (no change)")
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
}


