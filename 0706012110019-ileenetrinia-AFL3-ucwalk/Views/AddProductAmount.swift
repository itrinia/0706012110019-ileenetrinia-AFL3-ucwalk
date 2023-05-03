//
//  AddProductAmount.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 03/05/23.
//

import SwiftUI

struct AddProductAmount: View {
    
    @Binding var selectedMenu: CafeMenuItem
    @EnvironmentObject var modelData: ModelData
    @State var quantity = 0
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text(selectedMenu.name)
                .font(.title)
            HStack {
                Button(action: {
                    if quantity > 0 {
                        quantity -= 1
                    }
                }) {
                    Image(systemName: "minus.circle")
                        .font(.title)
                }
                Text("\(quantity)")
                    .font(.title)
                Button(action: {
                    quantity += 1
                }) {
                    Image(systemName: "plus.circle")
                        .font(.title)
                }
            }
            .padding(.vertical)
            Button(action: {
                let item = cartItem(menuItem: selectedMenu, quantity: quantity)
                //item = file cartItem initialize init nya dg selected menu dan quantity yg dideclare dr atas ini
                
                modelData.carts.append()
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Add to Cart")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct AddProductAmount_Previews: PreviewProvider {
    static var previews: some View {
        AddProductAmount(selectedMenu: .constant(Cafe.cafes().first!.menu.first!))
            .environmentObject(ModelData())
    }
}
