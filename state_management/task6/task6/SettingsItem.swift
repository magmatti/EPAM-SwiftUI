import Foundation

struct SettingsItem: Identifiable {
    let id = UUID()
    var name: String
    var isOn: Bool
}
