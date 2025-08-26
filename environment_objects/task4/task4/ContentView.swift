import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Hello, from SwiftUI!")
                .font(.title2).bold()
            UIKitHelloRepresentable()
                .frame(height: 80)
            Text("Mixed UI")
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
