import SwiftUI

struct RootView: View {
    var body: some View {
        VStack(spacing: 24) {
            CounterDisplayView()
            HStack(spacing: 16) {
                DecrementCounterView()
                IncrementCounterView()
            }
        }
        .padding()
    }
}
