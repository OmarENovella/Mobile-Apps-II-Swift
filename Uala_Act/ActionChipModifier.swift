import SwiftUI

struct ActionChipModifier: ViewModifier {
    var background: Color = Color.white.opacity(0.2)

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 16)
            .frame(height: 60)
            .background(Color.white)
            .cornerRadius(15)
            .foregroundStyle(.black)
    }
}

