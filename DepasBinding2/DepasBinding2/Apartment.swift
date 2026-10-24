//
//  Apartment.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//

import Foundation

struct Apartment: Identifiable {
    let id = UUID()
    let location: String
    let image: String
    let price: String
    var isFavorite: Bool = false
    let features: [String]
    let diagramImage: String
    let additionalPhotos: [String]
}
