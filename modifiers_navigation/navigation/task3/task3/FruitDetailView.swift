import SwiftUI

struct FruitDetailView: View {
    let fruit: String
    @State private var showSheet = false

    init(fruit: String) {
        self.fruit = fruit
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Details about \(fruit)")
                .font(.title2)
            Button("More info") {
                showSheet = true
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle(fruit)
        .sheet(isPresented: $showSheet) {
            FruitInfoSheet(fruit: fruit)
        }
    }
}
