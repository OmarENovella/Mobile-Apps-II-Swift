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
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Image(serieImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
                HStack{
                    Text(serieTitle)
                        .multilineTextAlignment(.trailing)
                }
            }
        }
    }
}

#Preview {
    SeriesView(serieTitle: "Dinastia Casillas", serieImage: "dinastia_casillas")
}
