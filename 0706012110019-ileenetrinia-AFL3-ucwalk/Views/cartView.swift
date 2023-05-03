//
//  cartView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 03/05/23.
//

import SwiftUI

struct cartView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var keranjang: ModelData
    //yg dipanggil oleh environmentobject itu adalah yg diobservablekan
    
    //    func showPurchasedProduct() -> Int {
    //        var total = 0
    //dia dari file keranjang, diputer dulu ke modeldata carts, trs baru bisa balik ke extract
    //
    //        extract.forEach({ item in
    //            Text("- \(item.name) \(item.amount)x")
    //        })
    //
    //        total += item.amount * item.price
    //        keranjang.carts.isi.forEach({ (item) in
    //            Text("Products from \(item.cafename):")
    //            cafes.forEach({ item in
    //                Text("- \(item.name) \(item.amount)x")
    //                total += item.amount * item.price
    //            })
    //        })
    //        return total
    //    }
    
    var body: some View {
        Text("Your orders:")
        
        if keranjang.isi.isEmpty {
            print("Your shopping cart is still empty :(")
            Button(action: {
                CafetariaListView()
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back to the Cafetaria List")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        } else {
            var extract = keranjang.carts.extractAllCafeNames()
            
            VStack {
                List {
                    ForEach(extract) { storeVisit in
                        Section(header:Text(storeVisit.myName)){
                            
                            let selectedItems = keranjang.isi.filter {
                                $0.storeName == storeVisit.myName }
                            
                            ForEach(selectedItems) { cartItem in
                                
                                VStack(alignment: .leading) {
                                    Text(cartItem.name)
                                        .fontWeight(.medium)
                                    Text("\(cartItem.price) x \(cartItem.quantity) = \(cartItem.price*cartItem.quantity)")
                                        .fontWeight(.light)
                                }
                            }
                        }
                    }
                    
                    // Print total here
                    Section(header: Text("You need to pay this:")
                        .foregroundColor(.black)
                    ){
                        let bills = keranjang.calculateTotalBill()
                        Text("Rp\(bills).000")
                    }
                    
                    // Option to break
                    Section(header: Text("")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    ){
                        HStack{
                            Spacer()
                            Button("Check Out", action:{
                                checkOutView()
                            })
                            .sheet(
                                isPresented: $showCheckOut,
                                onDismiss: {
                                    if paymentSucceeded {
                                        self.presentationMode.wrappedValue.dismiss()
                                        keranjang.contents.removeAll()
                                    }
                                }) {
                                    checkOutView(paymentSucceeded: $paymentSucceeded)
                                    ContentView()
                                    Spacer()
                                }
                        }
                        
                    }
                }
                //
                //        // get the total amount
                //        let total = showPurchasedProduct()
                //        print("💵 Total amount needed to pay: \(total)")
                //        PayView(total: total).view()
                
                
                //        Button(action: {
                //            self.presentationMode.wrappedValue.dismiss()
                //        }) {
                //            Text("Back")
                //        }
                //    }
                //}
                //
                //
                //        func view() -> Void {
                //            let money = components.IntegerInput(question: "Please enter the amount of money: ")
                //
                //            if money.value < 0 {
                //                print("Amount is invalid! \n")
                //                view()
                //            }
                //
                //            if money.value == 0 {
                //                print("Amount cannot be zero! \n")
                //                view()
                //            }
                //
                //            if money.value < total {
                //                print("Insufficient payment amount for this transaction! (need \(total)) \n")
                //                view()
                //            }
                //
                //            print("Your total order: \(total)")
                //
                //
                //            if money.value > total {
                //                print("You pay: \(money.value) Change: \(money.value - total)")
                //            } else {
                //                print("You pay: \(money.value) (no change)")
                //            }
                //
                // clear the shopping cart
                // back to main menu
                //        clearScreen()
                
            }}
        
        struct cartView_Previews: PreviewProvider {
            static var previews: some View {
                cartView()
                    .environmentObject(ModelData)
            }
        }
    }
}
