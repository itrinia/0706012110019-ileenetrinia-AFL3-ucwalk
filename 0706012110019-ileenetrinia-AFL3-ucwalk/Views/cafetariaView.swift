//
//  cafetariaView.swift
//  0706012110019-ileenetrinia-AFL3-ucwalk
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

//struct CafeteriaView: View {
//    @State var selectedIndex: Int = 0 // to keep track of selected cafetaria
//
//    var body: some View {
//        VStack {
//            Picker(selection: $selectedIndex, label: Text("Select a Cafetaria")) {
//                ForEach(0..<cafetariaData.cafetarias.count) { index in
//                    Text(cafetariaData.cafetarias[index].cafe)
//                }
//            }.pickerStyle(SegmentedPickerStyle())
//
//            List {
//                ForEach(cafetariaData.cafetarias[selectedIndex].menu) { menu in
//                    HStack {
//                        Text(menu.name)
//                        Spacer()
//                        Text("$\(menu.price)")
//                    }
//                }
//            }
//        }
//    }
