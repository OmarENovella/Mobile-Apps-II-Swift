//
//  MovieListView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct MovieListView: View {
    var body: some View {
        movies.forEach { movie in
            MovieView(
                image: movie.image, title: movie.title
            )
        }
    }
}
    

#Preview {
    MovieListView()
}
