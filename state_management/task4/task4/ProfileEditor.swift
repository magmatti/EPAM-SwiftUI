import SwiftUI

struct ProfileEditor: View {
    @Bindable var profile: UserProfile

    init(profile: UserProfile) {
        self.profile = profile
    }

    var body: some View {
        VStack(spacing: 16) {
            TextField("Name", text: $profile.name)
                .textFieldStyle(.roundedBorder)
            TextField("Email", text: $profile.email)
                .textFieldStyle(.roundedBorder)

            Divider()

            Text("Name: \(profile.name)")
            Text("Email: \(profile.email)")
        }
        .padding()
        .navigationTitle("Edit Profile")
    }
}
