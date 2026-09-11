//
//  ContentView.swift
//  PrimerParcial_OmarNovella
//
//  Created by win603 on 09/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            ScrollView {
                HStack {
                    Text("Departamentos")
                        .font(.largeTitle)
                        .multilineTextAlignment(.trailing)
                }
                VStack{
                    
                    ApartmentView(imagen: "depa1",  nombre: "GH Raices | 1F", precio: "$25,000", estrellas: "4.7", m2: "29.02")
                    ApartmentView(imagen: "depa2",  nombre: "Hmlet Raices | 8F", precio: "$14,960", estrellas: "0.0", m2: "26.15")
                    ApartmentView(imagen: "depa3",  nombre: "Oak Century | 5F", precio: "$16,400",estrellas: "4.7", m2: "25.08")
                    ApartmentView(imagen: "depa4",  nombre: "Fontana SH | 4F", precio: "$17,300", estrellas: "4.6", m2: "27.22")
                    ApartmentView(imagen: "depa5",  nombre: "Homestay IEST | 4F", precio: "$18,500", estrellas: "5.0", m2: "25.74")
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
