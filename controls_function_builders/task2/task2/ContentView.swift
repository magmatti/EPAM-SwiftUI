import SwiftUI

struct ContentView: View {
    
    let names = ["John", "Alice", "Matthew", "Maria", "David"]
    
    var body: some View {
        List(names, id: \.self) { name in
            HStack {
                Text(name)
                Spacer()
                Button("Tap") {
                    print("\(name) tapped")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.vertical, 5)
        }
    }
}

#Preview {
    ContentView()
}
