//
//  BorderStyle.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//

import SwiftUI

struct BorderStyle: ViewModifier {
    func body(content view: Content) -> some View {
        view
            .padding(16)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 4)
    }
}
