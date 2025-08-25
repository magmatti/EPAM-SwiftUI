import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("SwiftUI Layout Modifiers")
                .padding(16)
                .background(
                    RoundedRectangle(cornerRadius: 10).fill(Color.yellow)
                )
            
            Text("Padding on edges")
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .background(
                    RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.2))
                )

            Text("Top padding")
                .padding(.top, 32)
                .background(
                    RoundedRectangle(cornerRadius: 10).fill(Color.green.opacity(0.25))
                )

            Text("Background before padding")
                .background(Color.orange.opacity(0.25))
                .cornerRadius(8)
                .padding(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.orange.opacity(0.6), lineWidth: 1)
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
