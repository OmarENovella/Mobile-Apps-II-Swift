//
//  ContentView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cart = CartModel()

    var body: some View {
        NavigationStack{
            MovieListView()
                .navigationTitle("Cinepolis")
                .toolbar {
                    NavigationLink(destination: CartView()) {
                        Image(systemName: "cart")
                        Text("\(cart.items.reduce(0) { $0 + $1.cantidad })")
                    }
                }
        }
        .environmentObject(cart)
    }
}
#Preview {
    ContentView()
}
