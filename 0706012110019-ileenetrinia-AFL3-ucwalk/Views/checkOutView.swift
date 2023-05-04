//
//  checkOutView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct checkOutView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var keranjang: ModelData
    
    //declare this for payment only
    @State private var money = ""
    @Binding var paymentSucceeded: Bool
    @State private var paymentStatus = ""
    
    var shoppingCart: keranjang{
        keranjang.carts
    }
    
    var body: some View {
        VStack {
            let bills = keranjang.carts.calcbill()
            Text("You must pay this:")
                .font(.title)
            Text("Rp. \(bills).000")
                .font(.title)
                .padding(.bottom)
            Text("Please input without '000'")
                .font(.subheadline)
            
            //bayar disini
            
            TextField("Please enter the payment amount:", text: $money)
                .padding(.vertical)
                .multilineTextAlignment(.center)
//
//            NavigationLink(destination: CafetariaListView(), isActive: $paymentSucceeded) {
//                CafetariaListView()
//            }
//            .hidden()
            HStack {
                Spacer()
                Button("Pay Now") {
                    let paymentAmount = Int(money) ?? 0
                    let bills = keranjang.carts.calcbill()
                    
                    if paymentAmount < 0 {
                        paymentStatus = "Invalid payment amount"
                    } else if paymentAmount == 0 {
                        paymentStatus = "Payment amount cannot be zero"
                    } else if paymentAmount < bills {
                        paymentStatus = "Payment amount is less than the total bill"
                    } else {
                        let change = paymentAmount - bills
                        if change == 0 {
                            paymentStatus = "Payment received, no change"
                        } else {
                            paymentStatus = "Payment received, change: Rp\(change).000"
                        }
                        paymentSucceeded = true // set paymentSucceeded to true after successful payment
                    }
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                Spacer()
            }
            
            Text(paymentStatus)
                .foregroundColor(paymentStatus.isEmpty ? .clear : .red) // Hide text if no status to show
                .padding(.top)
            
        }
        
        
        HStack{
            Spacer()
            Button(action: {
                // This will dismiss the current view
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}



