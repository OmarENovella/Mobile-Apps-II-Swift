import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 20, height: 20)
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 20, height: 20)
                        .offset(x: -12)
                }
            }

            Spacer()

            Text("Tarjeta de credito")
                .font(.headline)
                .foregroundStyle(.white)

            HStack {
                Text("...")
                    .foregroundStyle(.white)
                    .font(.headline)
            }
        }
        .padding()
        .frame(width: 320, height: 160, alignment: .leading)
        .background(Color.blue.opacity(0.8))
        .cornerRadius(15)

        HStack {
            Text("Promociones")
                .font(.title3)
                .bold()
            Spacer()
            Image(systemName: "chevron-right")
        }
        .padding(.horizontal)
        .foregroundStyle(.black)

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                VStack(alignment: .leading) {
                    Text("Amazon")
                        .bold()
                        .padding(.bottom, 5)
                    Text("MSI")
                        .font(.caption)
                        .padding(5)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    Text("Hasta 12 NSI")
                        .bold()
                    Text("en tus compras")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding()
                .frame(width: 140, height: 140)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)

                VStack(alignment: .leading) {
                    Text("Despegar")
                        .bold()
                        .padding(.bottom, 5)
                    Text("MSI")
                        .font(.caption)
                        .padding(5)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    Text("Hasta 18 NSI")
                        .bold()
                    Text("en tus viajes")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding()
                .frame(width: 140, height: 140)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)

                VStack(alignment: .leading) {
                    Text("Wallmart")
                        .bold()
                        .padding(.bottom, 5)
                    Text("MSI")
                        .font(.caption)
                        .padding(5)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    Text("Hasta 18 NSI")
                        .bold()
                    Text("en tus compras")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding()
                .frame(width: 140, height: 140)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)
            }
            .padding(.horizontal)
        }

        HStack {
            Text("Movimientos")
                .font(.title3)
                .bold()
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .foregroundStyle(.black)

        VStack(spacing: 15) {
            HStack {
                Image(systemName: "plus")
                    .font(.title3)
                    .padding(10)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))

                VStack(alignment: .leading) {
                    Text("Pago de rendimientos")
                        .bold()
                    Text("Cuenta con rendimientos")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("+$12.50")
                        .bold()
                        .foregroundStyle(.green)
                    Text("28/08")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }

            HStack {
                Image(systemName: "arrow.up.right")
                    .font(.title3)
                    .padding(10)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))

                VStack(alignment: .leading) {
                    Text("RE")
                        .bold()
                    Text("Transferencia enviada")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("+$22.67")
                        .bold()
                        .foregroundStyle(.green)
                    Text("27/08")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }

            HStack {
                Image(systemName: "plus")
                    .font(.title3)
                    .padding(10)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))

                VStack(alignment: .leading) {
                    Text("Reserva a plazo finalizada")
                        .bold()
                    Text("Operacion exitosa")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }

                Spacer()

                VStack(alignment: .trailing) {
                    Text("+$10.17")
                        .bold()
                        .foregroundStyle(.green)
                    Text("27/08")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.05))
        .cornerRadius(15)
        .padding(.horizontal)

        Text("Tu ultima conexion fue el dia 28/08/2026 a las 14:53")
            .font(.caption)
            .foregroundStyle(.gray)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 10)
    }
}

#Preview {
    CardView()
}
