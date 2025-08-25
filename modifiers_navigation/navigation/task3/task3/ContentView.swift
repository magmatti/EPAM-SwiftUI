import SwiftUI

struct ContentView: View {
    let fruits = ["Apple", "Banana", "Cherry"]

    var body: some View {
        NavigationStack {
            List(fruits, id: \.self) { fruit in
                NavigationLink {
                    FruitDetailView(fruit: fruit)
                } label: {
                    Text(fruit)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
