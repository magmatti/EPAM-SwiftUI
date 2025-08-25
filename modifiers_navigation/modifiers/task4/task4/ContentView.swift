import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(.systemBackground).ignoresSafeArea()

            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: -30, y: -30)

            Rectangle()
                .fill(Color.orange)
                .frame(width: 160, height: 80)
                .offset(x: 40, y: 120)
        }
    }
}

#Preview {
    ContentView()
}
