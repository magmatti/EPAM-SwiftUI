import Foundation

struct ListItem: Identifiable {
    let id = UUID()
    var name: String
    var isEnabled: Bool
}
