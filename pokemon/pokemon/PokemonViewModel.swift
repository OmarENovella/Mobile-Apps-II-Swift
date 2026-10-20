//
//  PokemonViewModel.swift
//  MyApp
//
//  Created by win603 on 14/10/26.
//

import Foundation

@MainActor
@Observable final class PokemonViewModel{
    var pokemones: Pokemon = Pokemon(
        count: 0, next: "", previous: "", results: []
    )
    
    func getPokeDataFromApi(){
        let urlString = "http://pokeapi.co/api/v2/pokemon"
        
        guard let url = URL(string:  urlString)
                
    }
}
