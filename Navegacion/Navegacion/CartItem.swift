import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let image: ImageResource
    let title: String
    var cantidad: Int
}

