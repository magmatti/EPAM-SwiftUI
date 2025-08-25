import SwiftUI
import Foundation

struct ProfileView: View {
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 24) {
            Text("Profile")
                .font(.title).bold()

            Button("Go to Home") {
                path = NavigationPath()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Profile")
    }
}
