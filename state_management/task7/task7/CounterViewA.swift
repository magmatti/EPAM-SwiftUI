import SwiftUI

struct CounterViewA: View {
    @Bindable var counter: SharedCounter

    init(counter: SharedCounter) {
        self.counter = counter
    }

    var body: some View {
        VStack(spacing: 12) {
            Text("Counter A: \(counter.value)")
                .font(.title2).bold()
            Button("Increment A") {
                counter.value += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
