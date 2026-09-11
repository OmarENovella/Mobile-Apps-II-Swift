import SwiftUI

struct CuadradoEnCirculo: View {

    let colorFondo = Color.green
    let colorCuadrado = Color.white

    let tamanoCirculo: CGFloat = 150
    let tamanoCuadrado: CGFloat = 50

    var body: some View {
        ZStack {
            Circle()
                .fill(colorFondo)
                .frame(width: tamanoCirculo, height: tamanoCirculo)

            Rectangle()
                .fill(colorCuadrado)
                .frame(width: tamanoCuadrado, height: tamanoCuadrado)
        }
    }
}

struct CuadradoEnCirculo_Previews: PreviewProvider {
    static var previews: some View {
        CuadradoEnCirculo()
    }
}
