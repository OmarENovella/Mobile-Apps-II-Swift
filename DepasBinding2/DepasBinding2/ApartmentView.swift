//
//  ApartmentView.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//

import SwiftUI

struct ApartmentView: View {
    @Binding var apartment: Apartment
    @Binding var reservedApartmentId: UUID?
    @Binding var alertMessage: String
    @Binding var showAlert: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 16) {
                Image(apartment.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipped()
                    .cornerRadius(16)

                VStack(alignment: .leading, spacing: 8) {
                    Text(apartment.location)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.1, green: 0.15, blue: 0.3))

                    Text(apartment.price)
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Button(action: {
                        if reservedApartmentId == apartment.id {
                            reservedApartmentId = nil
                        } else {
                            reservedApartmentId = apartment.id
                        }
                    }) {
                        Text(reservedApartmentId == apartment.id ? "Reservado" : "Reservar")
                            .font(.caption)
                            .fontWeight(.heavy)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(reservedApartmentId == apartment.id ? Color.teal : Color.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }

                Spacer()

                Button(action: {
                    apartment.isFavorite.toggle()
                    if apartment.isFavorite {
                        alertMessage = "Departamento de \(apartment.location) ha sido establecido como preferido exitosamente"
                        showAlert = true
                    }
                }) {
                    Image(systemName: apartment.isFavorite ? "heart.fill" : "heart")
                        .font(.title)
                        .foregroundColor(apartment.isFavorite ? .pink : .gray)
                }
            }

            NavigationLink(destination: ApartmentDetailView(apartment: apartment)) {
                HStack {
                    Text("Ver detalles y características")
                        .font(.footnote)
                        .fontWeight(.heavy)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.footnote)
                }
                .foregroundColor(.indigo)
                .padding(.top, 6)
            }
        }
        .modifier(BorderStyle())
    }
}
