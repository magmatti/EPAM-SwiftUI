import SwiftUI

struct CounterDisplayView: View {
    @EnvironmentObject var counter: Counter
    var body: some View {
        Text("Count: \(counter.counterValue)")
            .font(.largeTitle).bold()
    }
}
