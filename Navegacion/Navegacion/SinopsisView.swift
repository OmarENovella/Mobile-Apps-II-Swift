//
//  SinopsisView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct SinopsisView: View {
    @State var image: ImageResource
    @State var title: String
    @State var anho: String
    @State var duracion: String
    @State var genero: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width:  300, height: 400)
            HStack{
                Text("\(anho)")
                Spacer()
                Text("\(duracion) min")
                Spacer()
                Text(genero)
                    
            }
            .padding(60)
            Button(action: {}){
                Text("Comprar Boleto")
            }
            .padding(10)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
        }
        
    }
}

#Preview {
    SinopsisView(
        image: .REY_DE_LAS_BROMAS,
        title: "Avengers: TaqueroDays",
        anho: "2026",
        duracion: "190",
        genero: "Accion"
        
    )
}
