import SwiftUI

struct CirculosConcentricos: View {

    let colorExterno = Color.blue
    let colorMedio = Color.white
    let colorInterno = Color.green
    let colorCentro = Color.red

    let tamanoExterno: CGFloat = 120
    let tamanoMedio: CGFloat = 90
    let tamanoInterno: CGFloat = 60
    let tamanoCentro: CGFloat = 20

    var body: some View {
        ZStack {
            Circle()
                .fill(colorExterno)
                .frame(width: tamanoExterno, height: tamanoExterno)

            Circle()
                .fill(colorMedio)
                .frame(width: tamanoMedio, height: tamanoMedio)

            Circle()
                .fill(colorInterno)
                .frame(width: tamanoInterno, height: tamanoInterno)

            Circle()
                .fill(colorCentro)
                .frame(width: tamanoCentro, height: tamanoCentro)
        }
    }
}

struct CirculosConcentricos_Previews: PreviewProvider {
    static var previews: some View {
        CirculosConcentricos()
    }
}
