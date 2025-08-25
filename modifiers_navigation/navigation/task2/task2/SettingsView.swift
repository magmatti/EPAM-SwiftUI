import SwiftUI

struct SettingsView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 24) {
            Text("Settings")
                .font(.title).bold()

            Button("Go to Profile") {
                path.append(Route.profile)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Settings")
    }
}
