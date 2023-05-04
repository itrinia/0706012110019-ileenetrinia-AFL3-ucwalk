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
    
    @State var showCheckOut = false
    @State var paymentSucceeded = false
    
    var isCartEmpty: Bool {
        keranjang.carts.isi.isEmpty
    }
    
    var extract: [cafes] {
        keranjang.carts.extractAllCafeNames()
    }
    
    var selectedItems: [cartItem] {
        keranjang.carts.isi.filter { cartItem in
            extract.contains { purchasedCafe in
                cartItem.cafename == purchasedCafe.nameOfCafe
            }
        }
    }
    
    var totalBill: Int {
        keranjang.carts.calcbill()
    }
    
    var body: some View {
        VStack {
            Text("Your orders:")
            
            if isCartEmpty {
                Text("Your shopping cart is still empty :(")
                    .padding()
                HStack{
                    Spacer()
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
                    Spacer()
                }
            } else {
                List {
                    // diextract (dari struct di keranjang) itu buat nampilin cafe apa aja yg udah dipurchased ama user
                    
                    //                    extract.forEach({ item in
                    //            Text("- \(item.na
                    
                    //difor each buat cek apakah cafe e udah pernah dibeli sblmnya ato ga, biar ga dobel klo misal user 2x ke cafenya
                    ForEach(keranjang.carts.extractAllCafeNames()) { cafe in
                        Section(header: Text(cafe.nameOfCafe)) {
                            ForEach(keranjang.carts.isi.indices.filter { index in
                                keranjang.carts.isi[index].cafename == cafe.nameOfCafe
                            }, id: \.self) { index in
                                let cartItem = keranjang.carts.isi[index]
                                VStack(alignment: .leading) {
                                    Text(cartItem.name)
                                    Text("\(cartItem.price) -> \(cartItem.quantity)piece(s) = Rp\(cartItem.price * cartItem.quantity).000")
                                }
                            }
                        }
                    }
                    Section(header: Text("You need to pay this:").foregroundColor(.black)) {
                        Text("Rp\(totalBill).000")
                    }
                    Section(header: Text("").foregroundColor(.black).fontWeight(.medium)) {
                        HStack {
                            Spacer()
                            Button("Check Out", action: { showCheckOut = true })
                                .sheet(isPresented: $showCheckOut, onDismiss: {
                                    if paymentSucceeded {
                                        presentationMode.wrappedValue.dismiss()
                                        keranjang.carts.isi.removeAll()
                                    }
                                }) {
                                    checkOutView(paymentSucceeded: $paymentSucceeded)
                                }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct cartView_Previews: PreviewProvider {
    static var previews: some View {
        cartView()
            .environmentObject(ModelData())
    }
}
