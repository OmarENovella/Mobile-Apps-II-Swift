//
//  GamesViewModel.swift
//  videojuegos
//
//  Created by win603 on 21/09/26.
//

import Foundation

struct GamesViewModel{
    func dummyData() -> [Games] {
        let games: [Games] = [
            Games(id: 1, image: "Causa", name: "Perú: El ascenso de los cerros",console: "PS5", price: 67.99),
            Games(id: 2, image: "Causa", name: "Perú: El ascenso de los cerros",console: "PS5", price: 67.99),
            Games(id: 3, image: "Causa", name: "Perú: El ascenso de los cerros",console: "PS5", price: 67.99),
            Games(id: 4, image: "Causa", name: "Perú: El ascenso de los cerros",console: "PS5", price: 19.99),
            Games(id: 5, image: "Causa", name: "Perú: El ascenso de los cerros",console: "PS5", price: 19.99)
    ]
        
        return games
    }
}

