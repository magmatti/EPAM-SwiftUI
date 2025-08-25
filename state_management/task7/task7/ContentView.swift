import SwiftUI

struct ContentView: View {
    @State private var counter = SharedCounter()

    var body: some View {
        VStack(spacing: 24) {
            CounterViewA(counter: counter)
            Divider()
            CounterViewB(counter: counter)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
