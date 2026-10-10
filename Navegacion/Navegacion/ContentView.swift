//
//  ContentView.swift
//  Navegacion
//
//  Created by win603 on 14/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            NavigationLink(destination: Text("Pantalla 1")){ MovieListView().navigationTitle(
                Text("Cinepolis"))
            }
            /*NavigationLink(destination: Text("Pantalla B")){
                
                
                    
            }*/
        }
    }
}

#Preview {
    ContentView()
}
