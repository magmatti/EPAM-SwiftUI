import SwiftUI

struct FruitInfoSheet: View {
    let fruit: String
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 16) {
            Text("More about \(fruit)")
                .font(.title3).bold()
            Text("\(fruit) is tasty and nutritious.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}
