import SwiftUI

struct CruzEnCirculo: View {

    let colorBorde = Color.gray
    let colorCruz = Color.red

    let tamanoCirculo: CGFloat = 150
    let anchoCruzAngosto: CGFloat = 30
    let anchoCruzAncho: CGFloat = 90

    var body: some View {
        ZStack {
            Circle()
                .stroke(colorBorde, lineWidth: 1)
                .frame(width: tamanoCirculo, height: tamanoCirculo)

            Rectangle()
                .fill(colorCruz)
                .frame(width: anchoCruzAngosto, height: anchoCruzAncho)

            Rectangle()
                .fill(colorCruz)
                .frame(width: anchoCruzAncho, height: anchoCruzAngosto)
        }
    }
}

struct CruzEnCirculo_Previews: PreviewProvider {
    static var previews: some View {
        CruzEnCirculo()
    }
}
