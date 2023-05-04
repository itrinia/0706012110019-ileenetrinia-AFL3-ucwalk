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
            Text("Rp. \(bills).000")
                .font(.subheadline)
                .padding(.bottom)
            
            //bayar disini
            
            TextField("Please enter the payment of your old money: ", text: $money)
                .multilineTextAlignment(.center)
            
            Text("There is no option paylater alias ngutang :)\n\n")
            
            Button("Pay Now"){
                let paymentAmount = Int(money) ?? 0
                
                if paymentAmount < 0 {
                    // Display an error message
                    Text("The payment is invalid! \n")
                    return
                }
                
                if paymentAmount == 0 {
                    // Display an error message
                    Text("The payment can't be zero!\nps: there is no ngutang in here!")
                    return
                }
                
                if paymentAmount < bills {
                    // Display an error message
                    Text("The payment amount for this transaction is less than the debt! (need Rp\(bills)) \n")
                    return
                }
                
                Text("Your total order: \(bills)")

                
                if Int(money) ?? 0 > bills {
                    Text("You pay: \(Int(money) ?? 0) Change: \(Int(money) ?? 0 -  bills)")
                } else {
                    Text("You pay: \(Int(money) ?? 0) (no change)")
                }
                
                // Update the paymentSucceeded binding to true
                self.paymentSucceeded = true
                
                // Dismiss the view
                self.dismiss()
            }
            
            
            HStack{
                Spacer()
                NavigationLink(destination: CafetariaListView()) {
                    Text("Cancel Checkout")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}


