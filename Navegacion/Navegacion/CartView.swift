import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: CartModel

    var body: some View {
        VStack {
            if cart.items.isEmpty {
                Text("Tu carrito está vacío")
                    .foregroundColor(.gray)
            } else {
                List {
                    ForEach(cart.items) { item in
                        HStack {
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 70)
                            VStack(alignment: .leading) {
                                Text(item.title).bold()
                                Text("\(item.cantidad) boleto(s)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("$\(Double(item.cantidad) * cart.precioBoleto, specifier: "%.2f")")
                        }
                    }
                    .onDelete(perform: cart.eliminar)
                }
                Text("Total: $\(cart.total, specifier: "%.2f")")
                    .font(.title2)
                    .bold()
                    .padding()
            }
        }
        .navigationTitle("Carrito")
    }
}

#Preview {
    NavigationStack {
        CartView()
            .environmentObject(CartModel())
    }
}
