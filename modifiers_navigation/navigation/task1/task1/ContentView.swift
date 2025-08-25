import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text("Welcome")
                    .font(.largeTitle).bold()

                NavigationLink {
                    DetailView()
                } label: {
                    Text("Go to Second View")
                        .font(.headline)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
