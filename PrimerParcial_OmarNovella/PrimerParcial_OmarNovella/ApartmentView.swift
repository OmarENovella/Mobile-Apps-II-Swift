import SwiftUI

func ApartmentView(
    imagen: String,
    nombre: String,
    precio: String,
    estrellas: String,
    domicilio: String = "aaaaa",
    m2: String
) -> some View {
    VStack(alignment: .leading, spacing: 12) {
        Image(imagen)
            .resizable()
            .scaledToFill()
            .frame(height: 220)
            .frame(maxWidth: .infinity)
            .cornerRadius(12) 
            .clipped()
            .overlay(
                alignment: .bottom
            ) {
                Button(action: {
                    
                }) {
                    Text("Reservar")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(.orange)
                        .clipShape(Capsule())
                }
                .padding(12)
            }
            .overlay(
                alignment: .topTrailing
            ){
                Button(action:{}){
                    Text("♡")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.black)
                        .clipShape(Circle())
                }.padding(12)
            }
            .overlay(
                alignment: .topLeading
            ){
                Button(action:{}){
                    Text(" \(domicilio)")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.black)
                        .clipShape(Capsule())
                }.padding(12)
            }
        
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 6) {
                Text(nombre)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                HStack(spacing: 4) {
                    Text(precio)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.primary)
                    Text("al mes")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
            VStack(alignment: .trailing, spacing: 6) {
                if estrellas == "0.0" {
                    Text("★ ---")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.secondary)
                } else {
                    Text("★ \(estrellas)")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.yellow)
                }
                
                Text("\(m2) m²")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 4)
    }
}

#Preview {
    ScrollView {
        VStack(spacing: 24) {
            ApartmentView(
                imagen: "depa1",
                nombre: "Higashi Shinjuku | 1F",
                precio: "$25,000",
                estrellas: "4.7",
                m2: "25.08"
            )
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
    }
}

