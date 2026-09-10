import SwiftUI

struct Money: View {
    @State private var dinero: String = "30,012.50"
    @State private var ocultarSaldo: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Saldo disponible")
                    .foregroundStyle(.white.opacity(0.8))

                HStack {
                    Text(ocultarSaldo ? "......" : "$\(dinero)")
                        .font(.largeTitle)
                        .bold()

                    Button(action: {
                        ocultarSaldo.toggle()
                    }) {
                        Image(systemName: ocultarSaldo ? "eye.slash" : "eye")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                }
                .foregroundStyle(.white)
            }

            HStack {
                Text("15%")
                    .font(.caption)
                    .bold()
                    .padding(6)
                    .background(Color.green.opacity(0.3))
                    .cornerRadius(10)

                Text("Tu dinero está creciendo")

                Image(systemName: "chevron.right")
                    .font(.caption)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.blue.opacity(0.4))
            .clipShape(Capsule())
            .foregroundStyle(.white)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "plus")
                            .font(.title)
                            .modifier(IconCircleModifier())
                        Text("Depositar")
                    }

                    VStack {
                        Image(systemName: "arrow.right")
                            .font(.title)
                            .modifier(IconCircleModifier())
                        Text("Transferir")
                    }

                    VStack {
                        Image(systemName: "arrow.up.right")
                            .font(.title)
                            .modifier(IconCircleModifier())
                        Text("Retirar")
                    }

                    VStack {
                        Image(systemName: "building.columns")
                            .font(.title)
                            .modifier(IconCircleModifier())
                        Text("Tu CLABE")
                    }
                }
                .font(.caption)
                .foregroundStyle(.white)
                .padding(.horizontal)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    HStack(spacing: 10) {
                        Image(systemName: "calendar.badge.clock")
                            .font(.title2)
                        Text("Acciones")
                            .font(.caption)
                            .bold()
                    }
                    .modifier(ActionChipModifier())

                    HStack(spacing: 10) {
                        Image(systemName: "calendar.badge.clock")
                            .font(.title2)
                        Text("Reserva a plazo")
                            .font(.caption)
                            .bold()
                    }
                    .modifier(ActionChipModifier())

                    HStack(spacing: 10) {
                        Image(systemName: "doc.text")
                            .font(.title2)
                        Text("Pagar mi servicio")
                            .font(.caption)
                            .bold()
                    }
                    .modifier(ActionChipModifier())

                    HStack(spacing: 10) {
                        Image(systemName: "iphone")
                            .font(.title2)
                        Text("Recargar TAG y celular")
                            .font(.caption)
                            .bold()
                    }
                    .modifier(ActionChipModifier())
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    Money()
}
