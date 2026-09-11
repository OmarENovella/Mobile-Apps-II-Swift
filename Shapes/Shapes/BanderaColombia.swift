import SwiftUI

struct BanderaColombia: View {

    let colorAmarillo = Color.yellow
    let colorAzul = Color.blue
    let colorRojo = Color.red

    let anchoBandera: CGFloat = 200
    let altoFranjaGrande: CGFloat = 100
    let altoFranjaChica: CGFloat = 50

    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(colorAmarillo)
                .frame(width: anchoBandera, height: altoFranjaGrande)

            Rectangle()
                .fill(colorAzul)
                .frame(width: anchoBandera, height: altoFranjaChica)

            Rectangle()
                .fill(colorRojo)
                .frame(width: anchoBandera, height: altoFranjaChica)
        }
    }
}

