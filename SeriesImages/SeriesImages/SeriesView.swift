//
//  SeriesView.swift
//  SeriesImages
//
//  Created by win603 on 04/09/26.
//

import SwiftUI

struct SeriesView: View {
    @State var serieTitle: String
    @State var serieImage: String
    @State var type: String
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Image(serieImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                        .frame(width: 250, height: 150)
                }
                HStack{
                    VStack{
                        Text(type)
                            .multilineTextAlignment(.leading)
                        Text(serieTitle)
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                    }
                }
            }
            .padding()
        }
        .background(.black)
        .foregroundStyle(.white)
    }
}

#Preview {
    SeriesView(serieTitle: "Dinastia Casillas", serieImage: "dinastia_casillas", type: "Drama")
}
