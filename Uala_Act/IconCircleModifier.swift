import SwiftUI

struct IconCircleModifier: ViewModifier {
    var background: Color = Color.white.opacity(0.2)

    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .padding()
            .background(background)
            .clipShape(Circle())
    }
}

