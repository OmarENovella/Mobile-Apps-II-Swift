//
//  MovieView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct MovieView: View {
    @State var image: ImageResource
    @State var title: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width:  250, height: 500)
            
            Text(title)
            Text("Ver sinopsis")
                .foregroundColor(.blue)
            
        }
        .padding()
    }
}

#Preview {
    MovieView(image: .REY_DE_LAS_BROMAS, title: "Avengers: TaqueroDays")
}
