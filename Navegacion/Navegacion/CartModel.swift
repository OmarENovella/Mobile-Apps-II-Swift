import SwiftUI
import Combine

class CartModel: ObservableObject {
    @Published var items: [CartItem] = []
    let precioBoleto: Double = 80

    var total: Double {
        items.reduce(0) { $0 + Double($1.cantidad) * precioBoleto }
    }

    func agregar(image: ImageResource, title: String) {
        if let index = items.firstIndex(where: { $0.title == title }) {
            items[index].cantidad += 1
        } else {
            items.append(CartItem(image: image, title: title, cantidad: 1))
        }
    }

    func eliminar(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

