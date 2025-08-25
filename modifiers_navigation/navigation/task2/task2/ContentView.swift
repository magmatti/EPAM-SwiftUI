import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            HomeView(path: $path)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .settings:
                        SettingsView(path: $path)
                    case .profile:
                        ProfileView(path: $path)
                    }
                }
                .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
