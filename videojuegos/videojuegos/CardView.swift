import SwiftUI
struct CardView: View {
    var image : String
    var name : String
    var console : String
    var price : Float
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .padding(.horizontal)
            VStack(alignment: .leading, spacing: 0 ){
                Text(name)
                    .foregroundColor(Color.purple)
                    .font(.headline)
                    .padding(.bottom)
                HStack{
                    Text(console)
                        .font(.caption)
                    Spacer()
                    Text("$\(String(format: "%.2f", price)) MXN")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                HStack(){
                    Spacer()
                    Button(action: {
                        print("hola")
                    }, label:{
                        Text("Comprar")
                            .padding(.horizontal)
                            .foregroundColor(Color.white)
                            .background(Color.purple)
                            .cornerRadius(4)
                            .padding(.vertical)
                    })
                }
                .onAppear{
                    print("Mostrando el juego \(name)")
                }
            }
        }
    }
}

