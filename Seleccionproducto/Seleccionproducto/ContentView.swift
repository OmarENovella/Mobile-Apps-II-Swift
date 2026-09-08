import SwiftUI

struct ContentView: View {
    @State var products: [Product] = [
        Product(productName: "Galaxy Z Flip", productPrice: "30,000", productImage: "galaxyzflip"),
        Product(productName: "iPhone 15", productPrice: "25,000", productImage: "iphone15"),
        Product(productName: "Nokia", productPrice: "15,000", productImage: "nokia")
    ]
    
    @State private var indiceSeleccionado: Int = 0
    
    var body: some View {
        VStack(spacing: 30) {
            
            let productoActual = products[indiceSeleccionado]
            
            ProductView(
                productName: productoActual.productName,
                productPrice: productoActual.productPrice,
                productImage: productoActual.productImage
            )
            
            Divider()
            HStack(spacing: 15) {
                ForEach(0..<products.count, id: \.self) { index in
                    Image(products[index].productImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding(5)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(indiceSeleccionado == index ? Color.blue : Color.clear, lineWidth: 2)
                        )
                        .onTapGesture {
                            indiceSeleccionado = index
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

