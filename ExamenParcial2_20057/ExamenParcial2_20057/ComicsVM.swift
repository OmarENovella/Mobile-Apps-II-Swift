//
//  ComicsVM.swift
//  ExamenParcial2_20057
//
//  Created by win603 on 21/10/26.
//

import SwiftUI
import Foundation

struct ComicsVM{
    func dummyData() -> [ComicsModel] {
        let comics : [ComicsModel] = [
            ComicsModel(titulo: "Spiderman", imagen: "Spiderman", sinopsis: "Un estudiante ejemplar es picado por una araña ahora puede trepar"),
            ComicsModel(titulo: "Superman", imagen: "Superman", sinopsis: "Un alienigena amigable casi invencible se enamora de una reportera"),
            ComicsModel(titulo: "Batman y Robin", imagen: "Batman", sinopsis: "Un multimillonario adopta a un niño"),
            ComicsModel(titulo: "Flash", imagen: "Flash", sinopsis: "Un joven cientifico es golpeado por un rayo ahora es bien veloz"),
            ComicsModel(titulo: "Sonic", imagen: "Sonic", sinopsis: "Un erizo azul y sus amigos se enfrentan a un tal dr egman")
    ]
        
        return comics
    }
}


