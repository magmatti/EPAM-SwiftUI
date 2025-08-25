import Foundation
import SwiftUI

struct ButtonDecor: ViewModifier {
    var isEnabled: Bool
    var font: Font
    var foreground: Color
    var background: Color
    var disabledBackground: Color
    var cornerRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(foreground)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(isEnabled ? background : disabledBackground)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .opacity(isEnabled ? 1 : 0.8)
    }
}

extension View {
    func buttonDecor(
        isEnabled: Bool,
        font: Font = .headline,
        foreground: Color = .white,
        background: Color = .blue,
        disabledBackground: Color = Color.gray.opacity(0.5),
        cornerRadius: CGFloat = 14
    ) -> some View {
        modifier(
            ButtonDecor(
                isEnabled: isEnabled,
                font: font,
                foreground: foreground,
                background: background,
                disabledBackground: disabledBackground,
                cornerRadius: cornerRadius
            )
        )
    }
}
