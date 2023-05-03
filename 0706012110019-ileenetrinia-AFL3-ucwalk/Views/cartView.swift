//
//  cartView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 03/05/23.
//

import SwiftUI

struct cartView: View {
    var cafe: Cafe
    var cart: keranjang
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center){
            Text("Your Cart")
            
            var total = 0
            
            if cart.isEmpty {
                print("\nYou did not buy any item yet!")
            }
            
            cart.forEach({ (cafe, cart) in
                print("\nYour order in \(cafe): ")
                
                cart.forEach({ (item, data) in
                    total += data.amount * data.price
                    print("- \(item) \(data.amount)x")
                })
                
            })
            
            print("\nDo you want to check out or no?")
            Button(action: {
                checkOutView()
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Check Out")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Button(action: {
                ContentView()
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            
//            var inputcart: String = ""
//            while true{
//                inputcart = readLine()!
//                if inputcart.caseInsensitiveCompare("C") == .orderedSame{
//                   checkout(total: total)
//                } else if inputcart.caseInsensitiveCompare("b") == .orderedSame{
//                    main()
//                } else {
//                    print("\n😡 Please input a valid input 😡\n")
//                    continue
//                }
//                break
//            }
            
        }
    }
}

struct cartView_Previews: PreviewProvider {
    static var previews: some View {
        cartView()
    }
}
