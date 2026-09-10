import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HomeView()
                Money()
                Spacer()
                    .frame(height: 20)

                VStack {
                    CardView()
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .background(Color.white)
                .cornerRadius(20)
            }
        }
        .background(Color.blue)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}

