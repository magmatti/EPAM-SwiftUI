import SwiftUI

struct ContentView: View {
    @State private var show = false

    var body: some View {
        VStack(spacing: 16) {
            Toggle("Show Greeting", isOn: $show)
            if show {
                Text("Hello, SwiftUI!")
                    .font(.title2)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
