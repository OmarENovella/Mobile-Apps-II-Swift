//
//  ContentView.swift
//  videojuegos
//
//  Created by win603 on 21/09/26.
//

import SwiftUI

struct ContentView: View {
    @State var gamesViewModel = GamesViewModel().dummyData()
    var body: some View {
        //ScrollView {
            
            VStack {
                List{
                    ForEach(gamesViewModel) { game in
                        CardView(image: game.image, name: game.name, console: game.console, price: game.price)
                            .padding(.trailing)
                            .background(.white)
                            .cornerRadius(15)
                            .listRowInsets(EdgeInsets())
                    }.onDelete{
                        (indexSet) in self.gamesViewModel.remove(atOffsets: indexSet)
                    }
                }.listStyle(PlainListStyle())
            }
        //}
    }
}

#Preview {
    ContentView()
}
  
