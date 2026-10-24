//
//  ApartmentDetailView.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//
import SwiftUI

struct ApartmentDetailView: View {
    let apartment: Apartment
    @State private var isModalShown: Bool = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Image(apartment.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(20)
                    .clipped()

                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(apartment.location)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.1, green: 0.15, blue: 0.3))
                        Text(apartment.price)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                }

                Divider()

                Text("Características y Servicios")
                    .font(.title2)
                    .fontWeight(.heavy)

                VStack(alignment: .leading, spacing: 16) {
                    ForEach(apartment.features, id: \.self) { feature in
                        HStack(spacing: 16) {
                            Image(systemName: iconForFeature(feature))
                                .foregroundColor(.indigo)
                                .frame(width: 28)
                            Text(feature)
                                .font(.body)
                        }
                    }
                }
                .padding(20)
                .background(Color.indigo.opacity(0.1))
                .cornerRadius(16)

                Button(action: {
                    isModalShown = true
                }) {
                    HStack {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Ver Diagrama y Fotos")
                            .fontWeight(.heavy)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(18)
                    .background(Color.indigo)
                    .foregroundColor(.white)
                    .cornerRadius(16)
                }
            }
            .padding(20)
        }
        .background(Color(red: 0.95, green: 0.97, blue: 1.0).ignoresSafeArea())
        .navigationTitle("Detalles")
        //.navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isModalShown) {
            PhotosModalView(apartment: apartment)
        }
    }

    func iconForFeature(_ feature: String) -> String {
        if feature.contains("Wi-Fi") { return "wifi" }
        if feature.contains("Aire") { return "air.conditioner.horizontal" }
        if feature.contains("Cocina") { return "cooktop" }
        if feature.contains("Refrigerador") { return "refrigerator" }
        if feature.contains("Cama") { return "bed.double" }
        if feature.contains("Elevador") { return "arrow.up.arrow.down" }
        if feature.contains("Estacionamiento") { return "car.fill" }
        return "checkmark.circle"
    }
}
