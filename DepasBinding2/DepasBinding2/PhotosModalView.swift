//
//  PhotosModalView.swift
//  Depas navigation modal
//
//  Created by WIN603 on 20/10/26.
//
import SwiftUI

struct PhotosModalView: View {
    @Environment(\.dismiss) var dismissModal
    let apartment: Apartment

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("Diagrama del Departamento")
                        .font(.title3)
                        .fontWeight(.heavy)

                    Image(apartment.diagramImage)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(16)

                    Text("Más Fotos")
                        .font(.title3)
                        .fontWeight(.heavy)

                    ForEach(apartment.additionalPhotos, id: \.self) { photo in
                        Image(photo)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(16)
                            .clipped()
                    }
                }
                .padding(20)
            }
            .background(Color(red: 0.95, green: 0.97, blue: 1.0).ignoresSafeArea())
            .navigationTitle("Planos y Galería")
            //.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem() {
                    Button("Cerrar") {
                        dismissModal()
                    }
                    .foregroundColor(.indigo)
                }
            }
        }
    }
}
