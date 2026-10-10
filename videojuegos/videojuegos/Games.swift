//
//  Games.swift
//  videojuegos
//
//  Created by win603 on 21/09/26.
//

import Foundation

struct Games: Identifiable {
    let uuid: UUID = UUID()
    let id: Int
    let image: String
    let name: String
    let console: String
    let price: Float
}
