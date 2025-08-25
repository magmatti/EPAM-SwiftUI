import SwiftUI

struct IncrementCounterView: View {
    @EnvironmentObject var counter: Counter
    var body: some View {
        Button("+1") { counter.counterValue += 1 }
            .buttonStyle(.borderedProminent)
    }
}
