import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Settings")
                .font(.title2).bold()
            Text("Navigation bar is hidden")
        }
        .padding()
        .toolbar(.hidden, for: .navigationBar)
    }
}
