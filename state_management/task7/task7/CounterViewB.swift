import SwiftUI

struct CounterViewB: View {
    @Bindable var counter: SharedCounter

    init(counter: SharedCounter) {
        self.counter = counter
    }

    var body: some View {
        VStack(spacing: 12) {
            Text("Counter B: \(counter.value)")
                .font(.title2).bold()
            Button("Increment B") {
                counter.value += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
