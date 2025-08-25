import SwiftUI

struct ContentView: View {
    @State private var isEnabled = true

    var body: some View {
        VStack(spacing: 24) {
            Button("Primary Action") {}
                .buttonDecor(isEnabled: isEnabled, background: .green, disabledBackground: .gray, cornerRadius: 20)
                .disabled(!isEnabled)

            Button("Secondary") {}
                .buttonDecor(isEnabled: isEnabled, background: .blue, disabledBackground: .gray.opacity(0.4), cornerRadius: 30)
                .disabled(!isEnabled)

            Toggle("Enabled", isOn: $isEnabled)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
