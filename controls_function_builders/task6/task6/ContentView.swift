import SwiftUI

struct ContentView: View {
    
    @State private var shoppingItems: [ListItem] = [
        .init(name: "Milk", isEnabled: false),
        .init(name: "Eggs", isEnabled: true),
        .init(name: "Cheese", isEnabled: false),
        .init(name: "Tee", isEnabled: true),
        .init(name: "Coffee", isEnabled: true)
    ]
    
    var body: some View {
        List {
            ForEach($shoppingItems) { $item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Toggle("Item Toggle", isOn: $item.isEnabled)
                        .labelsHidden()
                }
                .padding(.vertical, 6)
            }
        }
        .navigationTitle("Groceries")
    }
}

#Preview {
    ContentView()
}
