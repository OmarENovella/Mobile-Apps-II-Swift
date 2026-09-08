//
//  productClass.swift
//  Seleccionproducto
//
//  Created by win603 on 07/09/26.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    var productName: String
    var productPrice: String
    var productImage: String
}

