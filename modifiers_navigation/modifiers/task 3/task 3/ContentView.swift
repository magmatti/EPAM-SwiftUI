import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 24) {
            Text("Item 1").font(.title2)
            Text("Item 2").font(.body)
            Text("Item 3").font(.caption)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

#Preview {
    ContentView()
}
