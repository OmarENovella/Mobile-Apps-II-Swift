import SwiftUI

struct ProductView: View {
    var productName: String
    var productPrice: String
    var productImage: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                Color(.systemGray6)
                
                Image(productImage)
                    .resizable()
                    .scaledToFit()
                    .padding(15)
            }
            .frame(height: 160)
            .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(productName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                
                Text("$\(productPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 12)
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
        .frame(width: 160)
    }
}

#Preview {
    ZStack {
        Color(.systemGray5).ignoresSafeArea()
        
        ProductView(
            productName: "Galaxy Z Flip",
            productPrice: "22,000",
            productImage: "galaxyzflip"
        )
    }
}

