//
//  Department.swift
//  MyApp
//
//  Created by win603 on 09/10/26.
//

import Foundation

struct Department: Identifiable {
    let id = UUID()
    let location: String
    let image: String
    let cost: String
    var favorite: Bool = false
}
