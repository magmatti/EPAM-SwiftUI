import SwiftUI

struct ContentView: View {
    @State private var settings: [SettingsItem] = [
        .init(name: "Notifications", isOn: true),
        .init(name: "Location Services", isOn: false),
        .init(name: "Use Cellular Data", isOn: true),
        .init(name: "Auto Updates", isOn: false),
        .init(name: "Dark Mode", isOn: true)
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach($settings) { $item in
                    Toggle(item.name, isOn: $item.isOn)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
