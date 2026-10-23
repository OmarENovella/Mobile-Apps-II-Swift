//
//  MovieClass.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct MovieClass: Identifiable {
    let id = UUID()
    let title: String
    let image: ImageResource
    let anho: String
    let duracion: String
    let genero: String
}

let movies: [MovieClass] = [
        MovieClass(
            title: "Avengers: TaqueroDays", image: .REY_DE_LAS_BROMAS, anho: "2026", duracion: "190", genero: "Accion, Comedia"
        ),
        MovieClass(
            title: "Avengers: TaqueroDays", image: .REY_DE_LAS_BROMAS, anho: "2026", duracion: "190", genero: "Accion, Comedia"
        ),
        MovieClass(
            title: "Avengers: TaqueroDays", image: .REY_DE_LAS_BROMAS, anho: "2026", duracion: "190", genero: "Accion, Comedia"
        ),
        MovieClass(
            title: "Avengers: TaqueroDays", image: .REY_DE_LAS_BROMAS, anho: "2026", duracion: "190", genero: "Accion, Comedia"
        ),
        MovieClass(
            title: "Avengers: TaqueroDays", image: .REY_DE_LAS_BROMAS, anho: "2026", duracion: "190", genero: "Accion, Comedia"
        )
]
