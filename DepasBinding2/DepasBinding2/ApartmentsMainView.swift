//
//  ApartmentsMainView.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//


import SwiftUI

struct ApartmentsMainView: View {
    @State var apartments: [Apartment] = [
        Apartment(
            location: "CDMX",
            image: "depa01",
            price: "$2,500 / noche",
            features: [
                "Wi-Fi de alta velocidad",
                "Aire acondicionado",
                "Cocina equipada",
                "Refrigerador grande",
                "Cama King Size",
                "Elevador disponible"
            ],
            diagramImage: "depaDiagram",
            additionalPhotos: ["depa01", "depa04"]
        ),
        Apartment(
            location: "Cancún",
            image: "depa02",
            price: "$3,800 / noche",
            features: [
                "Wi-Fi de alta velocidad",
                "Aire acondicionado",
                "Cocina equipada",
                "Refrigerador grande",
                "Cama Matrimonial",
                "Estacionamiento privado"
            ],
            diagramImage: "depaDiagram",
            additionalPhotos: ["depa04", "depa01"]
        ),
        Apartment(
            location: "Guadalajara",
            image: "depa03",
            price: "$2,100 / noche",
            features: [
                "Wi-Fi de alta velocidad",
                "Aire acondicionado",
                "Cocina equipada",
                "Refrigerador grande",
                "Cama Queen Size",
                "Elevador disponible"
            ],
            diagramImage: "depaDiagram",
            additionalPhotos: ["depa01", "depa05"]
        ),
        Apartment(
            location: "Monterrey",
            image: "depa04",
            price: "$2,400 / noche",
            features: [
                "Wi-Fi de alta velocidad",
                "Aire acondicionado",
                "Cocina equipada",
                "Refrigerador grande",
                "Cama King Size",
                "Elevador disponible"
            ],
            diagramImage: "depaDiagram",
            additionalPhotos: ["depa05", "depa01"]
        ),
        Apartment(
            location: "Puebla",
            image: "depa05",
            price: "$1,800 / noche",
            features: [
                "Wi-Fi de alta velocidad",
                "Aire acondicionado",
                "Cocina equipada",
                "Refrigerador grande",
                "Cama Matrimonial"
            ],
            diagramImage: "depaDiagram",
            additionalPhotos: ["depa03", "depa04"]
        )
    ]

    @State var reservedApartmentId: UUID? = nil
    @State var showAlert: Bool = false
    @State var alertMessage: String = ""

    var areAllFavorites: Bool {
        for apartment in apartments {
            if !apartment.isFavorite {
                return false
            }
        }
        return true
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    if areAllFavorites {
                        GroupBox {
                            HStack {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.teal)
                                Text("Todos han sido marcados")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.teal)
                            }
                        }
                    }

                    Toggle("Marcar todos como favoritos", isOn: Binding(
                        get: {
                            areAllFavorites
                        },
                        set: { newValue in
                            for index in 0..<apartments.count {
                                apartments[index].isFavorite = newValue
                            }
                        }
                    ))
                    .font(.headline)
                    .tint(.indigo)
                    .padding(16)
                    .background(Color.indigo.opacity(0.12))
                    .cornerRadius(16)

                    ForEach(apartments.indices, id: \.self) { index in
                        ApartmentView(
                            apartment: $apartments[index],
                            reservedApartmentId: $reservedApartmentId,
                            alertMessage: $alertMessage,
                            showAlert: $showAlert
                        )
                    }
                }
                .padding(20)
            }
            .navigationTitle("Departamentos")
            .background(Color(red: 0.95, green: 0.97, blue: 1.0).ignoresSafeArea())
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Notificación"),
                message: Text(alertMessage),
                dismissButton: .default(Text("Aceptar"))
            )
        }
    }
}
