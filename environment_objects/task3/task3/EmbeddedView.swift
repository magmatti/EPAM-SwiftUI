import SwiftUI

struct EmbeddedView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Hello from SwiftUI")
                .font(.title)
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("SwiftUI Screen")
    }
}
