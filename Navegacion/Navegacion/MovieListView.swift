//
//  MovieListView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct MovieListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(movies) { movie in
                    NavigationLink(destination: SinopsisView(
                        image: movie.image,
                        title: movie.title,
                        anho: movie.anho,
                        duracion: movie.duracion,
                        genero: movie.genero
                    )) {
                        MovieView(
                            image: movie.image, title: movie.title
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
    }
}

#Preview {
    MovieListView()
}
