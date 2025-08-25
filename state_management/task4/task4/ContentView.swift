import SwiftUI

struct ContentView: View {
    @State private var profile = UserProfile()

    var body: some View {
        ProfileEditor(profile: profile)
    }
}
#Preview {
    ContentView()
}
