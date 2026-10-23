//
//  ContentView.swift
//  ExamenParcial2_20057
//
//  Created by win603 on 21/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ComicsVM().dummyData()
    var body: some View {
        NavigationStack{
            VStack(alignment: .center){
                Text("Batcave").font(.title)
                HStack{
                    List(){
                        ForEach(viewModel) { comic in
                            NavigationLink(destination: Text(comic.sinopsis)){
                                ComicCard(image: comic.imagen, title: comic.titulo)
                                    .padding(.trailing)
                            }
                            
                        }
                    }
                }
                
                
            }
        }.navigationTitle("Batcave")
    }
}

struct ComicCard: View {
    var image: String
    var title: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(title).font(.headline)
        }
    }
}


#Preview{
    ContentView()
}
