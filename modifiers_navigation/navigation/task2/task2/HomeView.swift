import SwiftUI

struct HomeView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 24) {
            Text("Welcome")
                .font(.largeTitle).bold()

            Button("Go to Settings") {
                path.append(Route.settings)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
