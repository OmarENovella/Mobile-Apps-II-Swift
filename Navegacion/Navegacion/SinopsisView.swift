import SwiftUI

struct SinopsisView: View {
    @EnvironmentObject var cart: CartModel
    @State var image: ImageResource
    @State var title: String
    @State var anho: String
    @State var duracion: String
    @State var genero: String
    @State var showAlert: Bool = false

    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width:  300, height: 400)
            HStack{
                Text("\(anho)")
                Spacer()
                Text("\(duracion) min")
                Spacer()
                Text(genero)
            }
            .padding(60)
            Button(action: {
                cart.agregar(image: image, title: title)
                showAlert = true
            }){
                Text("Comprar Boleto")
            }
            .padding(10)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            NavigationLink(destination: CartView()) {
                Image(systemName: "cart")
            }
        }
        .alert("Boleto agregado al carrito", isPresented: $showAlert) {
            Button("Aceptar", role: .cancel) {}
        }
    }
}

#Preview {
    NavigationStack {
        SinopsisView(
            image: .REY_DE_LAS_BROMAS,
            title: "Avengers: TaqueroDays",
            anho: "2026",
            duracion: "190",
            genero: "Accion"
        )
    }
    .environmentObject(CartModel())
}
